import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 24),
                ),
                const Text(
                  "Recover your khalti password",
                  style: TextStyle(
                      height: 3,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 18),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: const Text('Mobile Number'),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  height: 55 ,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Center(
                        child: Title(
                            color: Colors.white,
                            child: const Text(
                              "RECOVER",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
