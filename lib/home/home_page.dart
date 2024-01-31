import 'package:flutter/material.dart';
import 'package:flutterapp/home/main_page.dart';
import 'package:flutterapp/home/second_page.dart';
import 'package:flutterapp/home/sign_in.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Container(
              margin: const EdgeInsets.only(left: 10, top: 100),
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(fontSize: 40, color: Colors.purple),
                  ),
                  const Row(
                    children: [
                      Text(
                        "to ",
                        style: TextStyle(fontSize: 40, color: Colors.purple),
                      ),
                      Text(
                        "Chalti ",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.purple,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Sign in to your chalti Account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 16, left: 10, bottom: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: const Text(
                        'Mobile Number/Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: isVisible ? true : false,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 16, left: 10, bottom: 12),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: isVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: const Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 176),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondRoute()),
                        );
                      },
                      child: const Text(
                        "FORGOT PASSWORD?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Title(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Mainpage()),
                                );
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                      child: Text(
                    "New User?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignIn()),
                      );
                    },
                    child: const Text(
                      "CREATE AN ACCOUNT",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.purple),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
