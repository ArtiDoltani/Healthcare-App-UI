import 'package:flutter/material.dart';
import 'package:healthcare_app_ui/Screens/Screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Screen2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: const Image(
            height: double.infinity,
            fit: BoxFit.fitHeight,
            image: AssetImage("assets/images/4.jpg"),
          ),
        ),
        const Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.local_hospital_sharp,
                color: Colors.black,
                size: 40,
              ),
              //Expanded(
              //  child:
              Text(
                "INFO SENIOR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              //),
              //SizedBox(height: 20, width: 10,),
              Text(
                "Supporting Graceful Aging",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 17.0,
                ),
                maxLines: 1,
              ),
              Text(
                "Trusted Senior",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
              ),

              Text(
                "Care Services",
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              Text(
                "A Project of",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    backgroundColor: Colors.yellow,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
              Text(
                "American",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
                maxLines: 1,
              ),
            ],
          ),
        )),
      ],
    ));
  }
}
