package demo.service.impl;

import java.util.List;
import java.util.UUID;

import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;
import com.jfinal.template.stat.ast.Set;

import demo.service.FileService;

public class FileServiceImpl implements FileService {

	@Override
	public List<Record> check() {
		@SuppressWarnings("unchecked")
		List<Record>record=(List<Record>) Db.find("select * from TEXT_FILE");
		/*for (Record record2 : record) {
			System.out.println(record2);
		}*/
		return record;
	}

	@Override
	public int upload(String name, String postfix) {
		int b=0;
		String uuid=UUID.randomUUID().toString();
		System.out.println(uuid);
		String names=name;
		String post=postfix;
		Record record=new Record();
		record.set("UUID",uuid);
		record.set("FILENAME",names);	
		boolean a=Db.save("TEXT_FILE", "UUID", record);//("TEXT_FILE", "UUID", record)
		if(a){
			 b=1;			
		}
		 return b;
	
	}
	

}
