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
  int xp;

  Player4({
    required this.name,
    required this.xp,
    required this.team,
  });

  Player4.createBluePlayer({
    required String name,
  })  : // 초기화시 설정
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player4.createRedPlayer(String name)
      : this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player4.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHi() {
    print('hi $name');
  }
}

class Player5 {
  String name;
  Level xp;
  Team team;

  Player5({
    required this.name,
    required this.xp,
    required this.team,
  });
}

enum Team { red, blue, black }

enum Level { beginner, medium, pro }

abstract class Human {
  void walk();
}

class ExtendPlayer extends Human {
  String name;
  Level xp;
  Team team;

  ExtendPlayer({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print("i\m walking");
  }
}

class Coach extends Human {
  void walk() {
    print('i\'m walking coach');
  }
}

// 상속
class Human1 {
  final String name;
  Human1({required this.name});

  void sayHi() {
    print("hi ${name}");
  }
}

enum TeamInfo { blue, red }

class Player12 extends Human1 {
  final TeamInfo team;

  Player12({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHi() {
    print("hi ${name}");
    super.sayHi();
  }
}

// Mixin 생성자 없는 클래스
class Strong {
  final double stengthLevel = 1500.99;
}

class QuickRunner {
  void codeRun() {
    print('ruuuunnn');
  }
}

class Player13 with Strong, QuickRunner {
  final TeamInfo team;

  Player13({
    required this.team,
  });
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

  var player4 = Player4.createBluePlayer(
    name: 'kime',
  );
  var player5 = Player4.createRedPlayer(
    'kime2',
  );

  var apiData = [
    {
      'name': 'lee',
      'team': 'blue',
      'xp': 0,
    },
    {
      'name': 'lee2',
      'team': 'red',
      'xp': 100,
    },
    {
      'name': 'lee3',
      'team': 'blue',
      'xp': 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player4.fromJson(playerJson);
    player.sayHi();
  });

  var lee = Player5(name: 'lee', xp: Level.beginner, team: Team.black)
    ..name = 'kim'
    ..xp = Level.medium
    ..team = Team.blue;
  // cascade Notaion

  var teamPlayer = Player12(
    team: TeamInfo.blue,
    name: 'lee',
  );
}
