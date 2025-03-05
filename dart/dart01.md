# Dart

https://day0404.tistory.com/21

Dart는 아래의 내장 타입들을 지원합니다:

- Numbers (`num`, `int`, `double`)
- Strings (`String`)
- Booleans (`bool`)
- Lists (`List`, also known as arrays)
- Sets (`Set`)
- Maps (`Map`)
- Symbols (`Symbol`)
- `null` (`Null`)

var

var는 오른쪽 값으로 타입을 유추한다. (자동으로 유추함, runtime type)

```dart
void main() {
	print('console.log처럼 출력');
	var title = '플러터';
}
```

정수

```dart
void main() {
	int number1 = 10;
}
```

실수

```dart
double number1 = 2.5;
double number2 = 0.5;
```

boolean

```dart
bool isTrue = true;
```

글자 타입

```dart
String name = '플러터'
```

dynamic, 어떤 타입이든 가능 var 타입과 비슷하지만 상수

```dart
dynamic number = 1
```

Null

nullable null이 될 수 있다.

non-nullable - null이 될 수 없다.

null - 아무런 값도 있지 않다.

```dart
void main() {
	Srting name = '플러터';
	print(name); // 플러터

	String? name2 = '다트';
	print(name2); // 다트

	name2 = null
	print(name2); // null

}
```

name2가 절대 null이 아니라는 의미

```dart
void main() {
	Srting name = '플러터';
	print(name); // 플러터

	String? name2 = '다트';
	print(name2); // 다트

	print(name2!); // 현재 이 값은 null이 아니다.
}
```

final

값을 변경할 수 없다.

final을 선언 하면 var는 생략 해도된다.

```dart
final String name = '플러터';
print(name);
name = '다트'

----------
final name = '플러터'
```

const

값을 변경할 수 없다.

```dart
const String name = '플러터';
print(name);
name = '다트'
```

DateTime now

버튼 누르고 코드가 실행이 될 때의 순간의 시간

```dart
DateTime now = DateTime.now();
```

final vs const

```dart
void main() {
	final DateTime now = DateTime.now() // 빌드타임에 값을 알고있지 않아도 된다.
	const DateTime now = DateTime.now() // 빌드타임에 값을 알고있어야함 , 에러남
}
```

++, —는 JS방식과 동일

```dart
void main() {
	double number = 4.0;
	number += 1;
	number *= 1;
	number /= 2;
}
```

true, false등의 결과값처리 JS랑 동일

```dart
void main() {
	int number1 = 1;
	int number2 = 2;

	print(number > number2) // false
	print(number < number2) // true
}
```

type비교

```dart
print(number1 is int);
print(number1 is! int);
print(numbet1 is! string);
```

논리 operator , && / 두개 모두 충족 , 하나라도 충족하지 않으면 false

```dart
bool result = 12 > 10 && 1 > 0;
print(result); // true

bool result2 = 12 > 10 && 0>1;
print(result2) // false
```

&&, || 이런건 다 아는 내용 동일

---

List

```dart
List<String> alphabet = ['A','B','C'];
List<int> numbers = [1,2,3,4,5,6];
```

index

```dart
print(alphabet[0]); // A
print(number[1]); // 2
```

add, remove

```dart
alphabet.remove('B') // ['A','C']
alphabet add('D') // ['A','C','D']
```

Map

addAll, remove

```dart
Map<String,String> dictionary = {
'Harry Potter':'해리포터',
'Ron Weasley' : '론 위즐리',
}

Map<String,String> isHarryPotter = {
'Harry Potter':true,
'Ron Weasley' : true,
'Ironman' : false,
}

isHarryPotter.addAll(
'spiderman' : false
)

isHarryPotter['Ironman'] // value값 확인 가능하다.
print(isHarryPotter['Ironman']); // false

isHarryPotter['Hulk'] = false;
print(isHarryPotter) // 마지막에 hulk추가된 것을 확인할 수 있음

isHarryPotter.remove('Harry Potter') // 삭제하기
```

Set

하나의 값들 저장 , 중복값X

```dart
void main() {

	final Set<String> name = { 'code Factory' , 'Flutter', 'Dart'}

	name.add('App');
	name.remove ('code Factory');
	name.contains('Flutter');

}
```

if문

```dart
void main() {

	int number = 3;

	if (number % 2 == 0) {
		print('나머지가 0 입니다');
	} else if (number % 3) {
		print('나머지가 1 입니다');
	} else {
		print('나머지가 2 입니다');
	}

}
```

switch문

```dart
void main() {

	int number = 3;

	switch(numbet % 3) {
		case 0 :
			print('나머지가 0 입니다');
			break;

		case 1 :
			print('나머지가 1 입니다');
			break;

		case 2 :
			print('나머지가 2 입니다');
			break;
	}

}
```

loop - for, continue

```dart

for(int i = 0; i < 10; i++) {
	if (i == 5) {
		continue; // skip
	}
	print(i)
}

int total = 0
List<int> numbers = [1,2,3,4,5,6];
for(int number in numbers) {
	total += number;
}
```

loop - while, do while

```dart
int total = 0

while(total < 10) {
 total +=1

 if (total == 5) {
	 break
 }
}

do {
	total += 1;
} while (total <10)
```

enum

타입강제

```dart
enum status {
	approved,
	pending,
	rejected
}

void main {

	Status status = Status.pending;

	if (status == Status.approved) {
		print('승인');
	} else if (status == Status.pending) {
		print('대기');
	} else {
		print('거절');
	}
}
```

positional parameter = 순서가 중요한 파라미터

optional parameter = 있어도 되고 없어도 되는 파라미터

```dart
optional parameter

아래와 같이 입력 시 , y와z는 입력을 하지 않아도 함수 실행 가능
addNumber(int x, [int y, int z]) {

}

// int선언은 값을 넣지않아도 null값이 들어감, int에 null을 넣으려면 ?을 넣어야함
// 그러나 +에서 문제가 생길것임
addNumber(int x, [int? y, int? z]) {
	int sum = x + y+ z;
}
```

optional parameter

named parameter - 순서가 중요하지 않은 파라미터

```dart
addNumbers(x:10, y:20, z:30) // 10,20,30
addNumbers(x:10, z:20, y:30) // 10,20,20
addNumbers({
	required int x,
	required int y,
	required int z,
	int z =30
	}) {

	int sum = x+y+z
	print(x)
	print(x)
	print(x)
}
```

void

```dart
addNumbers(x:10, y:20, z:30) // 10,20,30
addNumbers(x:10, z:20, y:30) // 10,20,20

int addNumbers({
	required int x,
	required int y,
	required int z,
	int z =30
	}) {

	int sum = x+y+z
	print(x)
	print(x)
	print(x)

	return sum
}
```

arrow function

```dart
int addNumber(int x, {
	int z = 30,
}) => x+y+z;
```

typedef

이 함수 형태에 해당되는 함수들을 같은 같은 typedef로 선언할 수 있음

```dart
void main() {
	Operation operation add;
	int result = operation(10,20,30);

	operation = subtract;
	int result2 = operation(10,20,30);
	print(result2);

	**int result3 = calculate(30,40,50, add) // 120**
}

typedef Operation = double Function(int x, int y, int z);

int add(int x, int y, int z)
int subtract(int x, int y, int z) => z-y-z
**int calculate(int x, int y, int z, Operation operation) {
	return operation(x,y,z)
}**
```
