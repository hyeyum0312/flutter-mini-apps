# flutter-mini-apps

Flutter가 설치되어 있는지 확인
flutter doctor
에뮬레이터가 실행 중인지 확인
flutter devices
연결된 장치가 표시되는지 확인
flutter pub get

brew install openjdk@11
echo 'export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
java -version

flutter clean
flutter pub get
flutter run

### flutter_riverpod 패키지 설치

flutter pub add flutter_riverpod
flutter run

### StatelessWidget을 extends하는 이유

Flutter에서 UI를 만들 때, 화면을 구성하는 기본 단위는 **위젯(Widget)**이다.
👉 Flutter에서는 모든 UI 요소(버튼, 텍스트, 이미지 등)가 "위젯"으로 구성되므로 화면을 만들 때 StatelessWidget(변하지 않는 UI) 또는 StatefulWidget(변하는 UI) 중 하나를 **상속(extends)**해야한다.

```
class CreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppLayout(child: Center(child: Text("게시글 작성 화면 (추후 구현)")));
  }
}
```

✅ StatelessWidget을 상속하는 이유

CreateScreen은 사용자가 입력하는 값이 없고, 단순한 텍스트만 보여주는 정적인 화면
상태(state)가 필요 없으므로 StatelessWidget을 사용한다.
build() 함수는 한 번 실행되면 UI가 고정됨 (다시 그릴 필요 없음)
📌 즉, 화면에 변할 데이터가 없을 때는 StatelessWidget을 사용하면 된다.

### StatelessWidget <-> StatefulWidget

"이 화면이 상태(State) 없이 정적인 화면인가?"
✅ Yes → StatelessWidget을 extends
✅ No → StatefulWidget을 extends

### 🎯 StateNotifier와 ConsumerWidget

👉 Flutter에서 상태(State)를 효율적으로 관리하기 위해 사용하는 개념
👉 StateNotifier는 데이터(상태)를 관리하는 클래스,
👉 ConsumerWidget은 UI에서 상태 변화를 감지하고 UI를 업데이트하는 위젯

### StateNotifier(Riverpod)와 ChangeNotifier(Provider)

ViewModel은 보통 StateNotifier(Riverpod) 또는 ChangeNotifier(Provider)를 사용해서 관리함.

- Riverpod(StateNotifier)는 코드가 더 깔끔하고 성능이 좋음
- Flutter 공식 문서에서도 ChangeNotifier보다 StateNotifier를 추천하는 추세
  📌 하지만, 같은 프로젝트에서 **간단한 UI 상태는 ChangeNotifier(Provider), 복잡한 상태 관리는 StateNotifier(Riverpod)**를 같이 쓸 수도 있다.
  📌 즉, 간단한 UI 상태(다크 모드, 네비게이션 상태)는 ChangeNotifier를 쓰고, 복잡한 데이터(CRUD)는 StateNotifier를 사용 가능!

### ✅ @override는 언제 필요한가?

@override는 Dart의 어노테이션(annotation) 중 하나로,
✔ 부모 클래스의 메서드를 재정의할 때
✔ 코드 가독성을 높이고, 실수를 방지하기 위해 사용
📌 build()를 잘못된 이름(bulid())으로 적으면, 컴파일 오류가 발생하지 않고 그대로 실행됨.
📌 그런데 화면이 렌더링되지 않음 → 왜냐하면 StatelessWidget이 build()를 못 찾기 때문!

💡 그런데 @override를 붙이면?
✅ 컴파일러가 오류를 감지하고 "부모 클래스에 해당 메서드가 없다"고 알려줌
✅ 즉, @override를 사용하면 실수를 빨리 잡을 수 있음!

### Flutter에서 기본적인 UI를 만들 때 항상 사용하는 패턴

👉 기본 틀을 기억해두고, 필요할 때 위젯을 추가해봐야겠다.

```
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  }
}
```
