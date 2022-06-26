import 'package:flutter/material.dart';
import 'package:weather_app/screens/selection_screen.dart';
class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => SplashScreen();
}

class SplashScreen extends State<FirstScreen> {
  @override
  void initState() {super.initState(); _navigateToDashboard();}
  _navigateToDashboard() async{
    await Future.delayed(const Duration (milliseconds: 2000),() {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SecondScreen()));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.fromSize(child: Center(
            child:Image.asset("images/Frame.png")
          )
          ),

    const Align(alignment:Alignment.bottomCenter,
    child:Padding(
    padding: EdgeInsets.all(61),
    child: Text("Powered By Tech Idara",
    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color:Color(0xff000000)

    )
    ),
    ),
    ),

        ]
      )
    );
  }
}