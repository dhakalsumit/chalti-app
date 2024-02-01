import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  // color: Colors.white12,
                  margin: const EdgeInsets.only(
                    top: 40,
                    left: 10,
                    right: 10,
                  ),
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  // color: Colors.amber,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                image: const DecorationImage(
                                    image: AssetImage('images/sudip.jpg'))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Sudip",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 120,
                          ),
                          const Icon(
                            size: 30,
                            Icons.search,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Icon(
                            size: 30,
                            Icons.card_giftcard,
                            color: Colors.pinkAccent,
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          const Icon(
                            size: 30,
                            Icons.notifications_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 90,
                            width: 180,
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10, bottom: 30),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_rupee,
                                      size: 30,
                                      color: Colors.deepPurple,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "XXX.XX",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                           
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
