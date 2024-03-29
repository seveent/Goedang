import 'package:flutter/material.dart';
import 'package:login_flutter/page/signup_page.dart';
import 'package:login_flutter/page/home_page.dart';




class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return initWidget();
    }


  initWidget(){

  return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90), bottomRight: Radius.circular(90)
                ),
                color: Color.fromARGB(255, 247, 161, 1),
              ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset("img/goedang_logo.png"),
                    height: 90,
                    width: 90,
                    )
                  ],
                ),
              )
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                boxShadow:[
                  BoxShadow(
                  offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                ),
                ]
              ),
              child: TextField(
                cursorColor: Color(0xff1393aa),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 247, 161, 1),
                  ),
                    hintText: "Email",
                  enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  boxShadow:[
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)
                    ),
                  ]
              ),
              child: TextField(
                cursorColor: Color(0xff1393aa),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color.fromARGB(255, 247, 161, 1),
                    ),
                    hintText: "Password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: (){
                },
                child: Text("Lupa Password?"),
              ),
            ),

            GestureDetector(
              onTap: () {
                // Navigate to homepage.dart when "LOGIN" is pressed
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(), // Specify HomePage as the destination
                  ),
                );
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [(Color.fromARGB(255, 247, 161, 1)),(Color.fromARGB(255, 247, 161, 1))],
                  begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  boxShadow: [BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)
                )
                  ],
                ),
                child: Text(
                    "LOGIN",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum mempunyai akun?"),
                  GestureDetector(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Color.fromARGB(255, 247, 161, 1)
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()
                          )
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


