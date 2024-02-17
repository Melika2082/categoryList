import 'package:flutter/material.dart';

// کلاس ساخت انواع آیتم های لیست دسته بندی ها
class CategoryListItem extends StatelessWidget {
  // تعریف متغیر ها برای آیتم های تصاویر، عنوان، زیرعنوان و تعداد بازدید
  final String image;
  final String title;
  final String subtitle;
  final int viewNumber;

  // ساخت کلاس با ورودی تعریف متغیرها
  const CategoryListItem({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.viewNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              // ویجت برای نمایش تصاویر
              Container(
                // تعیین اندازه های تصاویر براساس عرض و ارتفاع
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.06,
                decoration: BoxDecoration(
                  // رنگ پس زمینه تصاویر
                  color: Theme.of(context).primaryColor,
                  // گرد کردن گوشه های تصاویر
                  borderRadius: BorderRadius.circular(15),
                  // قرار دادن تصاویر پس زمینه
                  image: DecorationImage(
                    // آدرس اینترنتی تصاویر
                    image: NetworkImage(
                      image,
                    ),
                    // پرکردن تصاویر در فضای تعیین شده
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // پیاده سازی لیست تعداد بازدید تصاویر در گوشه پایین سمت چپ تصاویر
              Positioned(
                bottom: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      // قرار دادن آیکون و تعداد ارقام بازدیدهای تصاویر
                      width: MediaQuery.of(context).size.width / 1.28,
                    ),
                    Text(
                      // تبدیل رقم تعداد بازدید به رشته
                      viewNumber.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    // ایجاد فاصله برای قرار دادن آیکون تعداد بازدیدها
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.visibility_rounded,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // ویجتی برای نمایش عنوان ها و توضیجات زیرعنوان ها
          ListTile(
            // عنوان ها با فونت ضخیم
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            // نمایش توضیحات زیرعنوان ها
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  // نمایش توضیحات زیرعنوان با حداکثر 4 خط
                  maxLines: 4,
                ),
                // ایجاد فاصله از توضیحات زیرعنوان ها با دکمه ی قابل کلیک کردن
                const SizedBox(height: 10),
              ],
            ),
          ),
          // ویجتی برای یک دکمه ی قابل کلیک کردن
          ElevatedButton(
            onPressed: () {},
            // تنظیمیات ظاهر دکمه ها
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'بیشتر بخوانید',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          // ایجاد خط جداکننده بین دسته بندی ها
          const Divider(
            endIndent: 10,
            height: 20,
            indent: 10,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
