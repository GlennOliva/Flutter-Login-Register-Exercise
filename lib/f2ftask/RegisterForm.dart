import 'package:flutter/material.dart';
import 'package:flutter_prac2/f2ftask/LoginForm.dart';


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
    TextEditingController namecontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasscontroller = TextEditingController();
  TextEditingController gendercontroller = TextEditingController();
  TextEditingController civilstatuscontroller = TextEditingController();
  TextEditingController birthdatecontroller= TextEditingController();

  late String errormessage;
  late bool isError;

  void checkRegister( name, username, password , confirmpassword , gender, 
  civilstatus, birthdate)
  {
    setState(() {
      if(name == "")
      {
        errormessage = "Please input your name";
        isError = true;
      }
      else if(username == "")
      {
        errormessage = "Please input your username";
        isError = true;
      }
      else if(password == "")
      {
        errormessage = "Please input your password";
        isError = true;
      }
       else if(confirmpassword == "")
      {
        errormessage = "Please input confirm pass";
        isError = true;
      }
      else if(password != confirmpassword){
        errormessage = "Both password must be match";
        isError = true;
      }
       else if(gender == "")
      {
        errormessage = "Please input your gender";
        isError = true;
      }
       else if(civilstatus == "")
      {
        errormessage = "Please input your civilstatus";
        isError = true;
      }
       else if(birthdate == "")
      {
        errormessage = "Please input your birthdate";
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
          body: ListView(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SIGN UP FORM',
                        style: txtstyle,
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        controller: namecontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Name',
                          prefixIcon: Icon(Icons.person_pin),
                        ),
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
                      TextField(
                        controller: confirmpasscontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Confirm Password',
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: Icon(Icons.remove_red_eye)
          
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 15,),
                       TextField(
                        controller: gendercontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Gender',
                          prefixIcon: Icon(Icons.male),
                        ),
                      ),
                         const SizedBox(height: 15,),
                          TextField(
                        controller: civilstatuscontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Civilstatus',
                          prefixIcon: Icon(Icons.social_distance),
                        ),
                      ),
                         const SizedBox(height: 15,),
                          TextField(
                        controller: birthdatecontroller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter Birthdate',
                          prefixIcon: Icon(Icons.date_range),
                        ),
                      ),
                         const SizedBox(height: 15,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: Colors.cyan
                        ),
                        onPressed: () {
                          checkRegister(
                            namecontroller.text,
                            usernamecontroller.text,
                            passwordcontroller.text,
                            confirmpasscontroller.text,
                            gendercontroller.text,
                            civilstatuscontroller.text,
                            birthdatecontroller.text
                          );
                        },
                        child:  Text('REGISTER' , style: txtstyleone,),
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
                           Navigator.push(context, MaterialPageRoute(builder: (context) => LoginForm()));
                        },
                        child:  Text(
                          "Login here!",
                          style: txtstyletwo,
                      
                        ),
                        
                        
                      ),
          
                    ],
                  ),
                ),
              ),
            ],
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