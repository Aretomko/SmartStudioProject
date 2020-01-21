package com.example.sweater.controller;

import com.example.sweater.domain.PriceRecord;
import com.example.sweater.domain.PriceRecordFacade;
import com.example.sweater.repos.PriceRecordFacadeRepo;
import com.example.sweater.repos.PriceRecordRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
class AddController {
    @Autowired
    private PriceRecordRepo priceRecordRepo;
    @Autowired
    private PriceRecordFacadeRepo priceRecordFacadeRepo;

    @GetMapping("/add")
    public String add(){
        return "add";
    }
    @PostMapping("/addServicePriceRecord")
    public String addServicePriceReord(@RequestParam String priceName,
                                       @RequestParam String pricePrice,
                                       @RequestParam String phoneName){
        PriceRecord priceRecord = new PriceRecord(phoneName, pricePrice,priceName);
        priceRecordRepo.save(priceRecord);
        return "add";
    }
    @PostMapping("/addPriceRecordFacade")
    public String addPriceREcordFacade(@RequestParam String phoneName,
                                       @RequestParam String imageLink,
                                       @RequestParam String producer){
        PriceRecordFacade priceRecordFacade = new PriceRecordFacade(phoneName,imageLink, producer);
        priceRecordFacadeRepo.save(priceRecordFacade);
        return "add";
    }
}
