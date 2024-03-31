import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecherchePage extends StatefulWidget {
  const RecherchePage({super.key});

  @override
  State<RecherchePage> createState() => _RecherchePageState();
}

class _RecherchePageState extends State<RecherchePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF15232E),
      body: SingleChildScrollView(
        child:Container(
          height: 1229,
          width: 400,

          child: Stack(
            children: [
              /*Positionnement du texte d'accueil*/
              Container(
                width: MediaQuery.of(context).size.width,
                height: 163,

                decoration: const BoxDecoration(
                  color: Color(0xFF1E3243),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                        left: 32,
                        top:34,
                        //width: 290,
                        //height: 41,
                        child: Center(
                          child: Text('Recherche ',
                            style: TextStyle(
                                fontFamily: 'Nunito',fontSize: 30,color :Colors.white, fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                    ),

                    Positioned(
                        left: 29,
                        top:92,

                        child:Container(
                          width: 321,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Comic, film, série...',
                              hintStyle: TextStyle(color:Colors.white,fontWeight: FontWeight.w400,fontSize: 17, fontFamily: 'Nunito'),
                              filled: true,
                              fillColor: Color(0xFF15232E),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none, // Pas de bordure
                              ),
                              prefixIcon: Icon(Icons.search, color: Colors.white54),
                            ),
                            style: TextStyle(color: Colors.white), // Couleur du texte saisi

                          ),
                        )
                    ),
                  ],
                ),
              ),

              Positioned(
                  left:13,
                  top:354,
                  child: Container(
                    width: 385,
                    height: 131,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E3243),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: const Padding(
                      //padding: EdgeInsets.all(10) ,
                      padding: EdgeInsets.only(
                        top:34,
                        bottom: 37,
                        left:23,
                        right: 126,
                      ),
                      child: Text('saisissez une recherche pour trouver un comics, film ou série ou personnage',
                        style: TextStyle(fontSize: 15, fontFamily: 'Nunito',color: Color(0xFF1F9FFF), fontWeight: FontWeight.w400,
                        ),
                      ),

                    ),


                  ),
              ),

              Positioned(
                left: 290,
                top:327,
                child: SvgPicture.asset('assets/images/astronaut.svg',width: 74.02,height: 97,),
              ),


            ],
          ),
        ),
      )
    );
  }
}
