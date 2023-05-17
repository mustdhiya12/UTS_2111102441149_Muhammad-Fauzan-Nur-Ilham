import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class LoginView extends GetView<HomeController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
            width: context.width,
            height: context.height,
            child: SingleChildScrollView(
              child: Form(
                key: controller.loginFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [
                            Colors.deepOrange,
                            Color.fromARGB(255, 253, 174, 5)
                          ],
                          stops: [0.0, 10.0],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.asset(
                        "assets/icons/chatting.png",
                        scale: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          colors: [
                            Colors.deepOrange,
                            Color.fromARGB(255, 253, 174, 5)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ).createShader(bounds);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome to Must.Dhiya'",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "Silahkan Login menggunakan Akun SSO",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      controller: controller.emailController,
                      onSaved: (value) {
                        controller.email = value!;
                      },
                      validator: (value) {
                        return controller.validateEmail(value!);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: controller.passwordController,
                      onSaved: (value) {
                        controller.password = value!;
                      },
                      validator: (value) {
                        return controller.validatePassword(value!);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: context.width),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 253, 174, 5)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(14)),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        onPressed: () {
                          controller.checkLogin();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                width: 450,
                height: 250,
                color: const Color.fromARGB(255, 253, 174, 5),
              ),
            ),
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                width: 450,
                height: 260,
                color: const Color.fromARGB(255, 192, 131, 0),
              ),
            ),
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                width: 450,
                height: 250,
                color: const Color.fromARGB(255, 253, 174, 5),
              ),
            ),
          ],
        ));
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, ((size.width * 1.5) / 2) - 120);

    path.quadraticBezierTo((size.width * 1.5) / 2, 10 * 5, size.width, 60);
    path.lineTo(size.width, size.height - 10);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
