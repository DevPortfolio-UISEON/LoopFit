package org.example.loopfit.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.loopfit.model.constant.LLMmodel;
import org.example.loopfit.model.dto.LLMServiceParam;
import org.example.loopfit.model.dto.LLMServiceResponse;
import org.example.loopfit.service.LLMService;
import org.example.loopfit.service.LLMServiceImpl;

import java.io.IOException;

@WebServlet("/")
public class RoutineFormController extends Controller {
    private LLMService llmService;


    @Override
    public void init() throws ServletException {
        log("TaroFormController Init");
        llmService = LLMServiceImpl.getInstance();
    }
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("LoutineFormController doGet");
        req.setAttribute("pageTitle", "AI workout routine");
        req.setAttribute("ogTitle", "AI workout routine");
        req.setAttribute("ogDescription", "Make your workout routine by AI");
        req.setAttribute("ogPageUrl", req.getContextPath());
        view(req,resp,"index");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        log("LoutineFormController doPost");
        String subject = req.getParameter("subject");
        String time = req.getParameter("time");
        String level = req.getParameter("level");
        String period = req.getParameter("period");
        String purpose = req.getParameter("purpose");
        String constraints = req.getParameter("constraints");

        LLMServiceParam param=new LLMServiceParam(LLMmodel.GEMINI_2_0_FLASH, subject, time, level, period, purpose, constraints);
        LLMServiceResponse response;
        try {
            response = llmService.callModel(param);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
        log(response.data());

        req.setAttribute("data", response);
        view(req,resp,"result");
    }
}