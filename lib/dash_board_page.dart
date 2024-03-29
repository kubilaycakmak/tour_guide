import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tour_guide/detail_page.dart';
import 'package:tour_guide/style/color.dart';

class DashBoardPage extends StatefulWidget {

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 60),
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
                  child: Icon(Icons.filter_list, color: Colors.white,),
                ),
              ),
              Text('HOME', style: GoogleFonts.montserrat(
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
        Container(
          height: MediaQuery.of(context).size.height - 253,
          child: ListView(
            children: <Widget>[
              _buildListItem('assets/vancouver.jpg', 'Canada', 'Vancouver', 'Explore the land of the freedom.','City Tour'),
              _buildListItem('assets/toronto.png', 'Canada', 'Toronto', 'Explore the land of the freedom.','High Tour'),
              _buildListItem('assets/montreal.jpg', 'Canada', 'Montreal', 'Explore the land of the freedom.','Towers'),
            ],
          ),
        )
      ],
    );
  }
  _buildListItem(String imgPath, String country, String city, String description, String bannerTitle){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgPath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black87, BlendMode.dstATop)
              )
            ),
          ),
          Container(
            height: 300.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(country,
                    style: GoogleFonts.montserrat(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      textStyle: TextStyle(color: Colors.white54)
                    ),
                  ),
                  Text(city,
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      textStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                  Text(description,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      textStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsPage(imgPath: imgPath, title: city, bannerTitle: bannerTitle,)
                      ));
                    },
                    child: Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white54
                      ),
                      child: Center(
                        child: Text('Explore now',
                          style: GoogleFonts.montserrat(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            textStyle: TextStyle(color: Colors.black87)
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
