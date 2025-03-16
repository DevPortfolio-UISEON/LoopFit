package org.example.loopfit.model.constant;

public enum LLMmodel {
    GEMINI_2_0_FLASH("gemini-2.0-flash",LLMPlatform.GEMINI);
    public final String modelname;
    public final LLMPlatform platform;

    LLMmodel(String modelName, LLMPlatform platform) {
        this.modelname = modelName;
        this.platform = platform;
    }
}
