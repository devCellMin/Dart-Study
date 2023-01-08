// 1.1 The Var Keyword
// void main() {
//   // var name = '민세';
//   String name = '민세';
//   name = 'minnse';
//   // datatype -> var / Stirng + &
//   // 1. var -> 관습적으로 함수나 메소드 내부에 지역변수를 선언 할 때 사용
//   // 2. String + & -> Class에서 변수나 property를 선언 할 때에 타입을 지정한다.
// }

// 1.2 Dynamic Type -> don't know which type will added in value
// void main() {
//   dynamic name;
//   if (name is String) {
//     // name.methodName
//   }
// }

// // 1.3 Null Safty
// // Not Reference Null Values in our code.
// // Without Null Safty
// bool isEmpty(String string) => string.length == 0;
// void main() {
//   //isEmpty(null); // Error

//   // With Nul Safty
//   String? minse = 'minse'; // 변수에 Null을 넣고 싶다면 type 뒤에 ?를 붙여주어야 한다.
//   minse = null;
//   minse?.isNotEmpty; // Same as if(minse != null) {minse.isNotEmpty;}
// }

// // 1.4 Final Variables
// void main() {
//   // String name = 'minse';
//   // name = 'las';

//   //as Final
//   final name = 'minse';
//   // name = 'seMin'; // Error
// }

// // 1.5 Late Variables
// void main() {
//   late final String name;
//   // do something, go to api
//   name = 'minse';
// }

// // 1.6 Constant Variables
// void main() {
//   // const -> compile-time constant
//   // const -> 컴파일을 할 때에 알고 있는 값에 사용
//   // const는 컴파일 전에 값을 알 고 있어야 한다.
//   // const api = fetchAPI(); // error
//   // final api = fetchAPI(); // Allow

//   // Example of const
//   const max_allowed_price = 120;
// }
