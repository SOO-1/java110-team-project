package bitcamp.java110.cms.dao;

import java.util.List;
import java.util.Map;
import bitcamp.java110.cms.domain.SceneReview;
import bitcamp.java110.cms.domain.SceneReviewCmt;
import bitcamp.java110.cms.domain.SceneReviewMap;

public interface SceneReviewDao {
  
  Integer insert(SceneReview sceneReview);
  Integer insertCmt(SceneReviewCmt sceneReviewCmt);
  Integer insertCmtMap(SceneReviewMap sceneReviewMap);
  Integer findOneSrno(int mvno);
  SceneReview findByNo(int srno);
  List<SceneReview> findAll(int mvno);
  int getTotalCmtCnt(int srno);
  List<SceneReviewCmt> listCmt(Map<String, Object> condition);
  List<SceneReview> listTopSr();
  void signOut(int mno);
}
