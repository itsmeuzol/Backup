import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      builder: (BuildContext context, _) {
        return Row(
          children: [
            SizedBox(
              width: 350,
              child: SearchBar(
                hintText: 'Search',
                // Set the hint text here
                //text: searchText,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0),
                ),
                onTap: () {},
                onChanged: (String value) {
                  setState(() {
                    searchText = value;
                  });
                },
                leading: const Icon(Icons.search),
              ),
            ),
            const Icon(Icons.tune, size: 35,),
          ],
        );
      },
      suggestionsBuilder: (BuildContext context, _) {
        return List<ListTile>.generate(2, (int index) {
          final String item = 'item $index';
          return ListTile(
            title: Text(item),
            onTap: () {},
          );
        });
      },
    );
  }
}

