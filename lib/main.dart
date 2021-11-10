 import 'package:flutter/material.dart';
import 'package:simple_buy_app/sign_uP.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
       );

}
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("Buy",
          style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        actions: [
          Icon(Icons.add_shopping_cart),
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(child: Image.asset("assets/images/by.jpg",)),
              Center(
                child: Text("Welcome Back",
                  style: TextStyle(fontSize: 30,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 40,),
              customTextField("E-Mail",false,Icons.email),
              SizedBox(height: 20,),
              customTextField("PassWord",true,Icons.lock),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value:  checkBoxVal,
                      onChanged: (value){
                        setState(() {
                          checkBoxVal=value;
                        });
                      },
                    ),
                    Text("iam admin",
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text("Don\' t have an account?"),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUp(),
                        ),
                        );
                      },
                        child: Text("Sign Up")),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              RaisedButton(
                onPressed: (){},
                child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
                color: Colors.blue[800],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
Widget customTextField(hint,obs,icon){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20,
    ),
    child: TextFormField(
      validator: (value){
        if(value.isEmpty){
          return "Enter your email";
        }
      },
      decoration: InputDecoration(
        hintText:hint,
        prefixIcon: Icon(icon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      obscureText: obs,
    ),
  );
}
