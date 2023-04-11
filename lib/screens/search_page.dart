import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:virtual_aid/constant/constants.dart';
import 'package:http/http.dart' as http;

class SearchPage extends StatefulWidget {
  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  //ignore: library_private_types_in_public_api
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  List<dynamic> searchResults = [];

  void searchQuery(String query) async {
    final url =
        'http://172.16.16.173/DoctorAppointment_API/search.php?q=$query'; //API URL

    final response = await http.post(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      setState(() {
        searchResults = jsonResponse['data'];
      });
      print(searchResults);
    } else {
      print("Found some error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          // height: 150,
          // height: _screenHeight / 2,
          // width: _screenWidth / 1,

          child: Column(
            children: [
              Hero(
                tag: 'search_field',
                child: Container(
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
                      hintText: "Search Here",
                      border: InputBorder.none,
                    ),
                    onChanged: (query) {
                      if (query != null) {
                        searchQuery(query);
                        setState(() {});
                      }
                    },
                  ),
                ),
              ),
              if (searchResults.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemCount: searchResults.length,
                    itemBuilder: (context, index) {
                      // build search results item
                      return ListTile(
                        title: Text(searchResults[index]['hospital_name']),
                        subtitle: Text(searchResults[index]['doctor_name']),
                        trailing: Text(searchResults[index]['department_name']),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
