import 'package:categorylist/category_list_item.dart';
import 'package:categorylist/data.dart';
import 'package:flutter/material.dart';

// بخش پیاده سازی انواع لیست دسته بندی ها شامل تصاویر عنوان توضیحات و غیره
class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // راست چین کردن جهت متن ها
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        // تعداد آیتم ها با تعداد عنوان ها برابر میشوند
        itemCount: titles.length,
        // همه ی آیتم ها را با کمک ویجت کلاس CategoryListItem پیاده میکنیم
        itemBuilder: (context, index) {
          return CategoryListItem(
            image: images[index],
            title: titles[index],
            subtitle: subtitles[index],
            viewNumber: viewNumber[index],
          );
        },
      ),
    );
  }
}
