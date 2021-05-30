import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: "Login Page",
      debugShowCheckedModeBanner: false,
    );
  }
}

var secureTxt = true;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.cover)),
        // padding: EdgeInsets.all(10.0),
        child: Center(
          child: Container(
            constraints: BoxConstraints(
              minHeight: 200,
              maxHeight: 370,
              minWidth: 220,
              maxWidth: 270,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/icon.png'),
                  height: 70,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Login Here",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 35,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    enabled: true,
                    hintText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      enabled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          togglepassword();
                        },
                        icon: Icon(secureTxt
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
                  obscureText: secureTxt,
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text("Forgot Password ?", style: TextStyle(fontSize: 12))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                    onPressed: () {},
                    splashColor: Colors.black,
                    // padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void togglepassword() {
    secureTxt = !secureTxt;
    setState(() {});
  }
}
