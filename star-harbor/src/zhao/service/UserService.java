package zhao.service;

import java.util.List;

import zhao.pojo.User;
import zhao.pojo.UserExample;

public interface UserService {

	List<User> selectByExample(UserExample example);

	User logincheck(User user);

}
