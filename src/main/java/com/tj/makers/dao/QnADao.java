package com.tj.makers.dao;


import java.util.List;

import com.tj.makers.model.QnA;

public interface QnADao {
	public QnA qnaView(int qnum);					// ?��?��보기
	public List<QnA> qnaList(QnA qna);				// ?��체보�?(paging),�??��,?�� �?보기
	public int qnaWrite(QnA qna);					// �??���?
	public int qnaReply(QnA qna);					// ?���??���?
	public int qnaModify(QnA qna);					// ?��?��
	public int qnaCntUp(int qnum);					// 조회?��증�?
	public int qnaFin(int qnum);					// ?���??��료처�?
	public int qnaTrans(int qnum);					// ?���? ?��?�� �? ?��?��(?��?���? �?�?
	public int qnaDelete(int qnum);					// ?��?��
	public int qnaCnt();							//?���? �? 개수
	public int qnaChkReply(int qgroup);				// ?���? ?��?���? ?��?��
	public int qnaSearchCnt(QnA qna);				// �??��?�� �? 개수
}
