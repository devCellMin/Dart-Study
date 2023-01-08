// // 2.0 Basic Data Types
// void main() {
//   String name;
//   bool alive;
//   int age; // extends num
//   double money; // extends num

//   // Num
//   num x = 12;
//   x = 1.1;
// }

// // 2.1 Lists
// void main() {
//   // var numbers = [1, 2, 3, 4, ];
//   var giveMeFive = true;
//   List<int> numbers = [
//     1,
//     2,
//     3,
//     4,
//     if (giveMeFive) 5, // Same as if(giveMeFive) {numbers.add(5);}
//   ];
//   print(numbers);
// }

// // 2.2 String Interpolation
// void main() {
//   var name = 'minse';
//   var age = 10;
//   var greeting = 'Hello everyone, my name is $name, and I\'m ${age + 2}';
//   print(greeting);
// }

// // 2.3 Collection For
// void main() {
//   var oldFriends = ['minse', 'nico'];
//   var newFriends = [
//     'lewis',
//     'ralph',
//     'darren',
//     for (var freind in oldFriends) "@${freind}",
//   ];
//   print(newFriends);
// }

// // 2.4 Maps
// void main() {
//   // var player = {
//   //   // String : Object
//   //   'name': 'minse',
//   //   'xp': 19.99,
//   //   'superpower': false,
//   // };

//   // Map<int, bool> map01 = {
//   //   1: true,
//   //   2: false,
//   //   3: true,
//   // };

//   List<Map<String, Object>> players = [
//     {'name': 'minse', 'xp': 199.999},
//     {'name': 'minse', 'xp': 199.999},
//   ];
// }

// // 2.5 Sets
// void main() {
//   //var numbers = {1, 2, 3, 4};
//   Set<int> numbers = {1, 2, 3, 4}; // List와 차이점 => 중복이 되지 않는다.
//   numbers.add(1);
//   numbers.add(1);
//   numbers.add(1);
//   print(numbers);
// }