import 'package:flutter/material.dart';

class OutPutAPK extends StatelessWidget {
  OutPutAPK({@required this.vara, @required this.varb, @required this.varn});
  final int vara;
  final int varb;
  final int varn;
  @override
  Widget build(BuildContext context) {
    int Un = vara + (varn - 1) * varb;
    double Sn = (varn / 2) * (vara + Un);
    int Un_sebelumnya = vara + (varn + 2) * varb;
    int b = Un - Un_sebelumnya;
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: Text("HASIL"),
        bottom: PreferredSize(
            child: Container(
              color: Colors.red[200],
              height: 4,
            ),
            preferredSize: null),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Text(
                      "Hasil Hitung Aritmatika",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Hasil Suku Ke -${varn} : ${Un}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Hasil Jumlah Ke -${varn} : ${Sn}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                          maxLines: 1,
                        ),
                        Text(
                          "Hasil Beda Ke : ${varb}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          color: Colors.red,
          child: Text(
            "KEMBALI",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
