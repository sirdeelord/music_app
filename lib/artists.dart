import 'package:flutter/material.dart';
import 'package:music_app/artist_detail.dart';
import 'package:music_app/size_config.dart';

class ArtistsPage extends StatefulWidget {
    @override
    _ArtistsState createState() => _ArtistsState();
}

class _ArtistsState extends State<ArtistsPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Container(
                        height: 20 * SizeConfig.heightMultiplier, 
                        child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                            _artists('images/halsey.png', 'Halsey'),
                            SizedBox(width: 20.0),
                            _artists('images/wizkid.jpeg', 'Wizkid'),
                            SizedBox(width: 20.0),
                            _artists('images/maroon.jpeg', 'Maroon 5'),
                            SizedBox(width: 20.0),
                            _artists('images/billie.jpeg', 'Billie Eilish'),
                            SizedBox(width: 20.0),
                            _artists('images/davido1.jpeg', 'Davido'),
                        ],
                    )),
                )             
            ])
        );
    }

    // artist
    Widget _artists(String artistImg, String artistName) {
        return GestureDetector(
            onTap: (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => ArtistDetail()));
            },
            child: Column(
                children: <Widget>[
                    Container(
                        width: 24 * SizeConfig.widthMultiplier,
                        height: 12 * SizeConfig.heightMultiplier,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(artistImg))
                        ),
                    ),
                    SizedBox(height: 10.0),
                    Text(artistName, style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                    ))
                ]
            ), 
        );
    }
}