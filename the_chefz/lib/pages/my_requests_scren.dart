import 'package:flutter/material.dart';

class MyRequestsPage extends StatefulWidget {
  const MyRequestsPage({Key? key}) : super(key: key);

  @override
  State<MyRequestsPage> createState() => _MyRequestsPageState();
}

class _MyRequestsPageState extends State<MyRequestsPage> {
  int _isSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text(
              "تواصل معنا",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.green,
            icon: const Icon(
              Icons.headset_mic,
              color: Colors.white,
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              onTap: (index) {},
              indicatorColor: const Color(0xff3d1d3c),
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: const Color(0xff3d1d3c),
              labelStyle: const TextStyle(
                  color: Color(0xff3d1d3c),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: 'الحجوزات',
                ),
                Tab(
                  text: 'طلباتی',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const Center(
                  child: Text(
                "لا يوجد حجوزات ",
                style: TextStyle(fontSize: 20),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  _isSelected = 1;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _isSelected == 1
                                      ? const Color(0xff3d1d3c)
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    "السابقه",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _isSelected = 2;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: _isSelected == 2
                                        ? const Color(0xff3d1d3c)
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "القادمه",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    _isSelected == 1
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Card(
                                elevation: 6,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "CANCELES-كانوليہ",
                                                style: TextStyle(
                                                    color: Color(0xff454545),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "تم التوصیل",
                                                style: TextStyle(
                                                    color: Color(0xff05B340),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "10مایو م9:18 2032",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(
                                                    Icons.watch_later,
                                                    color: Color(0xff454545),
                                                    size: 15,
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "152.00 رس  ",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff3d1d3c),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(
                                                    Icons.watch_later,
                                                    color: Color(0xff3d1d3c),
                                                    size: 15,
                                                  ),
                                                  SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text(
                                                    "رقم الطلب 101254998",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff3d1d3c),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(
                                                    Icons.monetization_on,
                                                    color: Color(0xff3d1d3c),
                                                    size: 15,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: Colors.black,
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "Canceles",
                                                style: TextStyle(
                                                    color: Color(0xffE5DB86),
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            " اعاده الطلب",
                                            style: TextStyle(
                                                color: Color(0xff3d1d3c),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                          const Text(
                                            "تقییم",
                                            style: TextStyle(
                                                color: Color(0xff58264B),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 1,
                                            color: Colors.grey,
                                          ),
                                          const Text(
                                            "ادفع الان",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 150,
                              ),
                            ],
                          )
                        : _isSelected == 2
                            ? Center(
                                child: Container(
                                  child: const Text('\n \nلا يوجد طلبات'),
                                ),
                              )
                            : const Text('empty'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
