void main() {
  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());
}

// Method: function (class 내부에 있는 함수)
// overide: 부모 클래스의 함수를 자식 클래스에서 재정의

class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(int number) : super(number);

  //  @override 생략해도되지만 되도록 작성 추천
  @override
  int calculate() {
    return super.calculate() * 2;
  }
}
