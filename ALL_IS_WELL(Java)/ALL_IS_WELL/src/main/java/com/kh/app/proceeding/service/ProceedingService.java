package com.kh.app.proceeding.service;

import java.util.List;
import java.util.Map;

import com.kh.app.approval.vo.ApprovalVo;
import com.kh.app.member.vo.MemberVo;
import com.kh.app.page.vo.PageVo;
import com.kh.app.proceeding.vo.ProceedingVo;

public interface ProceedingService {

	//�Խñ� ���				//board/list
	List<ProceedingVo> list(PageVo pv, Map<String, String> paramMap);
	
	//�Խñ� �ۼ�				//board/write
	int write(ProceedingVo vo);
	
	//�Խñ� ����ȸ			//board/detail
	ProceedingVo detail(String no);
	
	//�Խñ� ����				//board/edit
	int edit(ProceedingVo vo);
	
	//�Խñ� ����				//board/delete
	int delete(ProceedingVo vo);
	
	//�Խñ� ��ü ���� ��ȸ
	int getBoardCnt();
	
}
