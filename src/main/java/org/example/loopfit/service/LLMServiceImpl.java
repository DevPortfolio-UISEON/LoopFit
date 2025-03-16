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
        String prompt = "운동 종목 %s,하루 운동시간 %s,운동 수준 %s, 루틴 기간은 %s,운동 목표는 %s이고,제약사항으로 %s가 있어.해당 사항에 맞는 운동루틴을 추천해줘"
                .formatted(param.subject(),param.time(),param.level(),param.period(),param.purpose(),param.Constraints());
        return new LLMServiceResponse(llmRepository.callModel(param.model(), prompt));
    }
}
