import 'package:flutter/material.dart';
import 'package:healthcare_app_ui/Screens/Navigation_Screen.dart';

class locationScreen extends StatelessWidget {
  const locationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
              "INFO SENIOR",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            leading: IconButton(
              //    color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/map.png"),
              const Text(
                "Turn your Location On",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 12, bottom: 30, right: 10),
                child: Text(
                    "You'll be able to find yourself on the map, and drivers will be able to find you at the pickup point"),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    child: Text(
                      "Enable location Services",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  )),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Navigation_scrren()
                            //Categories()
                            // SearchScreen()
                            ));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(182, 173, 173, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 140.0, vertical: 15.0),
                    child: Text("Skip",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                  )),
              const Padding(
                padding: EdgeInsets.only(
                  top: 200.0,
                  left: 20,
                ),
                child: Text(
                    "Joining our app means you agree with ourTerms & Conditions and privacy policy"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
