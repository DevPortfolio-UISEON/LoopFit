package org.example.loopfit.model.dto;

import org.example.loopfit.model.constant.LLMmodel;

public record LLMServiceParam(LLMmodel model, String prompt){}