package org.example.loopfit.service;

import io.github.cdimascio.dotenv.Dotenv;
import org.example.loopfit.model.dto.LLMServiceParam;
import org.example.loopfit.model.dto.LLMServiceResponse;

import java.io.IOException;

public interface LLMService {
    LLMServiceResponse callModel(LLMServiceParam param) throws IOException, InterruptedException;

    Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
}
