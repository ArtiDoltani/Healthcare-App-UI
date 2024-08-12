import 'package:flutter/material.dart';
import 'package:healthcare_app_ui/Screens/Location.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/1.jpeg"), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.local_hospital_sharp,
                  color: Colors.white,
                  size: 40,
                ),
                const Text(
                  "24/7 Access To",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                const Text(
                  "Health Counsellors ",
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
                      fontSize: 16.0,
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
                          "Get Started",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

        // Stack(
        //   children: [
        //     Container(
        //       width: double.infinity,
        //       height:double.infinity,
        //       child: Image(
        //         fit: BoxFit.fill,
        //         image: AssetImage("assets/images/1.jpeg"),

        //       ),

        //     ),

        //        Container(
        //            margin: EdgeInsets.only(top: 450.0, left: 25.0),
        //           // width: 100,
        //          // height: 100,
        //             child: SingleChildScrollView(
        //               child:  Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Icon(Icons.local_hospital_sharp, color:
        //                   Colors.white,size: 40, ),

        //                   Text("24/7 Access To"
        //                     , style: TextStyle(color: Colors.white,
        //                         fontSize: 25.0, fontWeight: FontWeight.bold ),
        //                     maxLines: 1,
        //                   ),
        //                   Text("Health Counsellors "
        //                     , style: TextStyle(color: Colors.yellow, fontSize: 40.0, fontWeight: FontWeight.bold
        //                     ),
        //                     maxLines:1 ,
        //                   ),
        //                   Text("Premium and prestige car daily rental. Experience the thrill at the lower price"
        //                     , style: TextStyle(color: Colors.white,
        //                         fontSize: 16.0,fontWeight: FontWeight.bold),
        //                     maxLines: 2,
        //                   ),

        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.end,
        //                     children: [
        //                       ElevatedButton(onPressed: (){
        //                         Navigator.push(context, MaterialPageRoute(builder:(context)=>locationScreen()));
        //                       }, child:Text("Get Started"))

        //                       // Icon(Icons.arrow_circle_right, color:
        //                       // Colors.black,size: 40, ),
        //                       // TextButton.icon(onPressed: (){
        //                       //  // Navigator.push(context, MaterialPageRoute(builder:(context)=>Screen2()));
        //                       // }, icon: Icon(Icons.arrow_circle_right,), label: Text("Get Started"),
        //                       // )
        //                     ],
        //                   )
        //                 ],

        //               )
        //               ,
        //             )
        //         )

        //   ],

        // )
      ),
    );
  }
}
