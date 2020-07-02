import 'package:flutter/material.dart';
import 'package:music_app/size_config.dart';

class AlbumsPage extends StatefulWidget {
    @override
    _AlbumsState createState() => _AlbumsState();
}

class _AlbumsState extends State<AlbumsPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                            child: Container(
                                height: 27 * SizeConfig.heightMultiplier,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                        _albumCard('images/nasty.png'),
                                        SizedBox(width: 10.0),
                                        _albumCard('images/davido.jpeg'),
                                        SizedBox(width: 10.0),
                                        _albumCard('images/elevation.jpeg'),
                                        SizedBox(width: 10.0),
                                        _albumCard('images/halsey.png'),
                                        SizedBox(width: 10.0),
                                    ],
                                ),
                            )
                        ),

                        Padding(
                            padding: const EdgeInsets.only(left: 20.0, top:40.0, right: 20.0, bottom: 15.0),
                            child: Text('Recently Played',
                                style: TextStyle(
                                    fontSize: 2.8 * SizeConfig.textMultiplier,
                                    fontFamily: 'Varela',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600
                                ),
                            ),
                        ),

                        Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                                child: Column(
                                    children: <Widget>[
                                        
                                        _recentlyPlayedCard(
                                            'images/justin.png', 
                                            'Intentions', 
                                            'Justin Bieber ft. Quavo',
                                            '3:35'
                                        ),
                                        SizedBox(height: 20.0),
                                        _recentlyPlayedCard(
                                            'images/halsey.png', 
                                            'Without Me', 
                                            'Halsey',
                                            '3:21'
                                        ),
                                        SizedBox(height: 20.0),
                                        _recentlyPlayedCard(
                                            'images/dandc.jpeg', 
                                            'Blow My Mind', 
                                            'Davido ft. Chris Brown',
                                            '3:00'
                                        ),
                                    ],
                                ),
                            ),
                        )
                    ]
                )
            ),
        );
    }

    _recentlyPlayedCard(
        String imgAsset, String albumName, 
        String artistName, String duration) {
        return Container(
            child: Row(
                children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            imgAsset, 
                            fit: BoxFit.cover, 
                            height: 12 * SizeConfig.imageSizeMultiplier,
                            width: 12 * SizeConfig.imageSizeMultiplier,
                        ),
                    ),

                    SizedBox(width: 20.0,),

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Text(albumName, style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Varela',
                                fontSize: 2 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold
                            )),
                            Text(artistName, style: TextStyle(
                                color: Colors.black38,
                                fontFamily: 'Varela',
                                fontSize: 1.5 * SizeConfig.textMultiplier,
                            )),
                        ]
                    ),
                    
                    Spacer(),

                    Text(duration, style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 2.3 * SizeConfig.textMultiplier,
                        color: Colors.black
                    )),

                    SizedBox(width: 20.0),
                    
                    Icon(Icons.favorite_border, color: Colors.black,)

                ],
            ),
        );
    }

    _albumCard(String assetImg) {
        return Container(
            height: 27 * SizeConfig.heightMultiplier,
            width: 40 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                            assetImg, 
                            fit: BoxFit.cover, 
                            height: 27 * SizeConfig.heightMultiplier, 
                            width: 40 * SizeConfig.widthMultiplier
                        ),
                    ),
                    
                    Positioned(
                        bottom: 10.0,
                        left: 10.0,
                        child: CircleAvatar(
                            backgroundColor: Colors.white70,
                            child: Icon(Icons.play_arrow, color: Colors.white),
                        )
                    ),
                ],
            ),
        );
    }
}