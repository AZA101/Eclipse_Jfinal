package demo;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Record;

//这是新增的注释
public class Erweima extends Controller {
    public void erWeiMa(){
    	String string="����";
    	String string2="����2";
    	Record record=new Record();
    	record.set("r1", string);
    	record.set("r2", string2);
    }
}
