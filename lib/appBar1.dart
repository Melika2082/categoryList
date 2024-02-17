import 'package:categorylist/category_list.dart';
import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget {
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(
                Icons.search_rounded,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ),
      body: CategoryList(),
    );
  }
}
