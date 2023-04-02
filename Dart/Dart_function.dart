void sayHello(String name) {
  print('hello $name');
}

String sayHelloText(String name) {
  return 'hello $name, !!';
}

String fatArrowFunc(String name) => 'hello $name, arrow func';

num plus(num a, num b) => a + b;

// named parameter
String sayHola(String name, int age, String country) {
  return 'hello $name, $age, from $country';
}

String sayHolaNamedFunc(
    {String name = 'lee', int age = 20, String country = 'roma'}) {
  return 'hello $name, $age, from $country';
}

String sayHolaRquiredFunc(
    {required String name, required int age, required String country}) {
  return 'hello $name, $age, from $country';
}

// optional positional parameter
String optionalString(String name, int age, [String? country = 'korea']) =>
    'Hello $name, $age, from $country';

String capitalize(String? name) => name?.toUpperCase() ?? '';

// Typedef

typedef ListOfInts = List<int>;

ListOfInts reverseNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String mapSayHi(UserInfo userInfo) {
  return "hi ${userInfo['name']}!";
}

void main() {
  sayHello('lee');
  print(sayHelloText('kim'));
  print(sayHola('kim', 20, 'korea'));
  print(sayHolaNamedFunc(name: 'kim', age: 20, country: 'korea'));
  print(sayHolaRquiredFunc(name: 'kim', age: 20, country: 'korea'));
  print(optionalString('kim', 30));

  String? name;
  name ??= 'kim';
  name = null;
  name ??= 'testKim';
  print(reverseNumbers([1, 2, 3, 4]));
  print(mapSayHi({'name': 'mapKim'}));
}
