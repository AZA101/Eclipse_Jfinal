package demo;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

import demo.service.impl.FileServiceImpl;
public class HelloController extends Controller {//���еķ�����Ҫ�̳п�����
public void index() {
//renderText("Hello JFinal World.");//jfinal��װ���������
	render("login2.html");//���뵽login�ı�
}

public void select(){
	//renderText("����һ��");// renderִ��֮����������ݾͻ���ʾ������
  List<Record> list = Db.find("select * from erp_hrinfo FETCH FIRST 50 ROWS ONLY");
 //   List<User_menu_bak>list=User_menu_bak.bao.find("select * from erp_hrinfo FETCH FIRST 50 ROWS ONLY");//model��ʽӳ��
//	List<Record> list=new ArrayList<Record>();
//	Record r=new Record();
//	r.set("name", "��");
//	r.set("age", 22);
//	list.add(r);
   String  userid=getPara("userid","");//userid���������������д�ģ�����getPara�����õ�
    setAttr("userid",userid);
	setAttr("people","hi");
	setAttr("info",list);
	render("first.html");
}

public void save(){
	String userName=getPara("uu");
	String ps=getPara("pp");
	int age = getParaToInt("ag");//��������getParaToInt�����ǰ̨��д��ʱ��Ͳ���ʲô���������ᱨ��
	Record r = new Record();
	r.set("uid", userName);
	r.set("mid", ps);
	r.set("level", age);//����Ҫ�����ݿ���ֶ�����Ӧ���������Լ���Ƶı���Ҫ���뵽���ݿ���ĸ��ֶ�����
    boolean flag=Db.save("USER_MENU_BAK", r);//����Ҫ�����ݿ��в�������
   // render("first.html");//��renderJsonǰ������дһ��render��û�����
	//������֮ǰд��
//	System.out.println(userName+"and"+ps);
//	Record r1=new Record();
//	r1.set("flag", true);
//	r1.set("msg","ok");
	renderJson(r);
}

public void update(){
	String userName=getPara("uu");
	int age=getParaToInt("ag");
	String mid=getPara("pp");//������������ı���name,�����ر���Ҫ
	Record re=new Record();
	re.set("uid",userName);
	re.set("mid", mid);
	re.set("level", age);//����Ҫ�����ݿ���ֶ�����Ӧ����
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

public void login(){//�������Ǹ�������ύ

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
  //  System.out.println("����˺�:"+name+"�������:"+mima);
	System.out.println("�����˺�:"+uid+"��������:"+mid);
	//System.out.println(list);
}
public void login2(){//��dialog�Ի�����Ū�ĵ�¼����
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
	String userid=getPara("userid","123");//������userIDΪ��
	setAttr("userid",userid);//��userID���뵽����userid��
	render("url_jg.html");//��ת��ָ����htmlҳ��
}

public void fileupload(){
	//String useid=getPara("userid");
	render("/file/file.html");
}
public void filecheck(){
	//System.out.println("���뵽�÷���");
	FileServiceImpl fileServiceImpl =new FileServiceImpl();	
	List<Record> records=fileServiceImpl.check();
	//System.out.println(records);
	renderJson(records);
}
public void fileSC(){
	/*String name=getPara("name");
	String type=getPara("type");*/
	String name="�½��ı�";
	String type=".txt";
	System.out.println("�������:"+name+"��"+type);
	System.out.println("���뵽�����ϴ�����");
	FileServiceImpl fileServiceImpl =new FileServiceImpl();	
	//List<Record> records=fileServiceImpl.upload(name,type);
	int a= fileServiceImpl.upload(name,type);
	System.out.println("�����ĸa:"+a);
	if(a>0){
		renderJson(new Record().set("ok", true).set("msg", "�洢���ݳɹ�"));
		return;
	}else if(a<=0){
		renderJson(new Record().set("ok", false).set("msg", "�洢����ʧ��"));
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
            	System.out.println("��������8��1��12��31֮��");
            }
            System.out.println(date);
        } catch(Exception  px) {
            px.printStackTrace();
        }	
}

}
