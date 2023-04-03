class Player {
  // 클래스에서는 타입 선언 필수
  final String name = 'lee';
  int xp = 1500;

  void sayHi() {
    print('hi $name'); // name = this.name
    /**
     * this.name을 쓸순 있지만, 변수명이 같지 않은 이상 this를 사용하지 않는다
     */
  }
}

void main() {
  var player = Player(); // new는 필수가 아니다
  player.sayHi();
}
