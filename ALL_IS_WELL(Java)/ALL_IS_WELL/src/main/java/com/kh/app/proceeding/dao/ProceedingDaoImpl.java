package com.kh.app.proceeding.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.page.vo.PageVo;
import com.kh.app.proceeding.vo.ProceedingVo;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@RequiredArgsConstructor
@Slf4j
public class ProceedingDaoImpl implements ProceedingDao{

	@Override
	public List<ProceedingVo> list(SqlSessionTemplate sst, PageVo pv , Map<String, String> paramMap) {
		RowBounds rb = new RowBounds(pv.getOffset(), pv.getBoardLimit());
		return sst.selectList("proceeding.selectBoardList" , paramMap , rb);
	}

	@Override
	public int write(SqlSessionTemplate sst, ProceedingVo vo) {
		return sst.insert("proceeding.write" , vo);
	}

	@Override
	public ProceedingVo detail(SqlSessionTemplate sst, String no) {
		return sst.selectOne("proceeding.getBoard" , no);
	}

	@Override
	public int edit(SqlSessionTemplate sst, ProceedingVo vo) {
		return sst.update("proceeding.edit" , vo);
	}

	@Override
	public int delete(SqlSessionTemplate sst, ProceedingVo vo) {
		return sst.delete("proceeding.delete" , vo.getNo());
	}

	@Override
	public int increaseHit(SqlSessionTemplate sst, String no) {
		return sst.update("proceeding.increaseHit" , no);
	}

	@Override
	public int getBoardCnt(SqlSessionTemplate sst) {
		return sst.selectOne("proceeding.getBoardCnt");
	}

}
