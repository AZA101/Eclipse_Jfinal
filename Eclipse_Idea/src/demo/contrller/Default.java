package demo.contrller;

import com.jfinal.core.Controller;

public class Default extends Controller{
    public void check(){
    	render("/default/index.html");
    }
}
