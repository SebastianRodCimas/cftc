import 'package:cftc_fpt_34/accueil/accueil.dart';
import 'package:cftc_fpt_34/pdf-maladies/maladie.dart';
import 'package:flutter/material.dart';
import 'package:image_ink_well/image_ink_well.dart';

//Même Structure que agent.dart//
class Conges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(actions: <Widget>[
          Row(children: [
            Align(
              alignment: Alignment(1.50, -0.00),
              child: Row(children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_left_sharp,
                    color: Colors.blue.shade400,
                  ),
                  iconSize: 37,
                  onPressed: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Accueil()));
                  },
                ),
                Center(
                  child: Text(
                      "   Syndicat Constructif,\n  Partenaire du Dialogue Social",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 11,
                        color: Color(4280498574),
                      )),
                ),
                Row(children: [
                  Center(
                    child: Text(
                      "CFTC-FTP 34",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w800,
                        color: Color(4280498574),
                      ),
                    ),
                  ),
                ]),
                Image.asset('assets/logo.png'),
              ]),
            )
          ])
        ]),
        //Body
        backgroundColor: Color(0xFF47348B),
        body: Center(
            child: ListView(children: <Widget>[
          Container(child: Column(children: <Widget>[])),
          ListTile(
            title: Text(
              '           Guides des congés maladies',
              style: TextStyle(
                color: Color(0xFF01B2C0),
                fontSize: 18,
                fontWeight: FontWeight.w900,
                fontFamily: "Oswald",
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Maladie()));
            },
          ),
          Stack(
            children: [
              Align(
                  alignment: Alignment.center,
                  child: ImageInkWell(
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new Maladie()));
                    },
                    width: 200,
                    height: 110,
                    image: AssetImage('assets/maladie.png'),
                  )),
            ],
          ),
          Align(
              alignment: Alignment.topRight,
              child: Text(
                '\n2019                 ',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF028893),
                  fontSize: 14,
                  fontFamily: "PlayFairDisplay",
                  letterSpacing: 1,
                ),
              ))
        ])));
  }
}
