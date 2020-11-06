import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Buddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Travel Buddy'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Travel Buddy',
            style: TextStyle(color: Colors.green),
          ),
          centerTitle: false,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.green,
          ),
          actions: [
            Icon(
              Icons.account_circle,
              color: Colors.green,
            )
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.black45,
            labelColor: Colors.green,
            tabs: [
              Tab(
                text: "Stay",
              ),
              Tab(
                text: "Flights",
              ),
              Tab(text: "Activities"),
              Tab(
                text: "Transfers",
              )
            ],
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          bottomOpacity: 1,
        ),
        body: TabBarView(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              color: Colors.green.withOpacity(0.2),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: screenWidth,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 25),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "18 January 2020 - 18 January 2020 (4 Nights)")),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailsPage(),
                                        ));
                                  },
                                  child: Container(
                                    width: screenWidth * .90,
                                    height: screenHeight * .25,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(1.0, 1.0),
                                              blurRadius: 5.0,
                                              spreadRadius: 1.0),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(Icons.place,
                                                  color: Colors.green),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Flexible(
                                                  child: Text(
                                                "Le Meridian, Cario Le Meridian, Cario Le Meridian, Cario",
                                                style: TextStyle(fontSize: 16),
                                              )),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Text("4.5"),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "175 Nile, Cort LubMen, Rubay, Egypt",
                                                style: TextStyle(
                                                    color: Colors.black45),
                                              )),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    "Check-in \n15 Apr-08:35 AM"),
                                              ),
                                              Expanded(
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 10,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    "Check-out \n15 Apr-08:35 AM"),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: 80,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.amber,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/map.png'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: 80,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.amber,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/hotel.jpg'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: screenWidth,
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 25),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                        "18 January 2020 - 18 January 2020 (4 Nights)")),
                                SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailsPage(),
                                        ));
                                  },
                                  child: Container(
                                    width: screenWidth * .90,
                                    height: screenHeight * .25,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(1.0, 1.0),
                                              blurRadius: 5.0,
                                              spreadRadius: 1.0),
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(Icons.place,
                                                  color: Colors.green),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Flexible(
                                                  child: Text(
                                                "Le Meridian, Cario Le Meridian, Cario Le Meridian, Cario",
                                                style: TextStyle(fontSize: 16),
                                              )),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Text("4.5"),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "175 Nile, Cort LubMen, Rubay, Egypt",
                                                style: TextStyle(
                                                    color: Colors.black45),
                                              )),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    "Check-in \n15 Apr-08:35 AM"),
                                              ),
                                              Expanded(
                                                child: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: 10,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                    "Check-out \n15 Apr-08:35 AM"),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: 80,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.amber,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/map.png'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: 80,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.amber,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          'assets/hotel.jpg'),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.10,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: " \$ 8,500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                      color: Colors.black),
                                ),
                                TextSpan(
                                  text: " /Adult",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ]),
                            ),
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.green),
                              child: Center(
                                  child: Text(
                                'Book Now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: screenHeight * 0.13,
                    right: screenWidth * 0.001,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: IconButton(
                        icon: Icon(Icons.collections_bookmark,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: screenWidth,
                height: screenHeight,
                color: Colors.greenAccent.withOpacity(0.2),
                child: Center(
                  child: Text("This is Flights tab"),
                )),
            Container(
                width: screenWidth,
                height: screenHeight,
                color: Colors.greenAccent.withOpacity(0.2),
                child: Center(
                  child: Text('This is Activities tab'),
                )),
            Container(
                width: screenWidth,
                height: screenHeight,
                color: Colors.greenAccent.withOpacity(0.2),
                child: Center(
                  child: Text('This is Transfers tab'),
                )),
          ],
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(Icons.favorite_border),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.share),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.file_download)
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/dubai.jpg'),
                  )),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.61,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.calendar_today),
                        title: Text("14 January 2020"),
                        subtitle: Text("15 Days trip"),
                        trailing: Column(
                          children: [
                            Text("4.5"),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("Mumbai (BOM)"),
                        subtitle:
                            Text("Chatrapathi Shivaji International Aiport"),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_to_photos),
                        title: Text("Places covered"),
                        subtitle: Text("Makkah (9 N) \nMadinah (5 N)"),
                        isThreeLine: true,
                      ),
                      ListTile(
                        leading: Icon(Icons.flight),
                        title: Text("Flights"),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/emirates.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/indigo.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.event_note),
                        title: Text("Inclusions"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.flight, color: Colors.green),
                                Text('Fights')
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.hotel, color: Colors.green),
                                Text('Stay')
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.fastfood, color: Colors.green),
                                Text('Food'),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.access_time, color: Colors.green),
                                Text('Activities')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
