// 변수 ----------------------------------------------------------------------
// var
// final
// dynamic
// const
// late (변수 값을 나중에 받아올것을 의미)
// null safety

// without null safety
// bool isEmpty(String string) => string.length == 0;
// main() {
//   isEmpty(2);
// }

// with null safety
// main() {
//   String? name = 'jw';
//   name = null;
// }

// 데이터 타입 ---------------------------------------------------------------

// list
// map
// set

// ---------------------------------------------------------------------------

// 함수

// Positional Parameter (순서대로) -------------------------------------------

// String sayHello(String name, int age, String country) {
//   return "hello $name, you are $age, you come from $country";
// }

// Named Parameter (2가지 방법) ----------------------------------------------

// default value
// String sayHello({
//   String name = 'name',
//   int age = 99,
//   String country = 'country',
// }) {
//   return "hello $name, you are $age, you come from $country";
// }

// required modifier
// String sayHello({
//   required String name,
//   required int age,
//   required String country,
// }) {
//   return "hello $name, you are $age, you come from $country";
// }
// void main() {
//   print(sayHello(
//     name: 'JongWan',
//     age: 27,
//     country: "South Korea",
//   ));
// }

// optional Parameter (country 값이 없어도 기본값 출력) ----------------------

// String sayHello(String name, int age, [String? country = 'South Korea']) {
//   return "hello $name, you are $age, you come from $country";
// }

// void main() {
//   print(sayHello('Jong', 27));
// }

// Operator(??) -------------------------------------------------------------

// 기본
// String capitalizeName(String? name) {
//   if (name != null) {
//     return name.toUpperCase();
//   }
//   return 'No Value';
// }

// 변형.1
// String capitalizeName(String? name) =>
//     name != null ? name.toUpperCase() : 'No value';

// 변형.2
// String capitalizeName(String? name) => name?.toUpperCase() ?? 'No value';

// void main() {
//   print(capitalizeName(null));
// }

// ---------------------------------------------------------------------------

// 클래스 (타입을 반드시 명시해줄 것)

// 기본형 --------------------------------------------------------------------

// class Player {
//   String name = 'Jong';
//   // final String name = 'Jong';
//   int xp = 1500;

//   // 변수와 class property의 이름이 겹치면 $this.name으로 사용
//   void sayHello() {
//     print("hi my name is $name");
//   }
// }

// void main() {
//   var player = new Player();
//   print(player.name);
//   player.name = 'lalala';
//   print(player.name);
//   player.sayHello();
// }

// Constructor ---------------------------------------------------------------

// class Player {
//   final String name;
//   int xp;

//   Player(this.name, this.xp);

//   // late final String name;
//   // late int xp;

//   // Player(String name, int xp) {
//   //   this.name = name;
//   //   this.xp = xp;
//   // }

//   void sayHello() {
//     print("Hi my name is $name and xp is $xp");
//   }
// }

// void main() {
//   var player1 = new Player("John", 1200);
//   var player2 = new Player('Smith', 1100);

//   player1.sayHello();
//   player2.sayHello();
// }

// Named Constructor Parameter -----------------------------------------------

// class Player {
//   String name;
//   int xp, age;
//   String team;

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   Player.createRedPlayer({
//     required String name,
//     required int age,
//   })  : this.age = age,
//         this.name = name,
//         this.team = 'red',
//         this.xp = 0;

//   Player.createBluePlayer({
//     required String name,
//     required int age,
//   })  : this.age = age,
//         this.name = name,
//         this.team = 'blue',
//         this.xp = 0;

//   void sayHello() {
//     print("Hi my name is $name and xp is $xp, team is $team, age is $age");
//   }
// }

// void main() {
//   var player1 = new Player(
//     name: 'John',
//     xp: 999,
//     team: 'red',
//     age: 21,
//   );

//   var player2 = new Player(
//     name: 'Smith',
//     xp: 1399,
//     team: 'blue',
//     age: 25,
//   );

//   var redPlayer = new Player.createRedPlayer(
//     name: "Hans",
//     age: 22,
//   );

//   var bluePlayer = new Player.createBluePlayer(
//     name: "Jay",
//     age: 19,
//   );

//   // Cascade operator
//   var newPlayer = Player(name: 'Jong', xp: 1999, team: 'green', age: 26)
//     ..name = 'none'
//     ..xp = 0
//     ..team = 'red';

//   player1.sayHello();
//   player2.sayHello();
//   redPlayer.sayHello();
//   bluePlayer.sayHello();
// }

// 클래스 상속 ---------------------------------------------------------------

// class Human {
//   final String name;
//   Human({required this.name});
//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// enum Team { blue, red }

// class Player extends Human {
//   final Team team;

//   Player({
//     required this.team,
//     required String name,
//   }) : super(name: name);

//   @override
//   void sayHello() {
//     super.sayHello();
//     print('and I play for $team');
//   }
// }

// void main() {
//   var player = new Player(team: Team.red, name: 'John');
// }

// mixin (생성자가 없는 클래스, 재사용 가능) ---------------------------------

// class Strong {
//   final double strengthLevel = 199.99;
// }

// class QuickRunner {
//   void runQuick() {
//     print('ruuuuuun!!');
//   }
// }

// enum Team { blue, red }

// class Player with Strong, QuickRunner {
//   final Team team;
// }
