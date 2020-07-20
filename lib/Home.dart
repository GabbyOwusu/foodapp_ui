import 'package:flutter/material.dart';
import 'package:order_food/widgets/FoodCarosel.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = [
    "Food",
    "Sugar",
    "FuFu",
  ];

  PageController controller = PageController(
    initialPage: 1,
    viewportFraction: 0.85,
  );
  int currentPage;

  void initState() {
    super.initState();
    controller.addListener(() {
      int next = controller.page.round();

      if (currentPage != next) {
        setState(() {
          currentPage = next;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Center(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.5),
                                  width: 2)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'ASAP',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                IconButton(
                                    icon: Icon(Icons.arrow_forward),
                                    color: Colors.white,
                                    iconSize: 20,
                                    onPressed: () {}),
                                Text(
                                  'Work',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 800,
                        child: PageView.builder(
                            physics: BouncingScrollPhysics(),
                            pageSnapping: true,
                            controller: controller,
                            itemCount: list.length,
                            //ignore: missing_return
                            itemBuilder: (context, index) {
                              if (index == currentPage) {
                                bool active = index == currentPage;
                                return FoodCarousel(
                                  active: active,
                                );
                              } else if (list.length >= index) {
                                return FoodCarousel(
                                  active: false,
                                );
                              }
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      'Order from here',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
