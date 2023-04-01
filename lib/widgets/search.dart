import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // height: _screenHeight / 2,
      // width: _screenWidth / 1,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          icon: Icon(Icons.search, color: primaryColor),

          hintText: "Search",
          // hintStyle: style,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 50,
    margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      border: Border.all(color: Colors.black26),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: const TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.search, color: primaryColor),
        hintText: "Search",
        border: InputBorder.none,
      ),
    ),
  );
}
