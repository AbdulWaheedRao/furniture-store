import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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

  final List images = [
    'assets/images/desk1.jpg',
    'assets/images/desk2.jpg',
    'assets/images/desk3.jpg',
    'assets/images/desk4.jpg',
    'assets/images/desk5.jpg',
    'assets/images/desk6.jpg',
    'assets/images/desk7.jpg'
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double width = size.width;
    final height = size.height;
    final cleintHeight = height - kBottomNavigationBarHeight;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      width: width,
                      // color: Colors.teal,
                      child: Column(
                        children: [
                          SizedBox(
                            height: cleintHeight * 0.03,
                          ),
                          const AutoSizeText(
                            'Cart',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            // maxLines: 3,
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 11,
                  child: Container(
                      width: width,
                      // color: Colors.purpleAccent,
                      child: Column(
                        children: [
                          Container(
                            width: width * 0.9,
                            height: cleintHeight * 0.66,
                            // color: Colors.red,
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        childAspectRatio: 5 / 2,
                                        crossAxisSpacing: 4 / 2,
                                        mainAxisSpacing: 30),
                                itemCount: 7,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Container(
                                    // height: 300,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.37,
                                          height: cleintHeight * 0.18,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              image: DecorationImage(
                                                  image:
                                                      AssetImage(images[index]),
                                                  fit: BoxFit.cover),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10))),
                                        ),
                                        SizedBox(
                                          width: width * 0.02,
                                        ),
                                        Container(
                                          width: width * 0.35,
                                          height: cleintHeight * 0.2,
                                          // color: Colors.pink,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const AutoSizeText(
                                                'Comhar All-in_one',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const AutoSizeText(
                                                '\$469.99',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                // maxLines: 3,
                                              ),
                                              Row(
                                                children: [
                                                  const AutoSizeText(
                                                    'Color : ',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    // maxLines: 3,
                                                  ),
                                                  Container(
                                                    width: width * 0.08,
                                                    height: cleintHeight * 0.05,
                                                    decoration:
                                                        const BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    161,
                                                                    126,
                                                                    126),
                                                            shape: BoxShape
                                                                .circle),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: width * 0.14,
                                          height: cleintHeight * 0.2,
                                          // color: Colors.amber,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: width * 0.1,
                                                height: cleintHeight * 0.05,
                                                decoration: const BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              197,
                                                              196,
                                                              196),
                                                          offset:
                                                              Offset(0, 1.3)),
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              197,
                                                              196,
                                                              196),
                                                          offset:
                                                              Offset(0.4, 0)),
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              197,
                                                              196,
                                                              196),
                                                          offset:
                                                              Offset(-0.4, 0)),
                                                    ],
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                child: const Center(
                                                  child: AutoSizeText(
                                                    '-',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                    ),
                                                    // maxLines: 3,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: cleintHeight * 0.007,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: width * 0.035),
                                                child: const AutoSizeText(
                                                  '1',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                  // maxLines: 3,
                                                ),
                                              ),
                                              SizedBox(
                                                height: cleintHeight * 0.007,
                                              ),
                                              Container(
                                                width: width * 0.1,
                                                height: cleintHeight * 0.05,
                                                decoration: const BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              197,
                                                              196,
                                                              196),
                                                          offset:
                                                              Offset(0, 1.3)),
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              197,
                                                              196,
                                                              196),
                                                          offset:
                                                              Offset(0.4, 0)),
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              197,
                                                              196,
                                                              196),
                                                          offset:
                                                              Offset(-0.4, 0)),
                                                    ],
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10))),
                                                child: const Center(
                                                  child: AutoSizeText(
                                                    '+',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w100,
                                                    ),
                                                    // maxLines: 3,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ))),
              Expanded(
                  flex: 3,
                  child: Container(
                      width: width * 0.93,
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: cleintHeight * 0.08,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AutoSizeText(
                                    'Total price',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    // maxLines: 3,
                                  ),
                                  SizedBox(
                                    height: cleintHeight * 0.01,
                                  ),
                                  const AutoSizeText(
                                    '\$1469.96',
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
                                  height: cleintHeight * 0.055,
                                  decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: const Center(
                                    child: AutoSizeText(
                                      'Chekout',
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
                      )))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.agriculture_outlined),
            label: 'Shopping cart',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.purple,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Settings',
          //   backgroundColor: Colors.pink,
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
