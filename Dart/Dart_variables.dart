void main() {
  print("hello world");
  // 세미클론 중요

  // 변수
  var name = 'name';
  name = 'names';
  // or
  String stringValue = 'value';
  // 함수나 메소드 내부에 지역 변수를 선언할 때는 var 사용
  // class 에서 변수 등은 타입으로 선언
  // var or type 변수는 언제든지 재할당이 가능

  // dynamic type
  var anything;
  anything = 'any';
  anything = 12;
  anything = true;
  // any와 같은 타입으로 어느 타입으로든 할당될 수 있는 타입
  // or
  dynamic dynamicValue;
  if (dynamicValue is String) {
    // 타입을 지정해주면, 메서드 사용 가능
  }
  if (dynamicValue is int) {}

  // dart는 null safety
  String? string = 'string';
  string = null;
  // ? 으로 null 허용 가능한 값으로 선언
  if (string != null) {
    string.isNotEmpty;
  }
  // or
  string?.isNotEmpty;

  // 재할당 불가
  final value = '재할당불가';
  value = 'not changed';
  final String value2 = 'string2';

  late final String lateName;
  late String lateName2;
  // do something, api 통신 후 할당
  lateName = 'response';
  // late 값은 할당되기 전에는 접근할 수 없다

  // const compile-time-constant -> final과 비슷
  const constantValue = 'constant';
  // 컴파일 될때 알고 있는 값을 설정
}

/**
 * var
 * type ex) String dynamic
 * dynamic type은 다른 타입의 값으로 할당 가능
 * null safety로 ?.로 접근 가능
 * final 재할당 불가 변수
 * late api에 오는 값 등에 사용 / 할당되기 전에는 접근 불가
 * const 앱 컴파일에 알 수 있는 값으로 설정 -> response 값으로는 할당 불가
 */