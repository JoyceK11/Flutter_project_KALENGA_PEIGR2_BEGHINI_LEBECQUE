import 'package:comics_project/pages/series/series_liste.dart';
import 'package:flutter/material.dart';

class SeriesSection extends StatelessWidget {
  const SeriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Positioned(
        left: 9,
        top: 111,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1E3243),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 329,
          width: 424,

          child:  Stack(
              children: [
                Positioned(
                  left: 18,
                  top: 22,
                  child: Container(
                    height: 32,
                    width: 375,

                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start, // Répartit l'espace également entre les enfants
                      children: [
                        const Icon(Icons.circle, color: Color(0xFFFF8100), size: 10.0), // Cercle orange comme indicateur
                        const SizedBox(width: 10), // Espace entre l'icône et le texte
                        const Text(
                          'Séries populaires',
                          style: TextStyle(
                            color: Colors.white, fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,fontSize: 20,
                          ),
                        ),

                        const SizedBox(width: 90),

                        TextButton(
                          onPressed: () {
                            // Navigator pour ouvrir ComicsPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SeriesPage()),
                            );
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.black, // Couleur de fond du bouton
                              padding: const EdgeInsets.only(
                                left:17,
                                top:6 ,
                                right:17,
                                bottom: 7,
                              )
                          ),
                          child: const Text(
                            'Voir plus',
                            style: TextStyle(
                              color: Colors.white,fontFamily: 'Nunito',
                              fontWeight: FontWeight.w600,fontSize: 14,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                    left: 18,
                    top: 68,
                    child: Container(
                      height: 242,
                      width: 410,
                      //child: Text('EYE'),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          // Conteneur 1
                          Container(
                            width: 190,
                            decoration: BoxDecoration(
                              color:  Color(0xFF284C6A),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          // Espacement entre les conteneurs
                          SizedBox(width: 10.0),
                          // Conteneur 2
                          Container(
                            width: 190,
                            decoration: BoxDecoration(
                              color:  Color(0xFF284C6A),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                        ],

                    )
                )

                ),
              ]
          ),
        ),
      ),
    );
  }
}
