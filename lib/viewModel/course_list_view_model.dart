import 'package:get/get.dart';
import 'package:naemansan/models/course_overview_model.dart';
import 'package:naemansan/services/course_service.dart';

class CourseListViewModel extends GetxController {
  final RxList<CourseOverview> courses = [
    CourseOverview(
        id: 0,
        isEnrolled: false,
        title: '',
        siGuDong: '',
        distance: '',
        tags: [],
        momentCount: 0,
        likeCount: 0)
  ].obs;

  void loadCourseListData(
      List<int>? tagIds, double? lati, double? longi, int? page, int? size) {
    List<CourseOverview> dummyCourseList = CourseService()
        .getDummyCourseOverviews(tagIds, lati, longi, page, size);
    courses.value = dummyCourseList;
  }
}
