package com.winter.app.websocket;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.winter.app.user.UserDAO;
import com.winter.app.user.UserVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ChatService {
	
	@Autowired
	private ChatDAO chatDAO;
	

	
	public List<UserVO> getList()throws Exception{
		List<UserVO> list = chatDAO.getList();
		
		list.forEach(vo ->{
			if(LoginUsers.USERNAMES.contains(vo.getUsername())) {
				vo.setStatus(true);
			}
		});
		
		return chatDAO.getList();
	}
	
	public List<MessageVO> room(MessageVO messageVO)throws Exception{
		List<MessageVO> list = chatDAO.room(messageVO);
		
		
		if(list.size()==0) {
			Calendar calendar = Calendar.getInstance();
			messageVO.setRoomNum(calendar.getTimeInMillis());
			messageVO.setStatus("1");
			chatDAO.addChat(messageVO);
			list = chatDAO.room(messageVO);
		}
		return list; 
	}

}
