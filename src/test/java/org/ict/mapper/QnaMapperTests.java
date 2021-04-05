package org.ict.mapper;

import java.util.List;

import org.ict.domain.QnaVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class QnaMapperTests {
	
	@Autowired
	private QnaMapper mapper;
	
	@Test
	public void testSeletAll() {
		List<QnaVO> lists = mapper.selectAll();
		
		lists.forEach(list -> {
			log.info(list);
		});//forEach
	}//testGetList
	
//	@Test
	public void testSelect() {
		mapper.select(5);
	}//testSelect
	
//	@Test
	public void testInsert() {
		QnaVO vo = new QnaVO();
		
		vo.setQtitle("테스트 질문입니다.");
		vo.setQcontent("테스트 질문 본문입니다.");
		
		mapper.insert(vo);
	}//testInsert
	
//	@Test
	public void testUpdate() {
		QnaVO vo = new QnaVO();
		
		vo.setQno(4);
		vo.setQtitle("테스트 질문 수정입니다.");
		vo.setQcontent("테스트 질문 수정 본문입니다.");
		
		mapper.update(vo);
	}//testUpdate
	
//	@Test
	public void testDelete() {
		mapper.delete(1);
	}//testDelete
	
}//class
