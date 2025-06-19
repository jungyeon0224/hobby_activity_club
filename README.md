# Hobby Activity Club 

Flutter로 개발된 **취미 공유 플랫폼 앱**입니다.  
이 앱은 다양한 취미 활동 정보를 제공하고, 참여 신청 및 후기 작성을 통해 사용자들이 직접 소통하고 활동할 수 있도록 도와줍니다.

---

## 🧩 주요 기능

1. **취미 리스트**
   - 등산, 요리, 독서, 그림 그리기 등 4가지 기본 활동 제공
   - 각 항목 클릭 시 상세 정보 페이지로 이동

2. **신청 페이지**
   - 사용자가 이름과 전화번호, 취미 항목을 입력해 신청 가능
   - 신청 완료 시 마이페이지에서 확인 가능

3. **마이페이지**
   - 신청한 활동 리스트 확인
   - 각 활동별 후기 작성 버튼 제공

4. **후기 작성 및 후기 리스트 보기**
   - 사용자는 각 활동에 대해 자유롭게 후기를 남길 수 있음
   - 등록된 후기는 '후기 목록 보기'에서 확인 가능
   - 후기 수정 및 삭제 기능 포함

5. **참여 인원 수 표시**
   - 각 취미 항목별로 현재 신청 인원수를 실시간으로 표시

6. **위치 기반 추천 (구현 예정)**
   - 사용자의 위치를 기반으로 가까운 활동 추천 (기획 포함)

---

## 🛠️ 사용 기술

- **Flutter** (UI 프레임워크)
- **Dart** (프로그래밍 언어)
- **Android Studio** (개발 환경)
- 상태 관리는 간단한 전역 리스트로 관리
  


📸 실행 화면 예시
취미 리스트 화면
![스크린샷 2025-06-19 171731 (2)](https://github.com/user-attachments/assets/c7340544-d1c3-4926-887a-c48866510b5e)


신청 폼 입력 화면
![스크린샷 2025-06-19 171743](https://github.com/user-attachments/assets/c7b513b6-8dc8-427f-acc9-fb539b6f596f)
![스크린샷 2025-06-19 171751](https://github.com/user-attachments/assets/ac9c9ec8-66e9-4a77-a571-9f3cfbf3941b)


마이페이지
![스크린샷 2025-06-19 171759](https://github.com/user-attachments/assets/eb32fc10-6f8a-40e8-83f8-4f33f6cb51cb)


후기 작성 화면
![스크린샷 2025-06-19 171806](https://github.com/user-attachments/assets/ad78e978-471a-45b9-9013-819dd574e0a1)


후기 리스트 화면
![스크린샷 2025-06-19 171824](https://github.com/user-attachments/assets/095f9e8c-a2c3-4d65-9eea-9f2ba80a03dd)



---

## 💡 앱 실행 방법

1. Flutter 환경이 설정된 로컬 디바이스에서 아래 명령어 입력

```bash
flutter pub get
flutter run

---




📂 프로젝트 구조
/lib
  ├── models
  │    ├── application.dart
  │    └── review.dart
  ├── screens
  │    ├── main.dart
  │    ├── join_page.dart
  │    ├── my_page.dart
  │    ├── review_page.dart
  │    ├── review_list_page.dart
  │    └── *_detail_page.dart (취미 상세 페이지들)

📧 제작자 정보
이름: 유정연








