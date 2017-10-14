package com.test.shiro.controller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.activiti.bpmn.converter.BpmnXMLConverter;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.constants.ModelDataJsonConstants;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.Model;
import org.activiti.engine.repository.ProcessDefinition;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

@Controller
@RequestMapping("/model")
public class ModuleController {
	@Resource(name = "repositoryService")
	private RepositoryService repositoryService;

	@RequestMapping("/addmsg")
	public String addMsg() {
		return "oa/addmsg";
	}

	@SuppressWarnings("deprecation")
	@RequestMapping("/create")
	@ResponseBody
	public String create(@RequestParam("name") String name,
			@RequestParam("key") String key,
			@RequestParam("description") String description) {

		try {
			ObjectMapper objectMapper = new ObjectMapper();
			ObjectNode editorNode = objectMapper.createObjectNode();
			editorNode.put("id", "canvas");
			editorNode.put("resourceId", "canvas");
			ObjectNode stencilSetNode = objectMapper.createObjectNode();
			stencilSetNode.put("namespace",
					"http://b3mn.org/stencilset/bpmn2.0#");
			editorNode.set("stencilset", stencilSetNode);
			Model modelData = repositoryService.newModel();
			ObjectNode modelObjectNode = objectMapper.createObjectNode();
			modelObjectNode.put(ModelDataJsonConstants.MODEL_NAME, name);
			description = StringUtils.defaultString(description);
			modelObjectNode.put(ModelDataJsonConstants.MODEL_DESCRIPTION,
					description);
			modelData.setMetaInfo(modelObjectNode.toString());
			modelData.setName(name);		
			modelData.setKey(StringUtils.defaultString(key));
			repositoryService.saveModel(modelData);
			repositoryService.addModelEditorSource(modelData.getId(),
					editorNode.toString().getBytes("utf-8"));			

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";

	}

	@RequestMapping(value = "modelList", method = RequestMethod.GET)
	public String goList() {
		return "model/list";
	}

	@RequestMapping(value = "modelList", method = RequestMethod.POST)
	@ResponseBody
	public String modelList() {
		List<Model> modelList = repositoryService.createModelQuery().list();
		System.out
				.println(JSONArray.toJSONStringWithDateFormat(modelList,
						"yyyy-MM-dd",
						SerializerFeature.DisableCircularReferenceDetect));
		return JSONArray.toJSONStringWithDateFormat(modelList, "yyyy-MM-dd",
				SerializerFeature.DisableCircularReferenceDetect);
	}

	@RequestMapping(value="deploy/{id}",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String deploy(@PathVariable("id") String id) {
		String message = "";

		try {
			Model model = repositoryService.getModel(id);
			BpmnJsonConverter jsonConverter = new BpmnJsonConverter();
			JsonNode editorNode = new ObjectMapper().readTree(repositoryService
					.getModelEditorSource(model.getId()));
			BpmnModel bpmnModel = jsonConverter.convertToBpmnModel(editorNode);
			BpmnXMLConverter xmlConverter = new BpmnXMLConverter();
			byte[] bpmnBytes = xmlConverter.convertToXML(bpmnModel,
					"utf-8");

			String processName = model.getName();
			if (!StringUtils.endsWith(processName, ".bpmn20.xml")) {
				processName += ".bpmn20.xml";
			}
			// System.out.println("========="+processName+"============"+modelData.getName());
			ByteArrayInputStream in = new ByteArrayInputStream(bpmnBytes);
			ByteArrayOutputStream out = new ByteArrayOutputStream();			
			Deployment deployment = repositoryService.createDeployment()
					.name(model.getName()).addInputStream(processName, in)
					.deploy();
			// .addString(processName, new String(bpmnBytes)).deploy();
//			File bpmn = new File("F://" + processName);
//			FileUtils.copyInputStreamToFile(
//							repositoryService.getResourceAsStream(
//									deployment.getId(), processName), bpmn);
//			bpmn.createNewFile();
			// 设置流程分类
			List<ProcessDefinition> list = repositoryService
					.createProcessDefinitionQuery()
					.deploymentId(deployment.getId()).list();
			for (ProcessDefinition processDefinition : list) {
				repositoryService.setProcessDefinitionCategory(
						processDefinition.getId(), model.getCategory());
				message = "部署成功";
			}
			if (list.size() == 0) {
				message = "部署失败，没有流程。";
			}
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return message;
	}
	
	@RequestMapping(value="delmodel/{id}",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String delmodel(@PathVariable("id") String id){
		repositoryService.deleteModel(id);
		return "操作成功!";
	}
}
