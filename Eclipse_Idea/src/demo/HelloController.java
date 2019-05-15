package demo;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

import demo.service.impl.FileServiceImpl;
public class HelloController extends Controller {//所有的方法都要继承控制器
public void index() {
//renderText("Hello JFinal World.");//jfinal封装的输出方法
	render("login2.html");//进入到login的表单
}
// 测试远程下载到本地
public void select(){
	//renderText("再试一次");// render执行之后，下面的内容就会显示不出来
  List<Record> list = Db.find("select * from erp_hrinfo FETCH FIRST 50 ROWS ONLY");
 //   List<User_menu_bak>list=User_menu_bak.bao.find("select * from erp_hrinfo FETCH FIRST 50 ROWS ONLY");//model方式映射
//	List<Record> list=new ArrayList<Record>();
//	Record r=new Record();
//	r.set("name", "李");
//	r.set("age", 22);
//	list.add(r);
   String  userid=getPara("userid","");//userid的这两行是我随便写的，测试getPara方法用的
    setAttr("userid",userid);
	setAttr("people","hi");
	setAttr("info",list);
	render("first.html");
}

public void save(){
	String userName=getPara("uu");
	String ps=getPara("pp");
	int age = getParaToInt("ag");//这里用了getParaToInt因此在前台填写的时候就不能什么都不填，否则会报错
	Record r = new Record();
	r.set("uid", userName);
	r.set("mid", ps);
	r.set("level", age);//这里要和数据库的字段名对应起来，即自己设计的变量要插入到数据库的哪个字段里面
    boolean flag=Db.save("USER_MENU_BAK", r);//这是要在数据库中插入数据
   // render("first.html");//在renderJson前面在再写一个render是没问题的
	//下面是之前写的
//	System.out.println(userName+"and"+ps);
//	Record r1=new Record();
//	r1.set("flag", true);
//	r1.set("msg","ok");
	renderJson(r);
}

public void update(){
	String userName=getPara("uu");
	int age=getParaToInt("ag");
	String mid=getPara("pp");//这里的名称是文本的name,这里特别重要
	Record re=new Record();
	re.set("uid",userName);
	re.set("mid", mid);
	re.set("level", age);//这里要和数据库的字段名对应起来
	boolean i=Db.update("USER_MENU_BAK",  "uid", re);
	//render("first.html");
	renderJson(re);
}

public void delete(){
	String userName=getPara("uu");
	//int age=getParaToInt("ag");
	String age=getPara("ag");
	String mid=getPara("pp");
	Record rr=new Record();
	rr.set("uid",userName);
	rr.set("mid",mid );
	rr.set("level",age);
	boolean j=Db.delete("USER_MENU_BAK",  "uid", rr);
	renderJson(j);		
}
public void xianshi(){
	List<Record> list = Db.find("select * from erp_hrinfo FETCH FIRST 50 ROWS ONLY");
	//render("ZJM.html");
	renderJson(list);
}

public void login(){//这是用那个表格来提交

	String uid=getPara("uu");
	String mid=getPara("pp");
	boolean re=false;
	List<Record> list=Db.find("select * from USER_MENU_BAK where uid=? and mid=?", uid,mid);
	
  if(list != null){
	 re=true;
	 renderJson(re);
  }else{
	  renderJson(re);
  }
  //  System.out.println("输出账号:"+name+"输出密码:"+mima);
	System.out.println("输入账号:"+uid+"输入密码:"+mid);
	//System.out.println(list);
}
public void login2(){//用dialog对话框来弄的登录窗口
	String uid=getPara("name");
	String mid=getPara("password");
	boolean re=false;
	List<Record> list=Db.find("select * from USER_MENU_BAK where uid=? and mid=?", uid,mid);	
  if(list != null){
	 re=true;
	 renderJson(re);
  }else{
	 renderJson(re);
  }
}

public void url_qs(){
	String userid=getPara("userid","123");//先设置userID为空
	setAttr("userid",userid);//将userID存入到变量userid中
	render("url_jg.html");//跳转到指定的html页面
}

public void fileupload(){
	//String useid=getPara("userid");
	render("/file/file.html");
}
public void filecheck(){
	//System.out.println("进入到该方法");
	FileServiceImpl fileServiceImpl =new FileServiceImpl();	
	List<Record> records=fileServiceImpl.check();
	//System.out.println(records);
	renderJson(records);
}
public void fileSC(){
	/*String name=getPara("name");
	String type=getPara("type");*/
	String name="新建文本";
	String type=".txt";
	System.out.println("输出类型:"+name+"和"+type);
	System.out.println("进入到具体上传方法");
	FileServiceImpl fileServiceImpl =new FileServiceImpl();	
	//List<Record> records=fileServiceImpl.upload(name,type);
	int a= fileServiceImpl.upload(name,type);
	System.out.println("输出字母a:"+a);
	if(a>0){
		renderJson(new Record().set("ok", true).set("msg", "存储内容成功"));
		return;
	}else if(a<=0){
		renderJson(new Record().set("ok", false).set("msg", "存储内容失败"));
		return;
	}
}


public void kankan(){
	String strDate="2015-08-10";
	String strDate1="2015-08-01";
	String strDate2="2015-12-31";
	SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
	 try {
            Date date=simpleDateFormat.parse(strDate);
            Date date1=simpleDateFormat.parse(strDate1);
            Date date2=simpleDateFormat.parse(strDate2);
            if(date.getTime()>=date1.getTime()&&date.getTime()<=date2.getTime()){
            	System.out.println("该日期在8月1和12月31之间");
            }
            System.out.println(date);
        } catch(Exception  px) {
            px.printStackTrace();
        }	
}

}
