import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerComics extends StatelessWidget {
  const ContainerComics({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(

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
                  'The Silver Surfer',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold, fontFamily: 'Nunito'
                  ),
                ),

                SizedBox(height: 10),


                const Text(
                  'In the Hands of ... Mephisto!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600, fontFamily: 'Nunito-Italic',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 22),

                Row(
                    children: [
                      SvgPicture.asset('assets/images/ic_books_bicolor.svg',width:16 ,height: 16,),
                      SizedBox(width: 4.0),
                      const Text(
                        'N°16',
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
                      'Mai 1970',
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
    );
  }
}
