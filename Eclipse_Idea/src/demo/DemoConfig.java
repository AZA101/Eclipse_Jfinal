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
		   me.setDevMode(true);//打开开发模式 
		   me.setViewType(ViewType.FREE_MARKER);//基于模板和要改变的数据，并用来生成输出文本(html网页，电子邮箱，配置文件)   
	   }
	   public void configRoute(Routes me){
	       me.add("/hello",HelloController.class);//把访问地址映射到java的class文件中去	  
	       me.add("/quan",HelloController.class);
	       me.add("/easyuiseach",HelloController.class);
	       me.add("/file",HelloController.class);
	       me.add("/default",demo.contrller.Default.class); //创建一个类似摄影的网站
	       //me.add("/",Indexcontroller.class);
	   }
	    public void configEngine(Engine me) { 
	    	/**
	    	 * 此方法用来配置Template Engine
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
	        C3p0Plugin cp = new C3p0Plugin( //以后最好不要用C3p0这个，会导致连接泄露
	        		PropKit.get("jdbcURL"),
	        		PropKit.get("user"),
	        		PropKit.get("password")	        		
	                );
	        cp.setDriverClass("com.ibm.db2.jcc.DB2Driver");
			cp.setInitialPoolSize(5);//设置可用连接数为5
			cp.setMaxPoolSize(10);
			cp.setMinPoolSize(10);
			cp.setMaxIdleTime(600);//连接等待时间为600ms
			me.add(cp);
			ActiveRecordPlugin arp = new ActiveRecordPlugin(cp);
		    arp.addMapping("User_menu_bak", User_menu_bak.class);//把表映射到java的class文件中去
		   
			me.add(arp);
			arp.setDialect(new AnsiSqlDialect());//设置数据库方言
			arp.setContainerFactory(new CaseInsensitiveContainerFactory(true));// 设置sql语句大小写不铭感
	    	
	    /*	PropKit.use("config.txt");
			 DruidPlugin druid=new DruidPlugin(PropKit.get("jdbcURL"),
					 PropKit.get("user"),
					 PropKit.get("password").trim());
			 druid.setDriverClass("com.ibm.db2.jcc.DB2Driver");//加载驱动	 
			 druid.addFilter(new StatFilter());//监控  /druid/index.html
			 WallFilter wall = new WallFilter();//防sql注入 
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
		   //这里可以配置自己的拦截处理器类  设置自己的拦截规则
	   }
//	   //启动配置也可以使用一个任意的 main 方法代替，这是一种简便的启动方式， 这种方式属于jetty集成方式启动
	  /* public static void main(String[] args) {
		JFinal.start("WebRoot",80,"/",5);
	}*/
	   //用main方式启动直接debug Rs——java application  
}