import 'package:comics_project/pages/comics/widget/container_comics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Widget_comics extends StatelessWidget {
  const Widget_comics({super.key});

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
          child: ContainerComics(),

        ),
      ),

    );
  }

}
