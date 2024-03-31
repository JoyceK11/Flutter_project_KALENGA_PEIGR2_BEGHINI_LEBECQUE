import 'package:comics_project/pages/comics/widget/widget_comics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ComicsPage extends StatefulWidget {
  const ComicsPage({super.key});

  @override
  State<ComicsPage> createState() => _ComicsPageState();
}

class _ComicsPageState extends State<ComicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15232E),
      body: SingleChildScrollView(
        child: Container(
          height: 1229,
          width: 400,//375?
          child: const Stack(
            children: [
              /*Positionnement du texte d'accueil*/
              Positioned(
                  left: 32,
                  top:34,
                  width: 290,
                  height: 82,
                  child: Center(
                    child: Text('Comics les plus populaires ',
                      style: TextStyle(
                          fontFamily: 'Nunito',fontSize: 30,color :Colors.white, fontWeight: FontWeight.bold
                      ),
                    ),
                  )
              ),

              Widget_comics(),
            ],
          ),
        ),
      ),
    );
  }
}
