package com.parasol.core.dao.tender;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.parasol.core.tender.Tender;
import com.parasol.core.tender.TenderQuery;

public interface TenderMapper {
    int countByExample(TenderQuery example);

    int deleteByExample(TenderQuery example);

    int deleteByPrimaryKey(Integer id);

    int insert(Tender record);

    int insertSelective(Tender record);

    List<Tender> selectByExample(TenderQuery example);

    Tender selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Tender record, @Param("example") TenderQuery example);

    int updateByExample(@Param("record") Tender record, @Param("example") TenderQuery example);

    int updateByPrimaryKeySelective(Tender record);

    int updateByPrimaryKey(Tender record);
    
    
    
    List<Tender> selectListUserId(Integer userId);
    
    List<Tender> selectTender();
    
    List<Tender> selectTenderTen();
    
    Tender selectByPrimaryName(String projectName);
    
    List<Tender> selectClassification(Integer classification);
    
    
    List<Tender> selectProject();
    List<Tender> selectPurchase();
    List<Tender> selectDesign();
    List<Tender> selectManage();
    List<Tender> selectConsultation();
}