import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_office_furniture_store_app/cart_scree.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int number = 0;
  void increment() {
    setState(() {
      number++;
    });
  }

  void decrement() {
    setState(() {
      number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double width = size.width;
    final height = size.height;
    final cleintHeight = height - kToolbarHeight;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      appBar: AppBar(
        leading: InkWell(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0),
        title: const Text(
          'Comhar All-in-One ...',
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        actions: const [
          Icon(
            Icons.book_online,
            color: Colors.blue,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                flex: 20,
                child: Container(
                    width: width,
                    // color: Colors.teal,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width * 0.9,
                          height: height * 0.46,
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/desk1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      ],
                    ))),
            Expanded(
                flex: 15,
                child: Container(
                  width: width * 0.95,
                  // color: Colors.amberAccent,
                  child: SizedBox(
                    width: width * 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AutoSizeText(
                          'Synopsis',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                          // maxLines: 3,
                        ),
                        SizedBox(
                          height: height * 0.017,
                        ),
                        AutoSizeText(
                          'Lorem lpusm is simply dummy text of the printing and type setting industry. Loren lpusm has been the industrys standard dummy text ever since the 1500s. when an unknown printer took a galler of type and scrambled to make a type specimen book it has survived not only five centuries . but also the leap into elctronic...',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                          ),
                          // maxLines: 3,
                        ),
                        SizedBox(
                          height: height * 0.035,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const AutoSizeText(
                                  'Color :',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  // maxLines: 3,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Container(
                                  width: width * 0.09,
                                  height: height * 0.05,
                                  decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Container(
                                  width: width * 0.09,
                                  height: height * 0.05,
                                  decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (() {
                                    decrement();
                                  }),
                                  child: Container(
                                    width: width * 0.1,
                                    height: height * 0.05,
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 197, 196, 196),
                                              offset: Offset(0, 1.3)),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 197, 196, 196),
                                              offset: Offset(0.4, 0)),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 197, 196, 196),
                                              offset: Offset(-0.4, 0)),
                                        ],
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const Center(
                                      child: AutoSizeText(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w100,
                                        ),
                                        // maxLines: 3,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.017,
                                ),
                                AutoSizeText(
                                  '$number',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  // maxLines: 3,
                                ),
                                SizedBox(
                                  width: width * 0.017,
                                ),
                                InkWell(
                                  onTap: (() {
                                    increment();
                                  }),
                                  child: Container(
                                    width: width * 0.1,
                                    height: height * 0.05,
                                    decoration: const BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 197, 196, 196),
                                              offset: Offset(0, 1.3)),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 197, 196, 196),
                                              offset: Offset(0.4, 0)),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 197, 196, 196),
                                              offset: Offset(-0.4, 0)),
                                        ],
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: const Center(
                                      child: AutoSizeText(
                                        '+',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w100,
                                        ),
                                        // maxLines: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  'Price',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w100,
                                  ),
                                  // maxLines: 3,
                                ),
                                const AutoSizeText(
                                  '\$469.99',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  // maxLines: 3,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CartScreen()));
                              },
                              child: Container(
                                width: width * 0.38,
                                height: height * 0.055,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Center(
                                  child: AutoSizeText(
                                    'Add to cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    // maxLines: 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
