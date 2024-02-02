import 'package:flutter/material.dart';
import 'package:flutterapp/backend/auth/authenticator.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  signUp(String email, String password) {
    final signupAuth = Authenticator();
    signupAuth.signup(email, password);
  }

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create Chalti Account ",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Signup to get started",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black45),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 16, left: 10, bottom: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: const Text(
                        'Mobile Number',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 16, left: 10, bottom: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: const Text(
                        'Full Name',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: isVisible ? true : false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: isVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                      contentPadding:
                          const EdgeInsets.only(top: 16, left: 10, bottom: 12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      label: const Text(
                        'Enter New Chalti Password',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black54),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Use 8 or more characters with letters,number & symbols",
                      style: TextStyle(
                          fontSize: 12,
                          height: 3,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      signUp(_emailController.text, _passwordController.text);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Center(
                            child: Title(
                                color: Colors.white,
                                child: const Text(
                                  "CREATE CHALTI ACCOUNT",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                      child: Text(
                    "Already have an Account?",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  const Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.purple),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
