package ysi.spring.dept.dto;



import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString

public class MemberDTO {
	
private String id;
private String name;
private String password;
private String gender;
private int age;
private String birthday;
private String email;
private int num;

}
