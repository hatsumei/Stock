package com.stock.repository;

import com.stock.object.Detail;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface DetailRepository extends CrudRepository<Detail,Long> {

    List<Detail> findByNameContaining(String name);
    List<Detail> findByNecessityEquals(boolean necessity);

}
