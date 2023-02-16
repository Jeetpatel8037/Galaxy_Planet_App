import 'package:flutter/material.dart';

class DiscPage extends StatefulWidget {
  const DiscPage({Key? key}) : super(key: key);
  @override
  _DiscPageState createState() => _DiscPageState();
}

class _DiscPageState extends State<DiscPage> with TickerProviderStateMixin {
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
    dynamic arg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 230,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 80),
                            child: Text(
                              arg[1],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                  arg[2],
                                  style: const TextStyle(color: Colors.white70),
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
                                  arg[3],
                                  style: const TextStyle(color: Colors.white70),
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
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                color: Colors.black87,
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 70,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Welcome to ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            arg[1],
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30),
                                          ),
                                        ],
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Colors.lightBlue,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 25),
                                      child: arg[0],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Distance to Sun",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        arg[5],
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Distance to Earth",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        arg[6],
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 230),
                        child: RotationTransition(
                            alignment: Alignment.center,
                            turns: rotationController,
                            child: arg[0]),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "OVERVIEW",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: 320,
                  child: Text(
                    arg[4],
                    style: const TextStyle(
                      color: Colors.white54,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 57,
                    width: double.infinity,
                    color: Colors.lightBlue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.arrow_back_ios,
                            color: Colors.white, size: 25),
                        Text(
                          "Back",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
