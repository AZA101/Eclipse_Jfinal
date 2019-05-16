package demo;

import com.jfinal.core.Controller;

import model.Blog;
//定义一个类去继承，测试上传
public class BlogController extends Controller {
	  public void save() {
		  Blog blog=getModel(Blog.class);
		  blog=getModel(Blog.class,"otherName");
	  }
	  
}
