import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        centerTitle: true,
        title: Text("Tentang Saya"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage('images/foto.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Ramzil Huda",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.blue[200],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "ramzilhuda@sttpyk.ac.id",
                      style: TextStyle(
                          fontSize: 15, color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, right: 50, left: 50),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.my_location,
                                  color: Colors.purple,
                                  size: 30,
                                ),
                                onPressed: null),
                            Text(
                              "Payakumbuh",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.green[200],
                                  size: 30,
                                ),
                                onPressed: null),
                            Text(
                              "Rumah",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.music_note,
                                    color: Colors.red[200],
                                    size: 30,
                                  ),
                                  onPressed: null),
                              Text(
                                "Musik",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueGrey, width: 2),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.school,
                                    color: Colors.blue,
                                    size: 30,
                                  ),
                                  onPressed: null),
                              Text(
                                "STTP",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
