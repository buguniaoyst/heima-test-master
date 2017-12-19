package com.heima.test.web;

import com.heima.test.domain.ScoreInfo;
import com.heima.test.service.ScoreInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("score")
public class ScoreInfoController {

    @Autowired
    private ScoreInfoService scoreInfoService;


    @RequestMapping(value = "submitScoreInfo",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> submitScore(@RequestParam(value = "scoreInfos") String scoreInfo) {
        Map<String, Object> result = new HashMap<>();
        try {
            scoreInfoService.submitScoreInfos(scoreInfo);
            result.put("result", true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("result", false);
        }
        return result;
    }


}
