import 'package:comics_project/pages/comics/comics_liste.dart';
import 'package:comics_project/pages/films/films_liste.dart';
import 'package:comics_project/pages/home/acceuil.dart';
import 'package:comics_project/pages/recherche.dart';
import 'package:comics_project/pages/series/series_liste.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index){
    setState(() {
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF15232E),
        body: [

          PageAcc(),
          ComicsPage(),
          SeriesPage(),
          FilmsPage(),
          RecherchePage()
          ][_currentIndex],
        bottomNavigationBar: NavigationBar(),
      ),
    );
  }

  Widget NavigationBar() {

    return Container(
      //color: const Color(0xfff6f8ff),//A VOIR !!!
      child: Container(

        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF3792FF).withOpacity(0.08),
                spreadRadius: 5,
                blurRadius: 10),
          ],
        ),

        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),

          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index)=>setCurrentIndex(index),

            backgroundColor: const Color(0xFF0F1E2B),
            type: BottomNavigationBarType.fixed,
            selectedItemColor:  const Color(0xFF3792FF),
            unselectedItemColor:  const Color(0xFF778BA8),
            selectedLabelStyle: const TextStyle(fontSize: 12 ,fontFamily: 'Nunito' ,fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontSize: 12 ,fontFamily: 'Nunito' ,fontWeight: FontWeight.w600),

            items:  [

              BottomNavigationBarItem(
                label:'Accueil',
                icon: SvgPicture.asset('assets/images/navbar_home.svg',width:24.01 ,height: 24.01,color: const Color(0xFF778BA8),),
                activeIcon: SvgPicture.asset('assets/images/navbar_home.svg',width:24.01 ,height: 24.01,color: const Color(0xFF3792FF),),

              ),
              BottomNavigationBarItem(
                label:'Comics',
                icon: SvgPicture.asset('assets/images/navbar_comics.svg',width:24.01 ,height: 24.01,color: const Color(0xFF778BA8),),
                activeIcon: SvgPicture.asset('assets/images/navbar_comics.svg',width:24.01 ,height: 24.01,color: const Color(0xFF3792FF),),

              ),
              BottomNavigationBarItem(
                label:'Séries',
                icon: SvgPicture.asset('assets/images/navbar_series.svg',width:24.01 ,height: 24.01,color: const Color(0xFF778BA8),),
                activeIcon: SvgPicture.asset('assets/images/navbar_series.svg',width:24.01 ,height: 24.01,color: const Color(0xFF3792FF),),

              ),
              BottomNavigationBarItem(
                label: 'Films',
                icon: SvgPicture.asset('assets/images/navbar_movies.svg',width:24.01 ,height: 24.01,color: const Color(0xFF778BA8),),
                activeIcon: SvgPicture.asset('assets/images/navbar_movies.svg',width:24.01 ,height: 24.01,color: const Color(0xFF3792FF),),

              ),
              BottomNavigationBarItem(
                label:'Recherche',
                icon: SvgPicture.asset('assets/images/navbar_search.svg',width:24.01 ,height: 24.01,color: const Color(0xFF778BA8),),
                activeIcon: SvgPicture.asset('assets/images/navbar_search.svg',width:24.01 ,height: 24.01,color: const Color(0xFF3792FF),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



