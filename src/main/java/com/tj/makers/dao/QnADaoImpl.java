package com.tj.makers.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tj.makers.model.QnA;
@Repository
public class QnADaoImpl implements QnADao {
	@Autowired
	private SqlSession sessionTemplate;
	//TODO: Select Query
	
	@Override
	public QnA qnaView(int qnum) {
		// TODO ??Έλ³΄κΈ°
		return sessionTemplate.selectOne("qnaView",qnum);
	}

	@Override
	public List<QnA> qnaList(QnA qna) {
		// TODO ? μ²΄λ³΄κΈ?(paging)
		return sessionTemplate.selectList("qnaList", qna);
	}
	@Override
	public int qnaWrite(QnA qna) {
		// TODO κΈ???±
		return sessionTemplate.insert("qnaWrite",qna);
	}

	@Override
	public int qnaReply(QnA qna) {
		// TODO ?΅κΈ???±
		return sessionTemplate.insert("qnaReply",qna);
	}

	@Override
	public int qnaModify(QnA qna) {
		// TODO ?? 
		return sessionTemplate.update("qnaModify",qna);
	}

	@Override
	public int qnaCntUp(int qnum) {
		// TODO μ‘°ν?μ¦κ?
		return sessionTemplate.update("qnaCntUp",qnum);
	}

	@Override
	public int qnaFin(int qnum) {
		// TODO ?΅λ³??λ£μ²λ¦?
		return sessionTemplate.update("qnaFin",qnum);
	}

	@Override
	public int qnaTrans(int qnum) {
		// TODO ?΅λ³? ?? κ²½μ° ?­?  (??κ°λ?κ²?)
		return sessionTemplate.update("qnaTrans",qnum);
	}

	@Override
	public int qnaDelete(int qnum) {
		// TODO ?­? 
		return sessionTemplate.delete("qnaDelete",qnum);
	}

	@Override
	public int qnaCnt() {
		return sessionTemplate.selectOne("qnaCnt");
		
	}

	@Override
	public int qnaChkReply(int qgroup) {
		
		return sessionTemplate.selectOne("qnaChkReply",qgroup);
	}

	@Override
	public int qnaSearchCnt(QnA qna) {
		// TODO Auto-generated method stub
		return sessionTemplate.selectOne("qnaSearchCnt", qna);
	}


}
