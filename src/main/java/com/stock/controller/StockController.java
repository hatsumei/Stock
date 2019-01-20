package com.stock.controller;


import com.stock.object.Detail;
import com.stock.repository.DetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.print.Book;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
public class StockController {

    private boolean isSearch = false;
    private ArrayList<Detail> searchList;
    private int pageNumber = 1;
    private String searchType;
    private String searchSubstring;

    @Autowired
    private DetailRepository detailCRUD;

    @GetMapping
    public String stock(Map<String,Object> model){
        Iterable<Detail> list;
        if(!isSearch){
            list = detailCRUD.findAll();
        }else{
            if(searchType.equals("search")){
                setSearchType(searchSubstring);
            }
            if(searchType.equals("necessary")){
                setNecessaryType();
            }
            if(searchType.equals("unnecessary")){
                setUnnecessaryType();
            }
            list = searchList;
        }
        ArrayList<Detail> details = (ArrayList) list;
        int pageCount = details.size()/10;
        if(details.size()%10!=0){
            pageCount++;
        }
        if((pageNumber>pageCount)||(pageNumber<1)){
            pageNumber=1;
        }
        ArrayList<Detail> toPaging = new ArrayList<>();
        for(int i = (pageNumber-1)*10;(i<pageNumber*10)&&(i<details.size());i++){
            toPaging.add(details.get(i));
        }

        details = (ArrayList)detailCRUD.findByNecessityEquals(true);
        int min = 0;
        for(int i = 0;i<details.size();i++){
            int c = details.get(0).getCount();
            if(i==0){
                min = c;
            }else {
                if(c<min){
                    min = c;
                }
            }
        }
        model.put("details", toPaging);
        model.put("curpage",pageNumber);
        model.put("pagecount",pageCount);
        model.put("cancreate",min);
        return "stock";
    }

    @PostMapping("add")
    public String addDetail(@RequestParam String text_name, @RequestParam String necessity, @RequestParam int count, Map<String,Object> model){
        boolean ns = false;
        if(necessity.indexOf('+')!=-1){
            ns = true;
        }
        Detail detail = new Detail(text_name,ns,count);
        detailCRUD.save(detail);

        return "redirect:/";
    }
    @GetMapping("/edit")
    public String edit(@RequestParam long getId, Map<String,Object> model){
        Detail detail = detailCRUD.findById(getId).get();
        model.put("detail",detail);
        return "edit";
    }

    @PostMapping("edit")
    public String postEdit(@RequestParam long getId,@RequestParam String text_name,@RequestParam String necessity,@RequestParam int count,Map<String,Object> model){
        boolean ns = false;
        if(necessity.indexOf('+')!=-1){
            ns = true;
        }
        Detail detail = detailCRUD.findById(getId).get();
        detail.setCount(count);
        detail.setName(text_name);
        detail.setNecessity(ns);
        detailCRUD.save(detail);

        return "redirect:/";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam long getId,Map<String,Object> model){
        detailCRUD.deleteById(getId);
        return "redirect:/";
    }

    @PostMapping("search")
    public String search(@RequestParam String substring,Map<String,Object> model){
        if((substring.isEmpty())||(substring == null)){
            isSearch = false;
            return "redirect:/";
        }
        setSearchType(substring);
        return "redirect:/";
    }

    @PostMapping("paging")
    public String paging(@RequestParam int page,Map<String,Object> model){
        pageNumber = page;
        return "redirect:/";
    }

    @PostMapping("sorting")
    public String soring(@RequestParam String option,Map<String,Object> model){
        if(option.equals("Необходимые для собрки детали")){
            setNecessaryType();
        }else{
            if(option.equals("Опциональные детали")){
                setUnnecessaryType();
            }else{
                isSearch = false;
            }
        }
        return "redirect:/";
    }

    private void setSearchType(String substring){
        isSearch = true;
        pageNumber = 1;
        searchList = (ArrayList)detailCRUD.findByNameContaining(substring);
        searchType = "search";
        searchSubstring = substring;
    }
    private void setNecessaryType(){
        isSearch = true;
        searchList = (ArrayList)detailCRUD.findByNecessityEquals(true);
        searchType = "necessary";
    }

    private void setUnnecessaryType(){
        isSearch = true;
        searchList = (ArrayList)detailCRUD.findByNecessityEquals(false);
        searchType = "unnecessary";
    }

}
