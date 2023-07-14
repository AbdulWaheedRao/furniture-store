import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_office_furniture_store_app/detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  int index = 0;
  Color focusedColor = Colors.lightGreenAccent;
  Color unfocusedColor = Colors.grey;
  late Color color1, color2, color3, color4, color5, color6, color7;
  @override
  void initState() {
    super.initState();
    color1 = focusedColor;
    color2 = unfocusedColor;
    color3 = unfocusedColor;
    color4 = unfocusedColor;
    color5 = unfocusedColor;
    color6 = unfocusedColor;
    color7 = unfocusedColor;
  }

  final List images = [
    'assets/images/desk1.jpg',
    'assets/images/desk2.jpg',
    'assets/images/desk3.jpg',
    'assets/images/desk4.jpg',
    'assets/images/desk5.jpg',
    'assets/images/desk6.jpg',
    'assets/images/desk7.jpg'
  ];
  final List imagesChair = [
    'assets/images/chair1.jpg',
    'assets/images/chair2.jpg',
    'assets/images/chair3.jpg',
    'assets/images/chair4.jpg',
    'assets/images/chair5.jpg',
    'assets/images/chair6.jpg',
    'assets/images/chair7.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double width = size.width;
    final height = size.height;
    final cleintHeight = height - kToolbarHeight;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    width: width * 0.95,
                    // color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              // color: Colors.pink,
                              width: width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      AutoSizeText(
                                        'Hello Sina',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                      Icon(Icons.dehaze_sharp),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  const AutoSizeText(
                                    'Buy Your favourite desk',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: width * 0.95,
                                  height: height * 0.07,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.search),
                                      suffixIcon: Icon(Icons.dehaze_sharp),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(17)),
                                          borderSide: BorderSide(
                                              width: 1, color: Colors.grey)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: (BorderSide(
                                            width: 1.0, color: Colors.blue)),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(17),
                                        ),
                                      ),
                                      labelText: 'Search',
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    width: width * 0.95,
                    child: Container(
                      // width: width,
                      // color: Colors.green,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: (() {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailPage()));
                                    }),
                                    child: Container(
                                        width: width * 0.95,
                                        height: height * 0.175,
                                        // color: Colors.red,
                                        child: CarouselSlider.builder(
                                          itemCount: 7,
                                          itemBuilder:
                                              (context, index, realIndex) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          images[index]),
                                                      fit: BoxFit.cover),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(20))),
                                            );
                                          },
                                          options: CarouselOptions(
                                              onPageChanged: (index, reason) {
                                                setState(() {
                                                  this.index = index;
                                                  color1 = unfocusedColor;
                                                  color2 = unfocusedColor;
                                                  color3 = unfocusedColor;
                                                  color4 = unfocusedColor;
                                                  color5 = unfocusedColor;
                                                  color6 = unfocusedColor;
                                                  color7 = unfocusedColor;
                                                  if (index == 0) {
                                                    color1 = focusedColor;
                                                  } else if (index == 1) {
                                                    color2 = focusedColor;
                                                  } else if (index == 2) {
                                                    color3 = focusedColor;
                                                  } else if (index == 3) {
                                                    color4 = focusedColor;
                                                  } else if (index == 4) {
                                                    color5 = focusedColor;
                                                  } else if (index == 5) {
                                                    color6 = focusedColor;
                                                  } else {
                                                    color7 = focusedColor;
                                                  }
                                                });
                                              },
                                              enlargeCenterPage: true,
                                              height: 200,
                                              reverse: false,
                                              enableInfiniteScroll: true),
                                        )
                                        //    GridView.builder(
                                        //       scrollDirection: Axis.horizontal,
                                        //       gridDelegate:
                                        //           const SliverGridDelegateWithFixedCrossAxisCount(
                                        //               crossAxisCount: 1,
                                        //               childAspectRatio: 5 / 5,
                                        //               crossAxisSpacing: 20,
                                        //               mainAxisSpacing: 20),
                                        //       itemCount: 7,
                                        //       itemBuilder: (BuildContext ctx, index) {
                                        //         return
                                        // Container(
                                        //           decoration: BoxDecoration(
                                        //               color: Colors.blue,
                                        //               image: DecorationImage(
                                        //                   image: AssetImage(
                                        //                       images[index]),
                                        //                   fit: BoxFit.fill),
                                        //               borderRadius:
                                        //                   const BorderRadius.all(
                                        //                       Radius.circular(20))),
                                        //         );
                                        //       }),
                                        ),
                                  ),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: index == 0
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 0
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color1,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: index == 1
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 1
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color2,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: index == 2
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 2
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color3,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: index == 3
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 3
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color4,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: index == 4
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 4
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color5,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: index == 5
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 5
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color6,
                                            shape: BoxShape.circle),
                                      ),
                                      Container(
                                        width: index == 6
                                            ? width * 0.06
                                            : width * 0.045,
                                        height: index == 6
                                            ? height * 0.017
                                            : height * 0.01,
                                        decoration: BoxDecoration(
                                            color: color7,
                                            shape: BoxShape.circle),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    width: width * 0.95,
                    // height: height,
                    // color: Colors.teal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          'Popular',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Container(
                          width: width * 0.95,
                          height: height * 0.43,
                          // color: Colors.red,
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      childAspectRatio: 5 / 2,
                                      crossAxisSpacing: 4 / 2,
                                      mainAxisSpacing: 15),
                              itemCount: 7,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  // height: 300,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width * 0.45,
                                        height: height * 0.18,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    imagesChair[index]),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10))),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: width * 0.4,
                                            child: const AutoSizeText(
                                              'Soutien Office Chair',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w900,
                                              ),
                                              // maxLines: 3,
                                            ),
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Icon(Icons.star),
                                            ],
                                          ),
                                          SizedBox(
                                            width: width * 0.4,
                                            child: const AutoSizeText(
                                              'With its 3D lumbor support system, 135 lounge tillt and 4D adjustable armresta.',
                                              // '35 lounge tillt and 4D adjustable armresta',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                              ),

                                              maxLines: 3,
                                              wrapWords: true,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
