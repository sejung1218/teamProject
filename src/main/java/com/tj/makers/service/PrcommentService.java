package com.tj.makers.service;

import java.util.List;

import com.tj.makers.model.Prcomment;

public interface PrcommentService {
	public int prcTotCnt(int pnum);
	public List<Prcomment> prcPagingList(Prcomment prcomment);
	public int prcWrite(Prcomment prcomment);
	public int prcReply(Prcomment prcomment);
	public int prcDelOrigin(int prcgroup);
	public int prcDelrepl(int prcnum);
}
