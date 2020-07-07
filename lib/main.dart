import 'package:flutter/material.dart';
import 'package:music_app/albums.dart';
import 'package:music_app/artists.dart';
import 'package:music_app/podcasts.dart';
import 'package:music_app/size_config.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

        return LayoutBuilder(
            builder: (context, constraints) {
                return OrientationBuilder(
                    builder: (context, orientation) {
                        SizeConfig().init(constraints, orientation);
                        return MaterialApp(
                            debugShowCheckedModeBanner: false,
                            theme: ThemeData(
                                primaryColor: Colors.white,
                            ),
                            home: AppHomePage(),
                        );
                    },
                );
            },
        );
    }
}

class AppHomePage extends StatefulWidget {
    AppHomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _AppHomePage createState() => _AppHomePage();
}

class _AppHomePage extends State<AppHomePage> with SingleTickerProviderStateMixin {

    TabController tabController;
    @override
    void initState() {
        super.initState();
        tabController = TabController(length: 3, vsync: this);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                        child: Row(
                            children: <Widget>[
                                Icon(Icons.short_text, color: Colors.black,),
								Spacer(),
                                Icon(Icons.more_vert, color: Colors.black,),
                            ]
                        )
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                        child: Text('Search', style: TextStyle(
                            fontFamily: 'Varela',
                            color: Colors.black,
                            fontSize: 45.0 //* SizeConfig.textMultiplier
                        )),
                    ),

                    Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                        child: Row(
                            children: <Widget>[
								Flexible(
									child: TextField(
                                        cursorColor: Colors.black12,
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
										decoration: InputDecoration(
											filled: true,
											fillColor: Colors.blueGrey[50],
                                            prefixIcon: Icon(Icons.search, color: Colors.black),
											border: OutlineInputBorder(
												borderRadius: BorderRadius.circular(16),
												borderSide: BorderSide.none
											)
										)
									)
								),
                            ],
                        )
                    ),
                    
                    Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 20.0),
                        child: TabBar(
                            controller: tabController,
                            indicatorColor: Colors.blue[900],
                            indicatorWeight: 2.0,
                            indicatorSize: TabBarIndicatorSize.label,
                            labelStyle: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            unselectedLabelColor: Colors.grey,
                            isScrollable: true,
                            tabs: <Widget>[
                                Tab(
                                    child: Text('ALBUMS', style: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 14.0
                                    )),
                                ),
                                Tab(
                                    child: Text('ARTISTS', style: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 14.0
                                    )),
                                ),
                                Tab(
                                    child: Text('PODCASTS', style: TextStyle(
                                        fontFamily: 'Varela',
                                        fontSize: 14.0
                                    )),
                                ),
                            ]
                        )
                    ),

                    Expanded(
                        child: Container(
                            child: TabBarView(
                                controller: tabController,
                                children: <Widget>[
                                    AlbumsPage(),
                                    ArtistsPage(),
                                    PodcastsPage()
                                ]
                            ),
                        )
                    )
                ],
            ),
        );
    }
}
