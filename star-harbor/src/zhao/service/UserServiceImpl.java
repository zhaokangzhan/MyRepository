package zhao.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhao.mapper.UserMapper;
import zhao.pojo.User;
import zhao.pojo.UserExample;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> selectByExample(UserExample example) {
		// TODO Auto-generated method stub
		return userMapper.selectByExample(example);
	}

	@Override
	public User logincheck(User user) {
		User u = userMapper.logincheck(user);
		return u;
	}

}
