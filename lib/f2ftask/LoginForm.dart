import 'package:flutter/material.dart';
import 'package:flutter_prac2/f2ftask/RegisterForm.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  late String errormessage;
  late bool isError;

  void checkLogin(username, password)
  {
    setState(() {
      if(username=="")
      {
        errormessage = "Please input your username";
        isError = true;
      }
      else if(password == "")
      {
        errormessage = "Please input your password";
        isError = true;
      }
      else{
        errormessage = "";
        isError = false;
      }
    });
  }

  @override
  void initState()
  {
    errormessage = "This is an error";
    isError = false;
    super.initState();
  }

  @override
  void dispose()
  {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ),
          body: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SIGN IN FORM',
                    style: txtstyle,
                  ),
               
                  const SizedBox(height: 15,),
                  TextField(
                    controller: usernamecontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                     const SizedBox(height: 15,),
                  TextField(
                    controller: passwordcontroller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.remove_red_eye)

                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.cyan
                    ),
                    onPressed: () {
                      checkLogin(
                        usernamecontroller.text,
                        passwordcontroller.text
                      );
                    },
                    child:  Text('LOGIN' , style: txtstyleone,),
                  ),
                  const SizedBox(height: 15,),
                  (isError) ?
                  Text(
                    errormessage,
                    style: errortxtstyle,
                  ): Container(),
                  SizedBox(height: 15,),
                 GestureDetector(
                    onTap: () {
                      // Add the action you want to perform when the widget is tapped
                      // For example, you can navigate to the registration screen
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterForm()));
                    },
                    child:  Text(
                      "Register here!",
                      style: txtstyletwo,
                  
                    ),
                    
                    
                  ),

                ],
              ),
            ),
          ),
    );
  }
}

var txtstyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 24,
);

var txtstyleone = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 18,
  color: Colors.white
);

var txtstyletwo = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 2,
  fontSize: 18,
  color: Colors.black
);

var errortxtstyle = const TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  fontSize: 18,
  color: Colors.red
);