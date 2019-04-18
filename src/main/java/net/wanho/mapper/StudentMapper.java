package net.wanho.mapper;

import net.wanho.pojo.Student;


import java.util.List;

/**
 * Created by Administrator on 2019/4/18.
 */

public interface StudentMapper {

    List<Student> getAllStus();
    void delStu(Integer id);
    void addStu(Student student);
    List<Student> getStuById(Integer id);
    void updateStu(Student student);

}
