package demo;
import com.alibaba.druid.filter.stat.StatFilter;
import com.alibaba.druid.wall.WallFilter;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.activerecord.dialect.AnsiSqlDialect;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.plugin.druid.DruidPlugin;
import com.jfinal.render.ViewType;
import com.jfinal.template.Engine;

import model.User_menu_bak;

public class DemoConfig extends JFinalConfig{
	   public void configConstant(Constants me){
		   me.setDevMode(true);//�򿪿���ģʽ 
		   me.setViewType(ViewType.FREE_MARKER);//����ģ���Ҫ�ı�����ݣ���������������ı�(html��ҳ���������䣬�����ļ�)   
	   }
	   public void configRoute(Routes me){
	       me.add("/hello",HelloController.class);//�ѷ��ʵ�ַӳ�䵽java��class�ļ���ȥ	  
	       me.add("/quan",HelloController.class);
	       me.add("/easyuiseach",HelloController.class);
	       me.add("/file",HelloController.class);
	       me.add("/default",demo.contrller.Default.class); //����һ��������Ӱ����վ
	       //me.add("/",Indexcontroller.class);
	   }
	    public void configEngine(Engine me) { 
	    	/**
	    	 * �˷�����������Template Engine
	    	 */
	    	me.addSharedFunction("/view/common/layout.html");
	        me.addSharedFunction("/view/common/paginate.html");
	        me.addSharedFunction("/view/admin/common/layout.html");
	    	
	    }
	    public void configPlugin(Plugins me) {
	    	
		//	C3p0Plugin cp = new C3p0Plugin("jdbc:db2://10.96.66.23:50000/HT313DB","db2inst1","init1234");			
		//("config.txt");
			//loadPropertyFile(PathKit.getRootClassPath()+"/config.txt");
	    	
	    	PropKit.use("resources/config.txt");
	        C3p0Plugin cp = new C3p0Plugin( //�Ժ���ò�Ҫ��C3p0������ᵼ������й¶
	        		PropKit.get("jdbcURL"),
	        		PropKit.get("user"),
	        		PropKit.get("password")	        		
	                );
	        cp.setDriverClass("com.ibm.db2.jcc.DB2Driver");
			cp.setInitialPoolSize(5);//���ÿ���������Ϊ5
			cp.setMaxPoolSize(10);
			cp.setMinPoolSize(10);
			cp.setMaxIdleTime(600);//���ӵȴ�ʱ��Ϊ600ms
			me.add(cp);
			ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		    arp.addMapping("User_menu_bak", User_menu_bak.class);//�ѱ�ӳ�䵽java��class�ļ���ȥ
		   
			me.add(arp);
			arp.setDialect(new AnsiSqlDialect());//�������ݿⷽ��
			arp.setContainerFactory(new CaseInsensitiveContainerFactory(true));// ����sql����Сд������
	    	
	    /*	PropKit.use("config.txt");
			 DruidPlugin druid=new DruidPlugin(PropKit.get("jdbcURL"),
					 PropKit.get("user"),
					 PropKit.get("password").trim());
			 druid.setDriverClass("com.ibm.db2.jcc.DB2Driver");//��������	 
			 druid.addFilter(new StatFilter());//���  /druid/index.html
			 WallFilter wall = new WallFilter();//��sqlע�� 
			 wall.setDbType("db2");
			 druid.addFilter(wall);
			 druid.setTestOnBorrow(true);  
		     druid.setTestOnReturn(true);  
		     me.add(druid);
		        
		     ActiveRecordPlugin arp = new ActiveRecordPlugin(druid);  
		     arp.setShowSql(true);
		     me.add(arp);    */
	    }
	   public void  configInterceptor(Interceptors me){}
	   public void configHandler(Handlers me){
		   //������������Լ������ش�������  �����Լ������ع���
	   }
//	   //��������Ҳ����ʹ��һ������� main �������棬����һ�ּ���������ʽ�� ���ַ�ʽ����jetty���ɷ�ʽ����
	  /* public static void main(String[] args) {
		JFinal.start("WebRoot",80,"/",5);
	}*/
	   //��main��ʽ����ֱ��debug Rs����java application  
}