import 'package:dream11/Routes/routes.dart';
import 'package:dream11/view/screen/second/secondlist.dart';
import 'package:flutter/material.dart';

class ScondPage extends StatelessWidget {
  const ScondPage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;
    TextScaler textScaler = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "UPCOMING CRICKET MATCHES",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade200,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.licdn.com/dms/image/D4E03AQHaWgdNgTvTeg/profile-displayphoto-shrink_400_400/0/1718236032210?e=1725494400&v=beta&t=NIrA8BFHr6JuvIAb1T47sGgCwqP1CxD_9kRtmtNjSBE"),
                    radius: 25,
                  ),
                  Text("Taksh Malaviya"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Skill Score"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("My info & Settings"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Icon(Icons.headphones),
                      title: Text("24 x 7 Help & Support"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Icon(Icons.control_camera_rounded),
                      title: Text("How to Play"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: Icon(Icons.more_horiz),
                      title: Text("More"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Version 5.26.0",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  height: h * 0.4,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment(0, -0.6),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...cricket.map(
                    (e) => Column(
                      children: [
                        Container(
                          height: 350,
                          margin: const EdgeInsets.only(
                              top: 10, left: 10, right: 10),
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 27,
                                    backgroundImage: NetworkImage(
                                      e['img1'],
                                    ),
                                  ),
                                  Text(
                                    e['team1'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "Match start in ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red[50],
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Text(
                                          e['time'].toString(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    e['team2'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  CircleAvatar(
                                    radius: 27,
                                    backgroundImage: NetworkImage(e['img2']),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      height: 170,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Prize Pool"),
                                              Spacer(),
                                              Text("Entry "),
                                              Text(
                                                " \$59 ",
                                                style: TextStyle(
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "\$ 42 Crores",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pushNamed(
                                                          context, Routes.about,
                                                          arguments: e);
                                                    },
                                                    child: Container(
                                                      height: 40,
                                                      width: 40,
                                                      decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "\$1",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: [
                                                  Text("83,09,765 soots left"),
                                                  Spacer(),
                                                  Text("1,00,345 spots"),
                                                ],
                                              ),
                                              LinearProgressIndicator(
                                                color: Colors.redAccent,
                                                value: 0.6,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.matchpage,
                                arguments: e);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffedeff7),
                              //color: Colors.black26,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 30,
                            width: 200,
                            alignment: Alignment.center,
                            child: const Text("View all contests"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        "All upcoming matches",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Cricket,football,kabbadi and more"),
                      leading: Icon(
                        Icons.sports_baseball,
                        color: Colors.red,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "MEET OUR WINNERS ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.only(top: 30),
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     colors: [
                                //       Colors.redAccent,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //     ],
                                //     begin: Alignment.topCenter,
                                //     end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Dhruv Kathiriya",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      " * Won \$112 Crores * ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Check out his inspiring story",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/150034575?v=4"),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.only(top: 30),
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     colors: [
                                //       Colors.redAccent,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //     ],
                                //     begin: Alignment.topCenter,
                                //     end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Taksh Malaviya",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      " * Won \$1 Crores * ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Check out his inspiring story",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  "https://media.licdn.com/dms/image/D4E03AQHaWgdNgTvTeg/profile-displayphoto-shrink_400_400/0/1718236032210?e=1725494400&v=beta&t=NIrA8BFHr6JuvIAb1T47sGgCwqP1CxD_9kRtmtNjSBE"),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              height: 200,
                              width: 300,
                              margin: EdgeInsets.only(top: 30),
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     colors: [
                                //       Colors.redAccent,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //       Colors.white,
                                //     ],
                                //     begin: Alignment.topCenter,
                                //     end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Het Gondaliya",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      " * Won \$12 Crores * ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Check out his inspiring story",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: NetworkImage(
                                  "https://avatars.githubusercontent.com/u/132036737?v=4"),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
