package com.example.sweater.controller;

import com.example.sweater.domain.PriceRecord;
import com.example.sweater.repos.PriceRecordRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import java.util.Map;

@Controller
public class PriceControler {
    @Autowired
    private PriceRecordRepo priceRecordRepo;
    @GetMapping("/price")
    public String testPrice(Map<String, Object> model){
        Iterable<PriceRecord> priceRecords = priceRecordRepo.findAll();
        model.put("priceRecords", priceRecords);
        return "price";
    }
    @GetMapping("/price/{name}")
    private String price(@PathVariable String name,
                         Map<String, Object> model){
        Iterable<PriceRecord> priceRecords = priceRecordRepo.findByName(name);
        model.put("priceRecords", priceRecords);
        return "price";
    }
}
