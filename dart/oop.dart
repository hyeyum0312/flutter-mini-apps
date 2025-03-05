void main() {
  //const는 build타임에 값을 할당하고 변경할 수 없다.
  //final은 런타임에 값을 할당하고 변경할 수 없다.
  //final은 생성자에서 값을 할당할 수 있다.
  //final은 생성자에서 값을 할당할 때 다른 생성자를 사용할 수 있다.
  //final은 생성자에서 값을 할당할 때 다른 생성자를 사용할 때는 this.을 사용한다.
  Idol jennie = Idol('Jennie', ['Solo', 'How You Like', 'Kill This Love']);
  print(jennie.getName);
  jennie.sing();
  jennie.dance();

  Idol bts = Idol.fromList([
    ['RM', 'Jin', 'Suga', 'J-Hope', 'Jimin', 'V', 'Jungkook'],
    'BTS',
  ]);

  print(bts.changeName);
  bts.changeName = 'RM';
  print(bts.changeName);
}

//클래스 변수를 final로 선언하면 값을 변경할 수 없다.
//클래스 변수를 get을 사용하여 읽기 전용으로 만들 수 있다.
//클래스 변수를 생성자에서 초기화할 수 있다.
//클래스 변수를 생성자에서 초기화할 때 다른 생성자를 사용할 수 있다.
//클래스 변수를 생성자에서 초기화할 때 다른 생성자를 사용할 때는 this.을 사용한다.
class Idol {
  final String name; // 바꿀 수 없도록 final로 선언
  List<String> members = ['Solo', 'How You Like', 'Kill This Love'];

  String get getName => name;

  Idol(this.name, this.members);
  Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  void sing() {
    print('Lalisa Manoban');
  }

  void dance() {
    print('Ddu-du Ddu-du');
  }

  void introduce() {
    print('안녕하세요 ${this.members} 입니다.');
  }

  // 함수와 getter는 기능적 차이는 없지만 뉘앙스의 차이가 있다.
  // 데이터를 간단히 가공 할 때 get을 사용한다.
  String get changeName {
    return this.members[0];
  }

  // 로직이 많이 들어갈 때 함수로 만들어서 사용할 수 있다.
  String getChangeName() {
    return this.members[0];
  }

  // setter는 가급적 잘 사용하지는 않지만 알고있어야함
  set changeName(String name) {
    this.members[0] = name;
  }
}


//파일 외부에서 사용할 수 없는 값을 프라이빗 값으로 한다.
// _Idol로 선언 해주면 된다. 
// 같은 파일 내에서만 사용가능하고 외부에서 파일을 Import하더라도 사용불가하다.  