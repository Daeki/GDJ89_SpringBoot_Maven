package com.winter.app.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserDAO {
	
	public int join(UserVO userVO)throws Exception;
	
	public UserVO detail(UserVO userVO)throws Exception;
	
	public int statusChange(UserVO userVO)throws Exception;

}
