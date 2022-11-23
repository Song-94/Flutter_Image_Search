# image_search

1. image search api by pixabay
- https://pixabay.com/api/docs/#api_search_images
2. JSON to Dart online converter Null Safety
- https://jsontodart.in/
3. Run
- Shift + F10
4. Inherited Widget
- https://lucky516.tistory.com/124
- 라이브러리를 사용하지 않는 코드는 Inherited Widget 사용
- abstract class 로써  어떤 위젯트리에도 원하는 데이터를 줄 수 있는 방법을 제공 함.
- 생성자를 통해 전달하고 싶지 않음.
- const InheritedWidget({ super.key, required super.child });
5. BuildContext, of 함수
- https://lucky516.tistory.com/122?category=1065021
6. state, provider
- https://lucky516.tistory.com/121?category=1065021
7. 객체 래퍼런스 반환 관련
- 캐스케이드 표기법 (Cascade notation) '..'
- https://mebadong.tistory.com/75
8. 스프레드 연산자 '...'
- https://mebadong.tistory.com/75
9. Get/Set
- https://muhly.tistory.com/47
10. extends/implements
- https://theoryof0.tistory.com/117
11. Debug API
- test 폴더안에 이름이 'test' 가 포함된 파일의 main 문을 실행하여 디버깅 
  cmd : flutter test
- Test : https://pub.dev/packages/test
- Mockito : https://pub.dev/packages/mockito
  mock 객체로 만들기 어려운 static http.get() 메서드가 아닌, 
  제공된 client를 사용하여 인터넷으로부터 데이터를 가져오세요
12. Http Fake Data Test
- https://docs.flutter.dev/cookbook/testing/unit/mocking
13. json_serializable & json_annotation
- https://pub.dev/packages/json_serializable
- https://pub.dev/packages/json_annotation
- 만약 코드를 수정한다면 재 빌드를 해줘야 한다 
- flutter pub run build_runner build
14. freezed
- https://pub.dev/packages/freezed
- https://jacobko.info/flutter/flutter-14/
15. test code 실행
- terminal cmd : flutter test
16. factory 변수
- https://eunjin3786.tistory.com/263
- https://mugon-devlog.tistory.com/m/85
17. extends, implements, with
- https://snowdeer.github.io/flutter/2020/06/13/flutter-extends-and-with/
18. provider method (watch, read, select)
- read: 해당 위젯은 상태값을 읽습니다. 하지만 변경을 감시하지 않습니다.
- watch: 해당 위젯이 상태값의 변경을 감시합니다.
- select: 해당 위젯은 상태값의 특정 부분만을 감시합니다.
- 사용처. 
보통 Provider의 값을 변경하기 위한 함수는 read를 통해 접근하며, 
상태값을 사용할 때에는 watch를 사용합니다. 
변경된 상태값을 표시하기 위해 re-build가 발생하는데, 
이 re-build는 많은 비용을 사용합니다. 
따라서, 다음과 같이 select를 통해 특정 값의 변경만을 감시하여 re-build를 최적화 할 수 있습니다.
19. Provider Consumer
- 보통 코드에서 context를 사용하게 되는데 해당 context를 build에서 알아서 찾아가지고 
  다른 메서드에 있어도 context를 끌고 올 수 있다!
- Provider.of(context)의 경우 사용하는 Widget 전체가 rebuild 된다.
  따라서 Widget을 잘게 쪼개서 rebuild하는 코드를 줄이거나
  Consumer를 사용하여 일부분만 rebuild 할 수 있다.
해당 코드에서는 로그인 버튼과 Text부분에 대해서 다른 메서드에 만들었기에 context를 끌고 오지 못했다.
그래서 Consumer를 사용해서 가져와 provider를 사용할 수 있었다!
20. ListView, GridView : What?
- https://programmingnote.tistory.com/31#:~:text=%EB%A6%AC%EC%8A%A4%ED%8A%B8%EB%B7%B0%EC%99%80%20%EA%B7%B8%EB%A6%AC%EB%93%9C%EB%B7%B0%EC%9D%98%20%EB%8B%A4%EB%A5%B8%EC%A0%90%EC%9D%80%20%EB%A6%AC%EC%8A%A4%ED%8A%B8,%ED%95%A0%20%EC%88%98%20%EC%9E%88%EB%8A%94%20%EA%B2%83%EC%9E%85%EB%8B%88%EB%8B%A4.
21. UnmodifiableListView
- .add .clear 등 수정 불가능 하게 만듬.
22. DI (Dependency Injection)
23. kind of Provider
- Proxy, ChangeNotifier, etc.... 
- https://centbin-dev.tistory.com/entry/Flutter-Provider-%ED%8C%A8%ED%84%B4
- https://fenderist.tistory.com/488
# tip
1. const warning 표시는 마지막에 제거한다.
2. covariant = 이름을 바꿔도 된다.
3. MVVM 패턴
- 화면단 : home_screen
- 화면에서의 동작을 하는 비즈니스모델 : home_view_model
- 실제 데이터 조작하는 : PixabayApi
4. MVVM 패턴 
- 사용자의 Action들은 View를 통해 들어오게 됩니다.
- View에 Action이 들어오면, Command 패턴으로 View Model에 Action을 전달합니다.
- View Model은 Model에게 데이터를 요청합니다.
- Model은 View Model에게 요청받은 데이터를 응답합니다.
- View Model은 응답 받은 데이터를 가공하여 저장합니다.
- View는 View Model과 Data Binding하여 화면을 나타냅니다.
5. 상태 관리 라이브러리
- https://velog.io/@kywho0915/flutter%EC%9D%98-%EB%8B%A4%EC%96%91%ED%95%9C-%EC%83%81%ED%83%9C%EA%B4%80%EB%A6%AC-%EB%9D%BC%EC%9D%B4%EB%B8%8C%EB%9F%AC%EB%A6%AC
6. Code Generation
- flutter pub run build_runner build
7. freezed Live Templates
- 설치해서 dataclass 입력 시 freezed 폼 생성
- https://gravel-pike-705.notion.site/Flutter-baa978d5af63491d9fee71a1d331c899
- https://github.com/Tinhorn/freezed_intellij_live_templates
8. gitignore 에 code generation 생성 파일 추가하여 버전 관리
- *.g.dart
- *.mocks.dart
- *.freezed.dart
9. BuildContext 
- context.watch<T>(), which makes the widget listen to changes on T
- context.read<T>(), which returns T without listening to it
- context.select<T, R>(R cb(T value)), which allows a widget to listen to only a small part of T
10. call method
- call method 는 생략이 가능함. 그래서 함수명을 call 로 하면 생략이 가능함.