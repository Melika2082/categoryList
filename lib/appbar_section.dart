import 'package:categorylist/category_list.dart';
import 'package:flutter/material.dart';

// ویجت بخش App Bar
class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const SizedBox(
          height: 50,
          // اضافه کردن کادر جستجو
          child: TextField(
            decoration: InputDecoration(
              // کلمه راهنمای کادر جستجو
              labelText: 'Search',
              // آیکون قیل از کلمه راهنما
              prefixIcon: Icon(
                Icons.search_rounded,
              ),
              // تنظیمات حاشیه ویجت TextField
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
          ),
        ),
      ),
      // صدا زدن ویجت پیاده سازی تمامی آیتم ها
      body: const CategoryList(),
    );
  }
}
