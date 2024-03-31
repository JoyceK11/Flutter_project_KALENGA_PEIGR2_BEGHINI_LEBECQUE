import 'package:comics_project/pages/home/widget/ComicsSection.dart';
import 'package:comics_project/pages/home/widget/FilmSection.dart';
import 'package:comics_project/pages/home/widget/SerieSection.dart';
import 'package:comics_project/pages/home/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageAcc extends StatefulWidget {
  const PageAcc({super.key});

  @override
  State<PageAcc> createState() => _PageAccState();
}

class _PageAccState extends State<PageAcc> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       child: Container(
         height: 1229,
         width: 400,
         padding: EdgeInsets.only(),

         child: Stack(
           children: [

          /*Positionnement du texte de Bienvenue*/
              const Positioned(
               left: 32,
               top:34,
               width: 164,
               height: 41,
               child: Center(
                 child: Text('Bienvenue ',
                   style: TextStyle(
                       fontFamily: 'Nunito',fontSize: 30,color :Colors.white, fontWeight: FontWeight.bold
                   ),
                 ),
               )
             ),

             /*Positionnement Image astronaute*/
             Positioned(
               left: 260,
               top:16,
               child: SvgPicture.asset('assets/images/astronaut.svg',width: 121.85,height: 159.68,),
             ),

            SeriesSection(),

             Container(
               color: const Color(0xFF15232E),
               height: 32,
             ),

             ComicsSection(),

             Container(
               color: const Color(0xFF15232E),
               height: 32,
             ),

             FilmSection(),

           ],
         ),


       )


      );
    }
}

