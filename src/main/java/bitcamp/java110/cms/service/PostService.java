package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.Post;

public interface PostService {
  
    void add (Post post);
    List<Post> list();
    Post get(int no);
    List<Post> findByKeyword(String keyword);
    void delete(int no);
}

