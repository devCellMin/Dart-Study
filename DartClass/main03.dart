// // 3.0 Defining a Function
// // void sayHello(String name) {
// //   print("Hello $name nice to meet you");
// // }

// // String sayHello(String name) {
// //   return "Hello $name nice to meet you";
// // }

// String sayHello(String name) => "Hello $name nice to meet you";

// void main() {
//   String name = 'minse';
//   print(sayHello(name));
// }

// // 3.1 Named Parameters
// // String sayHello(String name, int age, String country) =>
// //     "Hello $name, you are $age, and you come from $country";

// // // Name Argument -> null을 방지하기 위하여 기본 값을 대입한다.
// // String sayHello({
// //   String name = 'anon',
// //   int age = 99,
// //   String country = 'wakanda',
// // }) =>
// //     "Hello $name, you are $age, and you come from $country";

// String sayHello({
//   required String name,
//   required int age,
//   required String country,
// }) =>
//     "Hello $name, you are $age, and you come from $country";

// void main() {
//   // print(sayHello('minse', 19, 'South-Korea'));
//   print(sayHello(
//     name: "minse",
//     age: 19,
//     country: 'South-Korea',
//   ));
//   // sayHello(); // 값을 주지 않으면 Error가 뜬다.(required)
// }

// // 3.2 Recap - parameter
// // 1) 기본
// // String sayHello(String name, int age, String country) =>
// //     "Hello $name, you are $age, and you come from $country";

// // 2) Name Argument
// // String sayHello({
// //   // afraid about null
// //   String name = "",
// //   int age = 0,
// //   String country = "", // give default value
// // }) =>
// //     "Hello $name, you are $age, and you come from $country";

// // 3) Name Argument(required)
// String sayHello({
//   required String name,
//   required int age,
//   required String country,
// }) =>
//     "Hello $name, you are $age, and you come from $country";

// void main() {
//   // 1) 기본
//   // print(sayHello('minse', 19, 'SK'));

//   // 2) Name Argument
//   print(sayHello(
//     name: 'minse',
//     age: 19,
//     country: 'SK',
//   ));

//   // 3) Name Argument(required)
//   //print(sayHello()); // get Error
// }

// // 3.3 Optional Positional Parameters
// String sayHello(String name, int age, [String? country = "SK"]) =>
//     'Hello $name, you are $age, and you come from $country';

// void main() {
//   String result = sayHello('minse', 19);
//   print(result);
// }

// 3.4 QQ Operator
// ??, ?=

// String capitalizeName(String? name) {
//   if (name != null) {
//     return name.toUpperCase();
//   }
//   return 'ANON';
// }

// String capitalizeName(String? name) =>
//     (name != null) ? name.toUpperCase() : 'ANON';

// // QQ Operator
// String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

// void main() {
//   // Use ??
//   String result1 = capitalizeName('minse');
//   String result2 = capitalizeName(null);

//   // Use ??=
//   String? name;
//   name ??= 'minse';
//   name = null;
//   name ??= 'minse2';

//   print(result1);
//   print(result2);
//   print(name);
// }

// // 3.5 Typedef
// // List<int> reverseListOfNumbers(List<int> list) {
// //   var reversed = list.reversed;
// //   return reversed.toList();
// // }

// // String sayHi(Map<String, String> userInfo) {
// //   return "Hi ${userInfo['name']}";
// // }

// typedef ListOfInts = List<int>;
// ListOfInts reverseListOfNumbers(ListOfInts list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }

// typedef UserInfo = Map<String, String>;
// String sayHi(UserInfo userInfo) {
//   return "Hi ${userInfo['name']}";
// }

// void main() {
//   print(reverseListOfNumbers([1, 2, 3, 4]));
//   print(sayHi({"name": 'minse'}));
// }
