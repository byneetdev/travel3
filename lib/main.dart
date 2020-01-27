import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel3/travel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Traveliku",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 65),
              Text(
                "Discover",
                style: GoogleFonts.arvo(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              //!add discover widget
              Container(
                width: double.infinity,
                height: 340,
                child: DiscoverItems(),
              ),
              //!------------------------
              SizedBox(height: 25),
              Text("Best of the Week",
                  style: GoogleFonts.arvo(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: dummyPopularDestination.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    final data = dummyPopularDestination[index];
                    return Card(
                      margin: EdgeInsets.only(right: 20, bottom: 20),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: SizedBox(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 120,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                    image: AssetImage(data.urlimage),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 170,
                              height: 100,
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    data.country,
                                    style: GoogleFonts.openSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    data.name,
                                    style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star, color: Colors.red),
                                      Icon(Icons.star_half, color: Colors.red),
                                      Icon(Icons.star_border,
                                          color: Colors.red),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DiscoverItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyVerticalImage.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final data = dummyVerticalImage[index];
        return Container(
          width: 250,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(data.urlimage),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.only(left: 16, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Chip(
                      backgroundColor: Colors.white,
                      label: Text(data.country,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              textStyle: TextStyle(
                                color: Colors.amber,
                              ))),
                    ),
                    Text(data.name,
                        style: GoogleFonts.openSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle(
                              color: Colors.white,
                            )))
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
