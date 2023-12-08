// 파일명: user_service.dart

import 'package:naemansan/models/near_course_model.dart';
import 'package:naemansan/models/user_model.dart';

class UserService {
  // 사용자 더미 데이터를 제공하는 메소드
  User getDummyUser() {
    return User(
      isLoggedIn: false,
      deviceToken: 'dummyDeviceToken123',
      nickname: '서찬',
      bio: '킹갓산책러버',
      keywords: Keyword(id: 1, keyword: '#산책'),
      profileImageUrl:
          'https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg',
      following: ['user2', 'user3'],
      followers: ['user4', 'user5', 'user6'],
    );
  }
}