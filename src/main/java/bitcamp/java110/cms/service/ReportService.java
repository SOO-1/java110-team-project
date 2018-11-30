package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Report;

public interface ReportService {
  
    boolean add (Report report);
    List<Report> list(int pageNo, int pageSize);
    void delete(int no);
    boolean checkReported(String target, int mno);
}
