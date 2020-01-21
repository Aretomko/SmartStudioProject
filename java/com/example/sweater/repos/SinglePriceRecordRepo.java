package com.example.sweater.repos;

import com.example.sweater.domain.PriceRecord;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SinglePriceRecordRepo extends JpaRepository<PriceRecord, Long> {
    PriceRecord findById (String  id);

}
