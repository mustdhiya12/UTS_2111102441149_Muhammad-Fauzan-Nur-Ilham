import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/Page/off.dart';
import 'package:login/app/modules/home/views/login_view.dart';

import '../app/modules/home/controllers/home_controller.dart';

class mainhome extends StatelessWidget {
  mainhome({super.key});
  final user = Get.find<HomeController>();
  late final isLoggedin = user.email.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            actions: [
              isLoggedin
                  ? Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                'Hai, ',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 28, 28, 28)),
                              ),
                              Text(
                                user.username,
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(width: 10),
                              const CircleAvatar(
                                radius: 10,
                                // Gambar profil atau ikon pengguna dapat ditambahkan di sini
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Silahkan, ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: 'Login or Register',
                                  style:
                                      const TextStyle(color: Colors.blueAccent),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const live()),
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
            backgroundColor: const Color.fromARGB(255, 253, 174, 5),
            elevation: 0.1,
          ),
          body: Stack(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  height: 250,
                  width: 450,
                  color: const Color.fromARGB(255, 253, 174, 5),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(children: [
                  SizedBox(
                    //height: 350 * 0.95,
                    child: Column(children: [
                      ClipPath(
                        clipper: ClipInfoClass(),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          height: 260,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFFFDC830),
                                Color(0xFFF37335),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Qoutes Today:",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    "assets/icons/q.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 10),
                              const Divider(
                                color: Colors.white12,
                              ),
                              RichText(
                                textAlign: TextAlign.justify,
                                text: const TextSpan(
                                  text:
                                      '   Orang pesimis melihat kesulitan dalam setiap kesempatan, tapi orang optimis melihat kesempatan dalam setiap kesulitan. ',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ),
                              const Text(
                                "- Ali bin Abi Thalib -",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              const Divider(
                                color: Colors.white,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF37335),
                                  ),
                                  child: const Text(
                                    "Next Quote",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        ClipPath(
                            child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    StatusCard(
                                      title: "Jadwal",
                                      data: "Sholat",
                                      satuan: ".",
                                    ),
                                    StatusCard(
                                      title: "Arah",
                                      data: "Kiblat",
                                      satuan: ".",
                                    ),
                                    StatusCard(
                                      title: "Kalender",
                                      data: "Hijriah",
                                      satuan: ".",
                                    )
                                  ],
                                )))
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        //body
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Quotes : ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat semua >",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    scroll(
                                      image: "assets/images/1.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/2.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/3.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/4.jpg",
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Berita : ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat semua >",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    scroll(
                                      image: "assets/images/4.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/3.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/2.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/1.jpg",
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Amalan : ",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat semua >",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: const [
                                    scroll(
                                      image: "assets/images/3.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/1.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/2.jpg",
                                    ),
                                    scroll(
                                      image: "assets/images/4.jpg",
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Navigation
                        Card(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 60,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                NavItem(
                                  title: "Home",
                                  path: "home",
                                  status: true,
                                ),
                                NavItem(
                                  title: "Add",
                                  path: "add",
                                  status: false,
                                ),
                                NavItem(
                                  title: "Books",
                                  path: "book",
                                  status: false,
                                ),
                                NavItem(
                                  title: "Inbox",
                                  path: "inbox",
                                  status: false,
                                ),
                                NavItem(
                                  title: "User",
                                  path: "user",
                                  status: false,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ],
          )),
    );
  }
}

class scroll extends StatelessWidget {
  const scroll({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 350 * 0.7,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.title,
    required this.path,
    required this.status,
  });

  final String title;
  final String path;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Image.asset(
            "assets/icons/$path.png",
            fit: BoxFit.contain,
          ),
        ),
        Text(
          title,
          style:
              TextStyle(color: (status == true) ? Colors.black : Colors.grey),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);
  final String title;
  final String data;
  final String satuan;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 350 * 0.3,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: const TextStyle(fontSize: 10),
          ),
          RichText(
            text: TextSpan(
              text: data,
              style: const TextStyle(
                  color: Color(0xFFF37335),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: satuan,
                    style: const TextStyle(fontSize: 10, color: Colors.grey))
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
