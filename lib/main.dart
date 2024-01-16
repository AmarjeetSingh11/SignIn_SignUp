import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_signpage/login_in.dart';
import 'package:signup_signpage/sign_up.dart';
import 'package:signup_signpage/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(), // Use your custom font family
        
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body:Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              SizedBox(
                  height: 150,

              ),

              Text('Welcome',
                style:TextStyle(
                  fontSize: 50,
                  fontFamily: 'Open Sans',
                  color: Color(0xFFdb0e46),
                ),
              ),
            ],
          ),

          Image(
            image: AssetImage('assets/images/logo.png'),
            width: 300,
            height: 300,
          ),


          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: screenWidth,
                height: 60,
                child: ElevatedButton(onPressed: (){


                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignIn()));

                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,

                  // Set the background color of the button
                ),
                    child: Text('Sign In',style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                    ),)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: screenWidth,
                height: 60,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));


                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,

                  // Set the background color of the button
                ),
                    child: Text('Sign Up',style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Open Sans',
                    ),)),
              ),
            ],
          ),

        ],

      ),
    );
  }
}
