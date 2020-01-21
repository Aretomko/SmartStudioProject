package com.example.sweater.controller;

import com.example.sweater.domain.PriceRecord;
import com.example.sweater.domain.PriceRecordFacade;
import com.example.sweater.repos.PriceRecordFacadeRepo;
import com.example.sweater.repos.PriceRecordRepo;
import com.example.sweater.repos.SinglePriceRecordRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

@Controller
public class DeleteController {
    @Autowired
    private SinglePriceRecordRepo singlePriceRecordRepo;
    @Autowired
    private PriceRecordRepo priceRecordRepo;
    @Autowired
    private PriceRecordFacadeRepo priceRecordFacadeRepo;
    @GetMapping("/delete")
    public String delete(Map<String, Object> model){
        Iterable<PriceRecord> priceRecords = priceRecordRepo.findAll();
        Iterable<PriceRecordFacade> priceRecordFacades = priceRecordFacadeRepo.findAll();
        model.put("priceRecordFacades", priceRecordFacades);
        model.put("priceRecords", priceRecords);
        return "delete";
    }
    @GetMapping("/deletePriceRecord/{id}")
    public String deletePriceRecord(@PathVariable Long id,
                                    Map<String, Object> model){
        priceRecordRepo.delete(priceRecordRepo.findAllById(Long.valueOf(id)));
        Iterable<PriceRecord> priceRecords = priceRecordRepo.findAll();
        Iterable<PriceRecordFacade> priceRecordFacades = priceRecordFacadeRepo.findAll();
        model.put("priceRecordFacades", priceRecordFacades);
        model.put("priceRecords", priceRecords);
        return "delete";
    }
    @GetMapping("/deletePriceRecordFacade/{id}")
    public String deletePriceRecordFacade(@PathVariable String id,
                                          Model model){
        priceRecordFacadeRepo.delete(priceRecordFacadeRepo.findAllById(Long.valueOf(id)));
        Iterable<PriceRecordFacade> priceRecordFacades = priceRecordFacadeRepo.findAll();
        Iterable<PriceRecord> priceRecords = priceRecordRepo.findAll();
        model.addAttribute("priceRecordFacades", priceRecordFacades);
        model.addAttribute("priceRecords", priceRecords);
        return "delete";
    }
}
