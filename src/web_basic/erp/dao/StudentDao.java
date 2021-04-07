package web_basic.erp.dao;

import java.util.List;

import web_basic.erp.dto.Student;

public interface StudentDao {
	List<Student> selectStudentByAll();
	Student selectStudentByNo(Student student);
	
	int insertStudent(Student student);
	int updateStudent(Student student);
	int deleteStudent(Student studentNo);
	

}
