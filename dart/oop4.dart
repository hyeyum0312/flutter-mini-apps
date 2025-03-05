void main() {}

class IdolInterface {
  String name;
  IdolInterface(this.name);

  void sayName() {}
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);

  void sayName() {
    print('우리는 $name 입니다.');
  }
}
