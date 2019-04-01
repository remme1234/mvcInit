package egovframework.example.hanq.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper
public interface HanqMapper {

	List<EgovMap> selectHanqPieList()throws Exception;

	List<EgovMap> selectHanqTableList()throws Exception;

}
