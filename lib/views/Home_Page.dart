import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Gaalaxy_Data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController rotationController;
  @override
  void initState() {
    super.initState();
    rotationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    );
    rotationController.repeat();
  }

  @override
  void dispose() {
    rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GALAXY PLANET"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 4,
        leading: const Icon(Icons.menu),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.search),
          ),
        ],
      ),
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('DiscPage', arguments: [
                    galaxy[0].pic,
                    galaxy[0].name,
                    galaxy[0].km,
                    galaxy[0].dis,
                    galaxy[0].view,
                    galaxy[0].sun,
                    galaxy[0].earth
                  ]);
                },
                child: Hero(
                  tag: galaxy[0].id,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 150,
                        width: 300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  galaxy[0].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  child: const Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: const Text(
                                "Milkyway Galaxy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 70,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/moon.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[0].km,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/arrow.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[0].dis,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: RotationTransition(
                            alignment: Alignment.center,
                            turns: rotationController,
                            child: galaxy[0].pic),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('DiscPage', arguments: [
                    galaxy[1].pic,
                    galaxy[1].name,
                    galaxy[1].km,
                    galaxy[1].dis,
                    galaxy[1].view,
                    galaxy[1].sun,
                    galaxy[1].earth
                  ]);
                },
                child: Hero(
                  tag: galaxy[1].id,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 150,
                        width: 300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  galaxy[1].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  child: const Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: const Text(
                                "Milkyway Galaxy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 70,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/nap.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[1].km,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/arrow.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[1].dis,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: RotationTransition(
                            alignment: Alignment.center,
                            turns: rotationController,
                            child: galaxy[1].pic),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('DiscPage', arguments: [
                    galaxy[2].pic,
                    galaxy[2].name,
                    galaxy[2].km,
                    galaxy[2].dis,
                    galaxy[2].view,
                    galaxy[2].sun,
                    galaxy[2].earth
                  ]);
                },
                child: Hero(
                  tag: galaxy[2].id,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 150,
                        width: 300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  galaxy[2].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 80),
                                  child: const Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: const Text(
                                "Milkyway Galaxy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 70,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/map.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[2].km,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/arrow.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[2].dis,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: RotationTransition(
                            alignment: Alignment.center,
                            turns: rotationController,
                            child: galaxy[2].pic),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('DiscPage', arguments: [
                    galaxy[3].pic,
                    galaxy[3].name,
                    galaxy[3].km,
                    galaxy[3].dis,
                    galaxy[3].view,
                    galaxy[3].sun,
                    galaxy[3].earth
                  ]);
                },
                child: Hero(
                  tag: galaxy[3].id,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 150,
                        width: 300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  galaxy[3].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 45),
                                  child: const Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: const Text(
                                "Milkyway Galaxy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 70,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/map.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[3].km,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/arrow.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[3].dis,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: RotationTransition(
                            alignment: Alignment.center,
                            turns: rotationController,
                            child: galaxy[3].pic),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('DiscPage', arguments: [
                    galaxy[4].pic,
                    galaxy[4].name,
                    galaxy[4].km,
                    galaxy[4].dis,
                    galaxy[4].view,
                    galaxy[4].sun,
                    galaxy[4].earth
                  ]);
                },
                child: Hero(
                  tag: galaxy[4].id,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        height: 150,
                        width: 300,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  galaxy[4].name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 45),
                                  child: const Icon(
                                    Icons.more_vert_outlined,
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: const Text(
                                "Milkyway Galaxy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 70,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/map.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[4].km,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Container(
                                //   child: Image.asset(
                                //     'assets/images/arrow.png',
                                //     height: 20,
                                //   ),
                                // ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    galaxy[4].dis,
                                    style:
                                        const TextStyle(color: Colors.white70),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 10),
                        child: RotationTransition(
                            alignment: Alignment.center,
                            turns: rotationController,
                            child: galaxy[4].pic),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
