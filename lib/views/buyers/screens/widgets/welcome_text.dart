

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('Howdy, What are You\n Looking For?', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),)
        ),

        Container(
          child: SvgPicture.asset("assets/icons/cart.svg", width: 20,),
        ),
      ],
    );
  }
}
