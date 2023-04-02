void main() {
  // 기본 타입
  // num은 int or double type
  String name = 'name';
  bool alive = true;
  int age = 12;
  double money = 69.99;
  num x = 12;
  x = 1.1;

  // list
  var numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
  ];

  numbers.add(8);

  // collection if
  var giveMeFive = true;
  var testNumbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
    // if(giveMeFive){ testNumbers.add(5) }
  ];

  // String interpolation은 text에 변수를 추가하는 방법이다
  var testName = 'lee';
  var testAge = 10;
  var greeting = "hello my name is $testName!, and I'm ${testAge + 2}";
  print(greeting);

  // collection for
  var oldFriends = ['lee', 'kim'];
  var newFriends = [
    'ralph',
    'darren',
    for (var friend in oldFriends) "^^$friend"
  ];
  print(newFriends);

  // Map
  var player = {
    'name': 'lee',
    'xp': 19.99,
    'power': false,
  };

  Map<List<int>, bool> testPlayer = {
    [
      1,
      2,
      3,
      4,
    ]: true,
  };

  // Set
  var setNumbers = {1, 2, 3, 4};
  Set<int> setNumbers2 = {1, 2, 3, 4};
  setNumbers.add(1);
  setNumbers.add(1);
  setNumbers.add(1);
  setNumbers.add(1);
  print(setNumbers);
}
