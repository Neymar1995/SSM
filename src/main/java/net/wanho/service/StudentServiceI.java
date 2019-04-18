package net.wanho.service;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;


import java.util.List;

/**
 * Created by Administrator on 2019/4/18.
 */
public interface StudentServiceI {
    //查询所有学生
    PageInfo<Student> getAllStus(Integer pageNum);
    //删除学生
    void delStu(Integer id);
    //新增学生
    void addStu(Student student);
    //根据查询单个
    List<Student> getStuById(Integer id);
    //修改学生
    void updateStu(Student student);
}
