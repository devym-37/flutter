class Player {
  // 클래스에서는 타입 선언 필수
  late final String name;
  late int xp;

  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHi() {
    print('hi $name'); // name = this.name
    /**
     * this.name을 쓸순 있지만, 변수명이 같지 않은 이상 this를 사용하지 않는다
     */
  }
}

// late 삭제
class Player2 {
  final String name;
  int xp;
  String team;
  int age;

  Player2(this.name, this.xp, this.team, this.age);

  void sayHi() {
    print('hi $name');
  }
}

// named Parameters
class Player3 {
  final String name;
  int xp;
  String team;
  int age;

  Player3({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHi() {
    print('hi $name');
  }
}

class Player4 {
  final String name, team;
  int xp, age;

  Player4({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player4.createBluePlayer({
    required String name,
    required int age,
  })  : // 초기화시 설정
        this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player4.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  void sayHi() {
    print('hi $name');
  }
}

void main() {
  var player = Player('lee', 1500); // new는 필수가 아니다
  player.sayHi();
  var player2 = Player2('kim', 2500, 'blue', 12);
  var player3 = Player3(
    name: 'park',
    xp: 2000,
    team: 'red',
    age: 21,
  );

  var player4 = Player4.createBluePlayer(name: 'kime', age: 20);
  var player5 = Player4.createRedPlayer('kime2', 21);
}
