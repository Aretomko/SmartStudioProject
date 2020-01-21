package com.example.sweater.repos;

import com.example.sweater.domain.PriceRecord;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PriceRecordRepo extends JpaRepository<PriceRecord, Long> {
    List<PriceRecord> findByName (String name);
    PriceRecord findAllById (Long id);
}
