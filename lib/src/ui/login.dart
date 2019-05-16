// import 'package:flutter/material.dart';
// import 'package:flutter_facebook_login/flutter_facebook_login.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String _email;
//   String _password;
//   final facebookLogin = FacebookLogin();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Welcome"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text("Please Log In or Sign UP"),
//             RaisedButton(
//               child: Text("Log In With Facebook"),
//               onPressed: () async {
//                 final result = await facebookLogin.logInWithReadPermissions(['email']);
//                 switch (result.status) {
//                   case FacebookLoginStatus.loggedIn:
//                    print(result.accessToken.token);
//                     // _showLoggedInUI();
//                     break;
//                   case FacebookLoginStatus.cancelledByUser:
//                   print("cancelt");
//                     // _showCancelledMessage();
//                     break;
//                   case FacebookLoginStatus.error:
//                     // _showErrorOnUI(result.errorMessage);
//                     print(result.errorMessage);
//                     break;
//                 }
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


  
