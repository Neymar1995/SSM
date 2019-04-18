package net.wanho.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.mapper.StudentMapper;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2019/4/18.
 */
@Service
public class StudentServiceImpl implements StudentServiceI{

    @Autowired
    private StudentMapper studentMapper;


    //查询所有学生
    @Override
    public PageInfo<Student> getAllStus(Integer pageNum) {

        PageHelper.startPage(pageNum,4);
        List<Student> stus = studentMapper.getAllStus();
        PageInfo<Student> PageInfo = new PageInfo<Student>(stus);

        return PageInfo;
    }

    @Override
    public void delStu(Integer id) {
        studentMapper.delStu(id);
    }

    @Override
    public void addStu(Student student) {
        studentMapper.addStu(student);
    }

    @Override
    public List<Student> getStuById(Integer id) {
        return studentMapper.getStuById(id);
    }

    @Override
    public void updateStu(Student student) {
        studentMapper.updateStu(student);
    }


}
