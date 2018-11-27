package bitcamp.java110.cms.service;

import java.util.List;
import bitcamp.java110.cms.domain.SceneAlbum;
import bitcamp.java110.cms.web.myFeed.Paging;

public interface SceneAlbumService {
  
    void add (SceneAlbum sceneAlbum);
    List<SceneAlbum> list(int mno);
    List<SceneAlbum> pageList(int mno, Paging paging);
    int getTotalCnt(int mno);
    SceneAlbum get(int no);
    void delete(int no);
    
}

