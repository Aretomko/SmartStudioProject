package com.example.sweater.repos;

import com.example.sweater.domain.PriceRecordFacade;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PriceRecordFacadeRepo extends JpaRepository<PriceRecordFacade, Long> {
    List<PriceRecordFacade> findByProducer (String producer);
    PriceRecordFacade findAllById (Long id);
}
