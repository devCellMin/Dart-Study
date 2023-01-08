// // #4.0 Your First Dart Class
// class Player {
//   final String name = 'minse';
//   int xp = 1500;

//   //void sayHello() => print('Hi my name is $name');
//   void sayHello() {
//     var name = "123";
//     print('Hi my name is ${this.name}');
//   }
// }

// void main() {
//   var player = Player();
//   player.sayHello();
// }

// // #4.1 Constructors
// class Player {
//   late final String name;
//   late int xp;

//   // Constructors
//   Player(this.name, this.xp);

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// void main() {
//   var player1 = new Player('minse', 1500);
//   player1.sayHello();

//   var player2 = new Player('nico', 2500);
//   player2.sayHello();
// }

// // #4.2 Named Constructor Parameters
// class Player {
//   late final String name;
//   late int xp;
//   late String team;
//   late int age;

//   // Constructors
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// void main() {
//   var player1 = Player(
//     name: 'minse',
//     xp: 1500,
//     team: 'red',
//     age: 15,
//   );
//   player1.sayHello();

//   var player2 = Player(
//     name: 'nico',
//     xp: 2500,
//     team: 'blue',
//     age: 12,
//   );
//   player2.sayHello();
// }

// // #4.3 Named Constructors
// class Player {
//   late final String name;
//   int xp, age;
//   String team;

//   // Constructors
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   Player.createBluePlayer({
//     required String name,
//     required int age,
//   })  : this.age = age,
//         this.name = name,
//         this.team = 'blue',
//         this.xp = 0;

//   Player.createRedPlayer(String name, int age)
//       : this.age = age,
//         this.name = name,
//         this.team = 'blue',
//         this.xp = 0;

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// void main() {
//   var player1 = Player.createBluePlayer(
//     name: 'minse',
//     age: 15,
//   );
//   player1.sayHello();

//   var player2 = Player.createRedPlayer(
//     'nico',
//     12,
//   );
//   player2.sayHello();
// }

// // #4.4 Recap
// class Player {
//   late final String name;
//   int xp;
//   String team;

//   // Constructors
//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson["name"],
//         xp = playerJson["xp"],
//         team = playerJson["team"];

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// void main() {
//   var apiData = [
//     {
//       "name": "minse",
//       "team": "red",
//       "xp": 0,
//     },
//     {
//       "name": "nico",
//       "team": "red",
//       "xp": 0,
//     },
//     {
//       "name": "lynn",
//       "team": "red",
//       "xp": 0,
//     }
//   ];

//   apiData.forEach((playerJson) {
//     var player = Player.fromJson(playerJson);
//     player.sayHello();
//   });
// }

// // #4.5 Cascade Notation
// class Player {
//   late String name;
//   late int xp;
//   late String team;

//   // Constructors
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// void main() {
//   var minse = Player(name: 'minse', xp: 1200, team: 'red');
//   var nico = minse
//     ..name = 'nico'
//     ..xp = 120000
//     ..team = 'blue'
//     ..sayHello();
// }

// // #4.6 Enums
// enum Team { red, blue }

// enum XPLevel { beginner, medium, pro }

// class Player {
//   String name;
//   XPLevel xp;
//   Team team;

//   // Constructors
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// void main() {
//   var minse = Player(name: 'minse', xp: XPLevel.beginner, team: Team.red);
//   var nico = minse
//     ..name = 'nico'
//     ..xp = XPLevel.pro
//     ..team = Team.blue
//     ..sayHello();
// }

// // #4.7 Abstract Classes
// abstract class Human {
//   void walk();
// }

// enum Team { red, blue }

// enum XPLevel { beginner, medium, pro }

// class Player extends Human {
//   String name;
//   XPLevel xp;
//   Team team;

//   // Constructors
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void walk() {
//     print("I'm walking");
//   }

//   void sayHello() {
//     print('Hi my name is $name');
//   }
// }

// class Coach extends Human {
//   void walk() {
//     print('hte Coach is walking like this');
//   }
// }

// void main() {
//   var minse = Player(name: 'minse', xp: XPLevel.beginner, team: Team.red);
//   var nico = minse
//     ..name = 'nico'
//     ..xp = XPLevel.pro
//     ..team = Team.blue
//     ..sayHello();
// }

// // #4.8 Inheritance
// class Human {
//   final String name;
//   Human({required this.name});
//   void sayHello() {
//     print('Hi my name is $name');
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
//     print('and I play for ${team}');
//   }
// }

// void main() {
//   var player = Player(
//     team: Team.blue,
//     name: "minse",
//   )..sayHello();
// }

// // #4.9 Mixins
// // extends -> 부모클래스를 상속
// // with -> 부모 자식간의 개념이 아니라 내부의  property와 method를 가져오는 것 뿐이다.
// class String {
//   final double strengthLevel = 1500.99;
// }

// class QuickRunner {
//   void runQuick() {
//     print("Ruuuuunnnnn!!!!!");
//   }
// }

// class Tall {
//   final double height = 1.99;
// }

// enum Team { blue, red }

// class Player with String, QuickRunner, Tall {}

// #4.10 Conclusions
