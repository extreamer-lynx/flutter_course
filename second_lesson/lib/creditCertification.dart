import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCertificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(18, 19, 37, 1),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white10, width: 3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios_rounded,
                      color: Colors.white, size: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                child: Text(
                  "Credit certification",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(80, 25, 80, 10),
                child: Image(
                  image: AssetImage("assets/creditCert.png"),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 17),
                child: Text(
                  "Application materials",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white60,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.fromLTRB(2, 0, 10, 0),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(54, 67, 110, 1)),
                            margin: EdgeInsets.all(15),
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.bookmark_rounded,
                                    size: 40,
                                    color: Color.fromRGBO(76, 170, 253, 1),
                                  ),
                                  Icon(
                                    Icons.check_outlined,
                                    size: 20,
                                    color: Color.fromRGBO(59, 125, 235, 1),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Basic authentication",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Correct basic personal information",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white30),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(26, 231, 167, 1),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Completed",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.fromLTRB(2, 0, 10, 0),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(54, 67, 110, 1)),
                              margin: EdgeInsets.all(15),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Color.fromRGBO(76, 170, 254, 1),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Identity authentication",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Correct basic personal information",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white30),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromRGBO(26, 231, 167, 1),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Completed",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.privacy_tip,
                        color: Colors.green,
                      ),
                      Text(
                        "  To ensure your privacy, it is encrypted and protected",
                        style: TextStyle(color: Colors.white60, fontSize: 10),
                      )
                    ],
                  )),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 1.0),
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            Navigator.pushNamed(context, '/creditCert');
                          },
                          color: Color.fromRGBO(0, 175, 255, 1),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                            child: Center(
                              child: Text(
                                'NEXT STEP',
                                style: TextStyle(
                                    fontSize: 18.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
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
