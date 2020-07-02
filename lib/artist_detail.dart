import 'package:flutter/material.dart';
import 'package:music_app/size_config.dart';

class ArtistDetail extends StatefulWidget {
    @override
    _ArtistDetailState createState() => _ArtistDetailState();
}

class _ArtistDetailState extends State<ArtistDetail> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    GestureDetector(
                        onTap: () {
                            Navigator.pop(context);
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 50.0),
                            child: Icon(Icons.arrow_back_ios, color: Colors.black,),
                        ),
                    ),

                    Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                          child: Container(
                              height: 25 * SizeConfig.heightMultiplier,
                              child: Stack(
                                  children: <Widget>[
                                      ClipRRect(
                                          borderRadius: BorderRadius.circular(12.0),
                                          child: Image.asset('images/halsey3.jpg', fit: BoxFit.cover),
                                      ),
                                      Positioned(
                                          top: 10.0,
                                          left: 10.0,
                                          child: CircleAvatar(
                                              backgroundColor: Colors.white70,
                                              child: Icon(Icons.star, color: Colors.white),
                                          ),
                                      )
                                  ],
                              ),
                          ),
                        ),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                        child: Text('Halsey', style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Varela',
                            fontSize: 3.8 * SizeConfig.textMultiplier
                        )),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                        child: Text('18M Listeners', style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Varela',
                            fontSize: 2.0 * SizeConfig.textMultiplier
                        )),
                    ),

                    Padding(
						padding: const EdgeInsets.only(right: 20.0, left: 20.0, top:30.0),
						child: Container(
							height: 7 * SizeConfig.heightMultiplier,
							decoration: BoxDecoration(
								color: Colors.black,
								borderRadius: BorderRadius.circular(12.0)
							),

							child: Center(
								child: Row(
									mainAxisAlignment: MainAxisAlignment.center,
									children: <Widget>[
										Text('Shuffle Play', style: TextStyle(
											fontFamily: 'Varela',
											fontSize: 2.5 * SizeConfig.textMultiplier,
											color: Colors.white
										)),
										SizedBox(width: 8.0),
										Icon(Icons.shuffle, color: Colors.white)
									],
								),
							),
						),
                    ),

					Padding(
						padding: const EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0, top: 30.0),
						child: Container(
							child: Column(
								children: <Widget>[
									artistSongs(
                                        'images/halsey.png', 
                                        'Without Me', 
                                        'Halsey',
                                        '3:21'
                                    ),
									SizedBox(height: 10.0,),
									artistSongs(
                                        'images/halsey2.jpg', 
                                        'Now or Never', 
                                        'Halsey',
                                        '3:00'
                                    ),
									SizedBox(height: 10.0,),
									artistSongs(
                                        'images/halsey5.jpg', 
                                        '11 Minutes', 
                                        'Halsey',
                                        '2:58'
                                    ),
									SizedBox(height: 10.0,),
									artistSongs(
                                        'images/halsey4.png', 
                                        'Control', 
                                        'Halsey',
                                        '3:58'
                                    ),
									// SizedBox(height: 10.0,),
									// artistSongs(
                                    //     'images/halsey.jpg', 
                                    //     'Alone', 
                                    //     'Halsey',
                                    //     '3:00'
                                    // ),
								],
							),
						),
					)

                ],
            ),
        );
    }


    artistSongs(
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
                    
                    Icon(Icons.favorite_border, color: Colors.black,),

                    SizedBox(width: 10.0),

                    Icon(Icons.more_vert, color: Colors.black,)

                ],
            ),
        );
    }
}