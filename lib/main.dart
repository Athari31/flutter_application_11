import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
home:LoginScreen(),
    );
  }
}



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
bool isChecked =false ;

var _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
  child: Scaffold(
  body: Form(
    key: _key,
    child: Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            validator: (value){
              if (value!.isEmpty || value ==null) {
                return "Email can't be empty";
              }else if(!RegExp(r"^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$" ).hasMatch(value)){

                return "Email is not correct";
              }
            },
            decoration: const InputDecoration(labelText:"Email")
          ),
          ElevatedButton(onPressed: (){
            _key.currentState!.validate();
          },
          child: const Text("Forget Password"),
          )
        ],
      ),
    ),
  ),
  ),
    );
  }
  }