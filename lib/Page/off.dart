import 'package:flutter/material.dart';
import 'package:login/app/modules/home/views/login_view.dart';
import 'package:login/app/modules/home/views/regis_view.dart';

class live extends StatelessWidget {
  const live({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            DecoratedBox(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFDC830),
                    Color(0xFFF37335),
                  ],
                ),
              ),
              child:
                  Container(), // Konten halaman jangan isi di sini nanti ribet :v
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 80),
                      height: 510,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(133, 255, 244, 191),
                      ),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 35),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/must-have.png',
                              width: 100,
                              height: 100,
                            ),
                            const Text(
                              'Must Dhiya System Desain',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 221, 129, 0)),
                            ),
                            const Text(
                              'Jika Anda memiliki kebutuhan khusus untuk menghilangkan tombol navigasi sistem pada seluruh aplikasi, saya sarankan untuk mempertimbangkan pengembangan natif menggunakan Java / Kotlin untuk Android atau Objective-C / Swift untuk iOS. Dengan pengembangan natif, Anda dapat memiliki kontrol penuh terhadap tata letak dan perilaku tombol navigasi sistem di seluruh aplikasi.',
                              textAlign: TextAlign.justify,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 10),
                                Image.asset(
                                  'assets/cross-platform.png',
                                  width: 60,
                                  height: 60,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Get the App on the many platform",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 221, 129, 0)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginView()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 245, 183, 0)),
                        child: const Text('Login'),
                      ),
                      const Text(
                        "  or  ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 148, 86, 0)),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterView()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            minimumSize: const Size(200, 50),
                            backgroundColor:
                                const Color.fromARGB(255, 0, 167, 245)),
                        child: const Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
