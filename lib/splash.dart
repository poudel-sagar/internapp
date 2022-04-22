import 'package:flutter/material.dart';
import 'package:internapp/main.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    //final urlImage= 'https://www.vhv.rs/dpng/d/427-4270068_gold-retro-decorative-frame-png-free-download-transparent.png';
    //final urlImage=Uri.https('https://www.vhv.rs/dpng/d/427-4270068_gold-retro-decorative-frame-png-free-download-transparent.png','');
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/internn.png'),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                /*color:Colors.blue,*/
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/moru.png'),
                )),
              ),
              SizedBox(height: 33),
              Container(
                child: Text(
                  'We show news for you',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 33),
              Container(
                child: ElevatedButton(
                  child: Text("Skip"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
