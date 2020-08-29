import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}
enum FormType{
  LoginForm,
  RegisterForm
}

class _AuthPageState extends State<AuthPage> {
  FormType formType = FormType.LoginForm;
  static final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Authentication Page"),
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Form(
          key: formkey,
          child: Column(
              children: formType == FormType.LoginForm ? loginPage() : registerForm()
        ),
        ),
      )
    );
  }

  List<Widget> loginPage(){
    return [
      Image.asset('assets/dummy.png'),
      Text("Login Form", textScaleFactor: 2.0,),
      TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
        ),
      ),

      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
        ),
      ),

      RaisedButton(
        color: Colors.red,
        child: Text("Login", style: TextStyle(color: Colors.white),),

      ),
      FlatButton(
        onPressed: (){
          formkey.currentState.reset();
          setState(() {
            formType = FormType.RegisterForm;
          });
        },

        child: Text("Do Not Have Account? Create your Account" , style: TextStyle(color: Colors.red),),
      )
    ];
  }
  List<Widget> registerForm(){
    return [
      Image.asset('assets/dummy.png'),
      Text("Register Form", textScaleFactor: 2.0,),
      TextFormField(
        decoration: InputDecoration(
          labelText: "Email",
        ),
      ),

      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Password",
        ),
      ),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Confirm Password",
        ),
      ),

      RaisedButton(
        color: Colors.red,
        child: Text("Create Account", style: TextStyle(color: Colors.white),),

      ),
      FlatButton(
        onPressed: () {
          formkey.currentState.reset();
          setState
            (() {
              formType = FormType.LoginForm;
          });
        },
        child: Text("Do you Have Already Account? Login your Account" , style: TextStyle(color: Colors.red),),
      )
    ];
  }
}
