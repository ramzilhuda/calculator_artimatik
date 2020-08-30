import 'package:flutter/material.dart';
import 'aboutMe.dart';
import 'outputAritmatika.dart';

class InputAPK extends StatefulWidget {
  @override
  _InputAPKState createState() => _InputAPKState();
}

class _InputAPKState extends State<InputAPK> {
  int a = 0;
  int b = 0;
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text("Calculator Aritmatika"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_outline),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyProfile()));
            },
          )
        ],
        bottom: PreferredSize(
            child: Container(
              color: Colors.red[100],
              height: 4,
            ),
            preferredSize: null),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                'images/hitung.jpg',
                width: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.blue[200],
              child: Column(
                children: <Widget>[
                  Text("Menghitung Deret Aritmatika",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  Text("Suku Ke N",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  Text("Jumlah Suku Ke N",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                  Text("Beda Nilai",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.red[100],
              child: Text(
                "Masukan Input Angka :",
                style: TextStyle(
                    color: Colors.yellow[300],
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          a = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          labelText: "Nilai A",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          b = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          labelText: "Nilai Beda",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          n = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          labelText: "Nilai Suku",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70, bottom: 20),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: RaisedButton(
                child: Text("Hitung",
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OutPutAPK(
                                vara: a,
                                varb: b,
                                varn: n,
                              )));
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 25,
          color: Colors.red,
          alignment: Alignment.center,
          child: Text(
            "@Ramzil Huda",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
