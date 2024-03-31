import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Widget_films extends StatelessWidget {
  const Widget_films({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Positioned(
        left: 8,
        top:137,
        child: Container(
          width: 390,
          height: 196,
          decoration: BoxDecoration(
            color:  Color(0xFF1E3243),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Positioned(
                    left: 14,
                    top: 21 ,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(
                        'assets/images/test.jpg',
                        fit: BoxFit.cover,height: 163,width: 128.86,
                      ),
                    )
                ),

                Positioned(
                  top: 5,
                  left: 7,
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top:6,
                      bottom: 4,
                      right: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '#1',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,fontFamily: 'Nunito'
                      ),
                    ),
                  ),
                ),

                Positioned(
                  left: 154,
                  top: 28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Watchmen',
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold, fontFamily: 'Nunito'
                        ),
                      ),

                      SizedBox(height: 36),



                      Row(
                          children: [
                            SvgPicture.asset('assets/images/ic_movie_bicolor.svg',width:15 ,height: 15,),
                            SizedBox(width: 4.0),
                            const Text(
                              '162 minutes',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400, fontSize: 12,fontFamily: 'Nunito',
                              ),
                            ),
                          ]
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [

                          SvgPicture.asset('assets/images/ic_calendar_bicolor.svg',width:16 ,height: 16,),
                          SizedBox(width: 4.0),
                          const Text(
                            '2009',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400, fontSize: 12,fontFamily: 'Nunito',
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),

                ),
              ]
          ),

        ),
      ),
    );
  }
}
