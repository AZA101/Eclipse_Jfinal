package demo;

import com.jfinal.core.Controller;

import model.Blog;

public class BlogController extends Controller {
	  public void save() {
		  Blog blog=getModel(Blog.class);
		  blog=getModel(Blog.class,"otherName");
	  }
}
