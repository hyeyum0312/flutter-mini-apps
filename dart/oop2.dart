// 상속 - inheritance
// 부모 클래스의 생성자를 호출하려면 super 키워드를 사용한다.
// 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여받는다.
void main() {
  print('-----idol-----');
  Idol apink = Idol(name: 'Apink', membersCount: 5);
  apink.sayName();
  apink.sayMembersCount();

  print('-----BoyGroup-----');
  BoyGroup bts = BoyGroup(name: 'BTS', membersCount: 7);
  bts.sayName();
  bts.sayMembersCount();

  Hyeyeon hyeyeon = Hyeyeon(name: 'Hyeyeon', membersCount: 1);
  hyeyeon.sayName();

  print('-----type comparison-----');
  print(apink is Idol);
  print(apink is BoyGroup);
  print(bts is Idol);
  print(bts is BoyGroup);
  print(hyeyeon is Idol);
  print(hyeyeon is BoyGroup);
}

class Idol {
  // 이름
  String name;
  // 숫자
  int membersCount;

  // 생성자
  Idol({required this.name, required this.membersCount});

  void sayName() {
    print('제 이름은 $name 입니다.');
  }

  void sayMembersCount() {
    print('우리는 $membersCount 명 입니다.');
  }
}

// 만약 여기에 함수를 생성한다면? 정상동작한다.
class BoyGroup extends Idol {
  // 생성자
  BoyGroup({required String name, required int membersCount})
    : super(name: name, membersCount: membersCount);

  void sayMale() {
    print('저는 남자 아이돌 그룹입니다.');
  }
}

class Hyeyeon extends Idol {
  // 생성자
  Hyeyeon({required String name, required int membersCount})
    : super(name: name, membersCount: membersCount);
}
