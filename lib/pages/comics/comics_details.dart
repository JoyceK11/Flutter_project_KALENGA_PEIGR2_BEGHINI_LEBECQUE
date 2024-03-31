import 'package:comics_project/pages/comics/widget/container_comics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageComicsDetails extends StatefulWidget {
  const PageComicsDetails({super.key});

  @override
  State<PageComicsDetails> createState() => _PageComicsDetailsState();
}

class _PageComicsDetailsState extends State<PageComicsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF15232E),
      body: Container(
        height: 1229,
        width: 400,

        child: Stack(

          children: [

            //HEADER
            Positioned(
                left:16,
                top: 61,
                width: 390,
                height: 196,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xB315232E),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/test.jpg',
                        ),
                      fit: BoxFit.cover,
                      //colorFilter: Color.fromRGBO(21, 35, 46, 0.7),
                      opacity: 0.3,




                      ),
                    ),


                child: ContainerComics(),

                ),
                ),

            //NAVIGATION ENTRE LES AUTRES PAGES
            const Positioned(
              top: 270,
              left: 16,
              width: 375,
              height: 589,

                child: DefaultTabController(
                  length: 3,
                  child: Column(
                      children: <Widget>[
                        TabBar(
                          tabs: [
                            Tab(text: 'Histoire'),
                            Tab(text: 'Auteurs'),
                            Tab(text: 'Personnages'),
                            ],
                          labelColor: Colors.red,
                          unselectedLabelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.label,
                        ),
                        Expanded(
                            child: TabBarView(
                                children: [

                                  SingleChildScrollView(

                                    ///HISTOIRE
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Mephisto has ye another plan to obtain the Silver Surfer's soul. He disguises himself and walks among the humans. He now comes up with another plot...",
                                      style: TextStyle(color: Colors.white),
                                        ),
                                      ),

                                  SingleChildScrollView(
                                    ///AUTEURS
                                  ),

                                  SingleChildScrollView(
                                    ///PERSONNAGES
                                  ),

                                ],
                            ),
                        ),
                      ],
                    ),
                ),

            ),
          ],
        ),
      ),
    );
  }
}
