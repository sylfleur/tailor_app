import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
              // controller: searchController,
              decoration: InputDecoration(
                prefixIconColor: Colors.black,
                focusColor: Colors.amber,
                prefixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search),
                ),
                label: Text('Search'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
              ),
            )
;
  }
  
}