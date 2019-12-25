import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'style/color.dart';

class DetailsPage extends StatefulWidget {

  final imgPath, title;

  DetailsPage({this.imgPath, this.title});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imgPath), fit: BoxFit.cover
              )
            ),
          ),
          BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black45
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60, horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: colorPink
                ),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              Text(widget.title.toString().toUpperCase(), style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                textStyle: TextStyle(color: Colors.white54)
              ),),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: colorTransparent
                ),
                child: Center(
                  child: Icon(Icons.bookmark_border, color: Colors.white,),
                ),
              ),
              ],
            ),
          ),
          Positioned(
            top: 150.0,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 70.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Trending Attractions',
                          style: GoogleFonts.montserrat(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.white70)
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert, color: Colors.white70,),
                          onPressed: (){},
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          height: 200.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/van-stanley.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)
                            )
                          ),
                        ),
                      ),
                      Positioned(
                        top: 125.0,
                        left: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Stanley Tour',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    textStyle: TextStyle(color: Colors.white70)
                                  ),
                                  ),
                                  Text(
                                    'Three day tour around Stanley!',
                                    style: GoogleFonts.montserrat(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    textStyle: TextStyle(color: Colors.white70)
                                  ),
                                  )
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.white70
                                ),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios, color: Colors.black87,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), 
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: MediaQuery.of(context).size.width - 70.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Weekly Highlights',
                          style: GoogleFonts.montserrat(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.white70)
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.more_vert, color: Colors.white70,),
                          onPressed: (){},
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildListItem('assets/stanley-walk.jpeg', 'Walking area', 'Free'),
                        _buildListItem('assets/stanley-walk.jpeg', 'Walking area', 'Free'),
                        _buildListItem('assets/stanley-walk.jpeg', 'Walking area', 'Free'),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  _buildListItem(String imgPath, String placeName, String price){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 175.0,
            width: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
              )
            ),
          ),
          Positioned(
            top: 15.0,
            right: 15.0,
            child: Container(
              height: 25.0,
              width: 25.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white70
              ),
              child: Center(
                child: Icon(
                  Icons.bookmark_border,
                  color: colorDarkLighter,
                  size: 15,
                ),
              ),
            ),
          ),
          Positioned(
            top: 125.0,
            left: 15.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(placeName,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle(color: Colors.white70)
                ),),
                Text(price,
                style: GoogleFonts.montserrat(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  textStyle: TextStyle(color: Colors.white70)
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}