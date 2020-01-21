package com.example.sweater.controller;

import com.example.sweater.domain.PriceRecord;
import com.example.sweater.domain.PriceRecordFacade;
import com.example.sweater.repos.PriceRecordFacadeRepo;
import com.example.sweater.repos.PriceRecordRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

@Controller
public class ServiceController {
    @Autowired
    private PriceRecordFacadeRepo priceRecordFacadeRepo;

    @GetMapping("/products")
    public String droductsTest(Map<String, Object> model){
        Iterable<PriceRecordFacade> priceRecords = priceRecordFacadeRepo.findAll();
        model.put("priceRecords",priceRecords);
        return "productPage";
    }
    @GetMapping("/products/{producer}")
    public String products(@PathVariable String producer,
                           Map<String, Object> model){
        Iterable<PriceRecordFacade> priceRecordFacades = priceRecordFacadeRepo.findByProducer(producer);
        model.put("priceRecordFacades",priceRecordFacades);
        return "productPage";
    }
}
