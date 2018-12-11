package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.Report;

public interface ReportDao {

  int insert(Report report);
  List<Report> findAll(Map<String, Object> condition);
  Report findOne(Map<String, Object> params);
  int delete(int no);
  void signOut(int mno);
  int getTotalCnt();
  int insertHcont(Report report);
  int updateHcont(Report report);
  
}
