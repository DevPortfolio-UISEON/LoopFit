package org.example.loopfit.service;

import org.example.loopfit.model.dto.LLMServiceParam;
import org.example.loopfit.model.dto.LLMServiceResponse;
import org.example.loopfit.model.repository.LLMRepository;

import java.io.IOException;
import java.util.logging.Logger;

public class LLMServiceImpl implements LLMService {
    private LLMServiceImpl(){}

    public static LLMService instance = new LLMServiceImpl();

    public static LLMService getInstance(){
        return instance;
    }

    private final Logger logger = Logger.getLogger(LLMServiceImpl.class.getName());
    private final LLMRepository llmRepository=LLMRepository.getInstance();

    @Override
    public LLMServiceResponse callModel(LLMServiceParam param) throws IOException, InterruptedException {
        logger.info("callModel");
        String prompt = "%s, 운동루틴을 추천해줘".formatted(param.prompt());
        return new LLMServiceResponse(llmRepository.callModel(param.model(), prompt));
    }
}
