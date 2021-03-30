package org.ict.mapper;


import java.util.List;

import org.ict.domain.ProVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProMapperTest {
	@Autowired
	private ProMapper mapper;
		//@Test
		public void testRegister() {
			// BoardVO를생성하고 service의 register 메서드를 이용
			
			ProVO vo=new ProVO();
			vo.setPcnt(1);
			vo.setPdimg("2222");
			vo.setPimg("11111");
			vo.setPrice(2000);
			vo.setPname("테스트용");
			mapper.insert(vo);
		}
		//@Test
		public void serviceGetList() {
			List<ProVO> boards =mapper.getList();
			boards.forEach(board-> {
				log.info(board);
			});
		}
		@Test
		public void testUpdate() {
			ProVO vo=new ProVO();
			vo.setPno(30);
			vo.setPname("수정되었다!");
			vo.setPimg("resources/img/product/redwood/rw.jpg");
			vo.setPdimg("resources/img/product/redwood/detail.jpg");
			vo.setPrice(45000);
			mapper.update(vo);
		}
		
}
