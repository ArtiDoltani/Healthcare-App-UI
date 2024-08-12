import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int current_index = 0;
  // final Screens;[Categories(), SearchScreen(), locationScreen()  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                // 1st Cointainer
                Container(
                    height: 520,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        color: Colors.grey.shade300),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 200,
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Find & compare providers ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "near you.",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          // Creating 2nd Row

                          Row(
                            children: [
                              const Expanded(
                                flex: 7,
                                child: Text(
                                  "You can use this tool to find and compare different types of Medicare providers (like physicans, hospitals nursing homes, and others).",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    "assets/images/doctor.PNG",
                                  ))
                            ],
                          ),
                          // Creating Textfield

                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 110),
                            child: SizedBox(
                              height: 45,
                              width: 260,
                              child: TextField(
                                decoration: InputDecoration(
                                    //  focusColor: Colors.yellow,
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: 'Search Anything',
                                    suffixIcon: const Icon(Icons.search),
                                    suffixIconColor:
                                        const Color.fromARGB(255, 1, 113, 204),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(2.0),
                                    )),
                              ),
                            ),
                          ),
                          // Creating Buttons
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10.0, right: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 20,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                                      },
                                      child: Text("4.0 and above",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 11, 108, 187),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                ),
                                Expanded(
                                  flex: 20,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                                      },
                                      child: Text("4.5 and above",
                                          style: TextStyle(
                                            color: Colors.white,
                                          )),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 11, 108, 187),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                ),
                                Expanded(
                                  flex: 30,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                                      },
                                      child: Text("Licensed Staffing Hours",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 11, 108, 187),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      30.0)))),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                // 2nd container
                Container(
                    height: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(70),
                            bottomRight: Radius.circular(70)),
                        color: Colors.black),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Row
                        Text(
                          "Discover Best Care Centers",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        // Row
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.menu_outlined,
                                  color: Colors.white, size: 35),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12),
                              child: Text(
                                "Search By ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                            ),
                            Text(
                              "Zip Code ",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.notifications_active,
                                  color: Colors.white, size: 35),
                            ),
                          ],
                        )
                      ],
                    )),
                // 3rd Textfield as a container

                Padding(
                  padding: const EdgeInsets.only(top: 130, left: 60, right: 60),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Enter Zip Code Here',
                        prefixIcon: const Icon(
                          Icons.barcode_reader,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  ),
                ),
              ]),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Text(
                      "Care Centers ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    Text(
                      "Categories ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.blue.shade700),
                    ),
                  ],
                ),
              ),

              // This is Text
              const Padding(
                padding: EdgeInsets.only(left: 40, right: 30),
                child: Text(
                  "You can use this tool to find and compare different types of Medicare providers (like physicans, hospitals nursing homes, and others).",
                  style: TextStyle(color: Colors.black87, fontSize: 15),
                ),
              ),
              const SizedBox(height: 20),
              // 2nd Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 1st Container of 2nd row
                  Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.grey.shade300),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nursing ",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "Homes",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                                "Compare hospitals, nursing homes, & more"),
                          )
                        ],
                      )),
                  // 2nd Container of 2nd row
                  Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.grey.shade300),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Memory ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                "Care",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.0,
                            ),
                            child: Text(
                                "Checkout important things to consider when choosing a provider"),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //3rd Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 1st Container of 2nd row
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.grey.shade300),
                    child: const Column(children: [
                      Text(
                        "InPatient ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "Rehabilitation",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                            "Checkout important things to consider when choosing a provider"),
                      )
                    ]),
                  ),
                  // 2nd Container of 2nd row
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        color: Colors.grey.shade300),
                    child: const Column(children: [
                      Row(
                        children: [
                          Text(
                            "In Home ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Care",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                        ),
                        child: Text(
                            "Checkout important things to consider when choosing a provider"),
                      )
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
