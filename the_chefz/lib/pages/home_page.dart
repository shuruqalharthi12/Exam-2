import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:the_chefz/components/image_text_card.dart';
import 'package:the_chefz/model/options_chifz.dart';

import '../components/my_custom_scroll.dart';
import '../main.dart';
import '../model/resturant.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();

  final chipOptions = [
    'الجميع',
    'يبدأ  بصفر  ريال',
    'توفير  حتى 50% ',
    'الأكثر  طلباً'
  ];
  final bannerImages = [
    'https://images.unsplash.com/photo-1521017432531-fbd92d768814?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=petr-sevcovic-qE1jxYXiwOA-unsplash.jpg&w=640',
    'https://images.unsplash.com/photo-1512909006721-3d6018887383?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=kira-auf-der-heide-IPx7J1n_xUc-unsplash.jpg&w=640',
    'https://images.unsplash.com/photo-1620589125156-fd5028c5e05b?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=joana-godinho-Gwv-t9VQiPM-unsplash.jpg&w=640',
  ];
  final bannerTexts = [
    'خدمة الحجوزات',
    'خدمة الهدايا',
    'خدمة الكيترنق',
  ];

  List<Resturant> resturant = [];

  int selectedChip = 0;
  List<OptionChifz> optionsObj = [];
  @override
  void initState() {
    // TODO: implement initState

    optionsObj.addAll(OptionChifz.getOptions());
    resturant.addAll(Resturant.getResturants());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              // add two buttons to the app bar, dilivery, collcet from store,
              title: Row(
                children: [
                  // rounded button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0,
                        backgroundColor: primaryColor,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text('توصيل')),
                  // rounded button
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0,
                        backgroundColor: Colors.white,
                        foregroundColor: primaryColor,
                      ),
                      onPressed: () {},
                      child: Text('استلام من المتجر')),
                  Spacer(),
                  // icon button with text, diliver to
                  // image network
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/9561/9561688.png',
                    width: 30,
                    height: 30,
                  ),
                  // button with two lines Diliver to \n Home
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Deliver to \n Home',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              floating: true,
              expandedHeight: 56,
            ),
            SliverToBoxAdapter(
              child: CarouselSlider(
                options: CarouselOptions(height: 100.0),
                items: [
                  'https://images.unsplash.com/photo-1545231027-637d2f6210f8?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=khadeeja-yasser-3U9L9Chc3is-unsplash.jpg&w=640',
                  'https://media.thechefz.co/content/thump_profile/_Lfu7Q2qXMtOhaA9R7WXLCoT3ao2Zftk.jpeg',
                  'https://images.unsplash.com/photo-1570476922354-81227cdbb76c?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=melanie-kreutz-cSzyY2UaFSI-unsplash.jpg&w=640',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    '$i',
                                  ),
                                )),
                            child: Text(
                              '',
                              style: TextStyle(fontSize: 16.0),
                            )),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Text('جرب معنا',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.right),
              ),
            ),
            // horizontal list
            SliverToBoxAdapter(
              child: Container(
                height: 80,
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: ListView.builder(
                    controller: controller,
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: bannerImages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            // dark
                            filterQuality: FilterQuality.high,
                            colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5),
                              BlendMode.darken,
                            ),
                            image: NetworkImage(
                              bannerImages[index],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            '${bannerTexts[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: optionsObj.length,
                    itemBuilder: (context, index) {
                      final option = optionsObj[index];
                      return Container(
                        width: 80,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Column(
                            children: [
                              // network image
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  '${option.imgURL}',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                '${option.title}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            // near by restaurants text
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Text('بالقرب  منك',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.right),
              ),
            ),
            // horzintal Chip list
            SliverToBoxAdapter(
              child: Container(
                height: 32,
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: chipOptions.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(
                          child: ChoiceChip(
                            label: Text(
                              chipOptions[index],
                              style: TextStyle(
                                color: (index == selectedChip)
                                    ? Colors.white
                                    : primaryColor,
                              ),
                            ),
                            selected: selectedChip == index,
                            onSelected: (value) {
                              setState(() {
                                selectedChip = index;
                                // shuffle the list
                                resturant.shuffle();
                              });
                            },
                            selectedColor: primaryColor,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            // padding
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            // sliver cards list
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final resturantItem = resturant[index];
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ImageTextCard(resturantItem: resturantItem));
                },
                childCount: resturant.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
