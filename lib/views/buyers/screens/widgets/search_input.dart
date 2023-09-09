
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 25, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                hintText: 'Search for Products.',
                border: OutlineInputBorder(
                    borderSide: BorderSide.none
                ),
                prefixIcon: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: SvgPicture.asset("assets/icons/search.svg", width: 10,))
            ),
          ),
        ),
      );
  }
}
