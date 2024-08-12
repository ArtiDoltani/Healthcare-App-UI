import 'package:flutter/material.dart';
import 'package:healthcare_app_ui/Screens/Location.dart';
import 'package:healthcare_app_ui/Screens/Screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/3.jpg"), fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.local_hospital_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                    const Text(
                      "Personalized &",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    const Text(
                      "Advance Search",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    const Text(
                      "Premium and prestige car daily rental. Experience the thrill at the lower price",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const locationScreen()));
                          },
                          child: const Text(
                            "Skip",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Screen4()));
                          },
                          child: const Text(
                            "Next",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
