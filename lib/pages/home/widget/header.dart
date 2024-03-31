import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
       // top: MediaQuery.of(context).padding.top,
        left: 32,
        top: 34,
      ),
      height: 68.69,
      child:const Row(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text(
            "Bienvenue !",
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )


          );
        }
      }
