import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);

  final List<String> images = [
    'https://th.bing.com/th/id/OIP.a-FhrSSUJHin7SRbD8h3tAHaDt?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.d4b76713e39bef3ff17cdce0a955b98d?rik=wtpMb6BzysL4jg&riu=http%3a%2f%2frumbum.co%2fwp-content%2fuploads%2f2020%2f11%2f3da097bfde49aef8e7b0aa00b7ac3ae1.png&ehk=ch65lIthB5z6uHK%2b%2fzw3Jed8qkH%2fOdI4%2bp0ocijCVrg%3d&risl=&pid=ImgRaw&r=0',
    'https://th.bing.com/th?id=OIF.5owrNcdw2P%2bFBmO4Z%2b4Qlg&rs=1&pid=ImgDetMain',
  ];

  final List<String> titles = [
    'زبان برنامه دارت و فریمورک فلاتر',
    'فلاتر چیست؟',
    'بهترین منابع برای یادگیری فلاتر',
  ];

  final List<String> subtitles = [
    'دارت یک زبان برنامه نویسی مدرن از گوگل است که برای ساخت برنامه های وب، سرور و موبایل استفاده می شود. فلاتر، یک فریمورک UI از گوگل است که با دارت نوشته شده و امکان ساخت برنامه های موبایل، وب و دسکتاپ را با یک کد برنامه نویسی فراهم می کند. فلاتر برای سرعت بالا، بهره وری برنامه نویس، و زیبایی UI شناخته شده است.',
    'بهترین منابع برای یادکیری فلاتر',
    'بهترین منابع برای یادگیری فلاتر',
  ];

  final List<int> viewNumber = [100, 550, 498];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 1.06,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                            images[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.28,
                          ),
                          Text(
                            viewNumber[index].toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
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
                ListTile(
                  title: Text(
                    titles[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subtitles[index],
                        maxLines: 4,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
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
                const Divider(
                  endIndent: 10,
                  height: 20,
                  indent: 10,
                  color: Colors.grey,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
