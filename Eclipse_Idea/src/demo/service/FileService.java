package demo.service;

import java.util.List;

import com.jfinal.plugin.activerecord.Record;

public interface FileService {
    public List<Record> check();
    public int upload(String name,String postfix);
}
