import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ItemList> itemList = [
    ItemList("assets/bodyImage1.png", "Play Ludo and Earn Money"),
    ItemList("assets/bodyImage2.png", "Play Cricket Fantasy League")
  ];
  int _currentIndex = 0;
  final List<IconData> _icons = [];

  final List<String> _labels = [
    'Contact',
    'Wallet',
    'Share',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("assets/logo2.png"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 4),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Text(
                    "Hello, Dipak 👋",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                child: Image.asset("assets/img1.png"),
              ),
            ),
            Container(
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) => ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset("${itemList[index].image}"),
                              ListTile(
                                title: Text("${itemList[index].titleTxt}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/svg3.png"),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("5,00,000+"),
                                          Text("Players"),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text(
                                            "  Play Now  ",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  50), // Adjust the value to make it circular or elliptical
                                            ),
                                            padding: EdgeInsets.all(10),
                                            backgroundColor: Colors.orange,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ]),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.headphones),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.wallet),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),

      // BottomNavigationBar(
      //
      //   onTap: (value) {
      //     setState(() {
      //        _currentIndex = value;
      //     });
      //
      //   },
      //   items:  _icons
      //       .asMap()
      //       .map(
      //         (index, icon) => MapEntry(
      //       index,
      //       BottomNavigationBarItem(
      //         icon: Icon(icon,color: Colors.black12),
      //         label: _labels[index],
      //
      //
      //       ),
      //     ),
      //   )
      //       .values
      //       .toList(),
      //
      //
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            _currentIndex = 4;
          });
        },
      ),
    );
  }
}

class ItemList {
  String? image;
  String? titleTxt;
  ItemList(this.image, this.titleTxt);
}
