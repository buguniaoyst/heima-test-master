package com.heima.test.service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.heima.test.domain.ScoreInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;

@Service
@Transactional
public class ScoreInfoService extends  BaseService<ScoreInfo>{

    private ObjectMapper mapper = new ObjectMapper();
    public void submitScoreInfos(String scoreInfo) {
        try {
            List<ScoreInfo> scoreInfoList =  mapper.readValue(scoreInfo, new TypeReference<List<ScoreInfo>>() {});
            if(null != scoreInfoList && scoreInfoList.size()>0){
                for (ScoreInfo scinf : scoreInfoList) {
                   save(scinf);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
