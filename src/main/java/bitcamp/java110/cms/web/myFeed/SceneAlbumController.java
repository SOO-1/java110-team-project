package bitcamp.java110.cms.web.myFeed;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.java110.cms.domain.SceneAlbum;
import bitcamp.java110.cms.service.SceneAlbumService;

@Controller
@RequestMapping("/sceneAlbum")
public class SceneAlbumController {

  @Autowired SceneAlbumService sceneAlbumService;
  ServletContext sc;

  public SceneAlbumController(SceneAlbumService sceneAlbumService, ServletContext sc) {
    super();
    this.sceneAlbumService = sceneAlbumService;
    this.sc = sc;
  }

  @RequestMapping("/list")
  public String list(
      SceneAlbum sceneAlbum,
      Paging paging,
      Model model) throws Exception {
    
    System.out.println("받은 페이지" + paging.getPageNo());
    //List<SceneAlbum> sceneAlbumList = sceneAlbumService.list();
    List<SceneAlbum> sceneAlbumList = new ArrayList<SceneAlbum>();

    int start = 6*paging.getPageNo()-6;
    int end = start + 6;
    int endPageNo = (int)(sceneAlbumService.list().size()/6) + 1;
    
    System.out.println("start: " + start + "end: " + end +  "endPageNo: " + endPageNo);
    if(end >= sceneAlbumService.list().size()) {
      end = sceneAlbumService.list().size();
    }
    for(int i=start; i<end; i++) {
      sceneAlbumList.add(sceneAlbumService.list().get(i));
    }
    
    // 출력될 앨범 
    System.out.println(sceneAlbumList);
//    try {

      //paging.setPageSize(6);
      paging.setEndPageNo(endPageNo);
      paging.setTotalCount(sceneAlbumService.list().size());

      // 총 게시물 수 
      System.out.println(sceneAlbumService.list().size());

/*  } catch (Exception e) {
      throw e;
  }
 */   
    model.addAttribute("sceneAlbumList", sceneAlbumList);
    model.addAttribute("paging", paging);
    return "sceneAlbum/album";
  }

  /*
  @RequestMapping("/list")
  public String list(
      SceneAlbum sceneAlbum,
      Model model) {
    
    List<SceneAlbum> sceneAlbumList = sceneAlbumService.list();
    
    model.addAttribute("sceneAlbumList", sceneAlbumList);
    return "sceneAlbum/album";
  }*/
  
  @PostMapping("/add")
  public String album(
      SceneAlbum sceneAlbum
      ) {
    
    System.out.println(sceneAlbum);
    sceneAlbumService.add(sceneAlbum);
    return "redirect:list";
  }
  
 
}
