package net.wanho.controller;

import com.github.pagehelper.PageInfo;
import net.wanho.pojo.Student;
import net.wanho.service.StudentServiceI;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2019/4/18.
 */
@Controller
public class StudentController {

    @Resource
    private StudentServiceI studentServiceI;

//    查询所有学生
    @RequestMapping("queryAll")
    public String queryAllstudent(@RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum,Map map){
        PageInfo<Student> pageInfo = studentServiceI.getAllStus(pageNum);
        map.put("pageInfo",pageInfo);
        return "getAllStudent";
    }

    //删除学生
    @RequestMapping("delStu/{id}")
    public String delstudent(@PathVariable("id") Integer id){
        studentServiceI.delStu(id);
        return "redirect:/queryAll";
    }

    //转发到新增页面
    @RequestMapping("toadd")
    public String toadd(){
        return "add";
    }

    //新增学生
    @RequestMapping("addStu")
    public String addStudent(Student stu){
        studentServiceI.addStu(stu);
        return "redirect:/queryAll";

    }

    //查询单个
    @RequestMapping("single/{id}")
    public String findSingle(HttpServletRequest request, @PathVariable("id") Integer id) {

        List<Student> studentList = studentServiceI.getStuById(id);
        request.setAttribute("stu", studentList);
        return "update";
    }

    //修改
    @RequestMapping("updateStu")
    public String updateStudent(Student student){
        studentServiceI.updateStu(student);
        return "redirect:/queryAll";
    }


}
