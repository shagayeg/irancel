import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: new AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.notification_important,
              color: Colors.orange[400],
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.black87,
          title: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "حساب من",
              style: TextStyle(
                  // color: Colors.grey[700],
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
              textAlign: TextAlign.end,
            ),
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              Container(
                child: new DrawerHeader(
                    child: new CircleAvatar(
                  child: Text("sh"),
                  backgroundColor: Colors.red,
                )),
                color: Colors.orange[300],
              ),
              ListTile(
                title: Text('oooo'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: Text('oooo'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: Text('oooo'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: Text('oooo'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: Text('oooo'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            // width: MediaQuery.of(context).size.width*0.99,
            color: Colors.orange[300],
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.70,

                  // color: Colors.teal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "شقایق حیدرزاده",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "09387265013",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // SnackBarCustom(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.90,
                        color: Colors.black12,
                      ),
                      Text(
                        "موجودی",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "0",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  // child: Icon(Icons.account_circle,size: 105,),
                  margin: EdgeInsets.only(right: 5),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  // borderRadius: BorderRadius.circular(80.0),
                  height: MediaQuery.of(context).size.height * 0.50,
                  width: 100,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            // decoration:
            //      BoxDecoration(color: Theme.of(context).primaryColor),
            child: TabBar(
              indicatorColor: Colors.orange[400],
              controller: _controller,
              tabs: [
                Tab(
                  icon: const Icon(
                    Icons.person,
                    color: Colors.black87,
                  ),
                  child: Text(
                    "حساب",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                Tab(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.black87,
                  ),
                  child: Text(
                    "خانه",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Card(
                    child: Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 130.0,
                      lineWidth: 8.0,
                      percent: 0.2,
                      center: new Text(" 24% مگ"),
                      progressColor: Colors.green,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      " معمولی",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          color: Colors.red,
                          onPressed: () {},
                          child: Text(
                            'اینترنت اضطراری',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SnackBarCustom()
                        // RaisedButton(
                        //   color: Colors.orange[400],
                        //   onPressed: () {},
                        //   child: Text(
                        //     'خرید بسته اینترنت',
                        //     style: TextStyle(color: Colors.black87),
                        //   ),
                        // ),
                      ],
                    )
                  ],
                )),
                Card(
                 
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.97,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                // color: Colors.red,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 65),
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.97,
                    // color: Colors.grey,
                    child: Row(
                      children: [
                        Text(
                          "با اپلیکیشن همه کاره ایرانسل من هیچی بعید نیست",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.circle_notifications)
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.90,
                    color: Colors.grey[300],
                  )
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 270, top: 10),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.97,
            // color: Colors.red,
            child: Text("سرویس های ویژه",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width * 0.97,
              child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 3,
                  children: [
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "https://assets.myket.ir/icons/xlarge/com.likotv_5ba603fe-0095-46c7-a01c-84d565989d36.png")),
                          Positioned(
                              top: 88,
                              left: 60,
                              child: Text("لنز",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)))
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 28, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "https://snapp.ir/blog/wp-content/uploads/2020/09/11-opt-min.jpg")),
                          Positioned(
                              top: 88,
                              left: 55,
                              child: Text("اسنپ",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700))),
                          Positioned(
                              left: 70,
                              child: Container(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "جدید",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  height: 26,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      ))))
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 28, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "https://images.khabaronline.ir/images/2013/7/front1.jpg")),
                          Positioned(
                              top: 88,
                              left: 55,
                              child: Text("بیمه عمر",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700))),
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "https://play-lh.googleusercontent.com/j-hOa6Ze_X5URuSeQGaCzNUIY7J4f59gv74LDsIU7WaEC7GjBz3SkBZggveMv2UPsHg")),
                          Positioned(
                              top: 88,
                              left: 10,
                              child: Text("پیشواز آهنگ پیشواز",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700))),
                          Positioned(
                              left: 70,
                              child: Container(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text(
                                    "جدید",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  height: 26,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                      )))),
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Positioned(
                            left: 90,
                            child: CustomPaint(
                              painter: Chevron(),
                              child: Container(
                                width: 20.0,
                                height: 30.0,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 30.0),
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text("1",
                                        style: TextStyle(fontSize: 24.0)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "http://storage2.avvalmarket.ir/apps/com.zoodfood.android.play/icon/512x512.png")),
                          Positioned(
                              top: 88,
                              left: 30,
                              child: Text("اسنپ فود",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)))
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 40),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Text(
                                "...",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                              top: 88,
                              left: 30,
                              child: Text("بیشتر",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)))
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "https://tenovin.com/wp-content/uploads/2019/10/orderfoodonline.png")),
                          Positioned(
                              top: 88,
                              left: 30,
                              child: Text("اسنپ مارکت",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)))
                        ],
                      )),
                    ),
                    GridTile(
                      child: Card(
                          child: Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 15, left: 25),
                              height: MediaQuery.of(context).size.height * 0.08,
                              // width: 40,
                              // color: Colors.red,
                              child: Image.network(
                                  "https://lh3.googleusercontent.com/proxy/pOPrL40RlIEFaCOFX-Zt9uer2gcYXILBHXo9ZNahfQ5VBCkkGOppgU8EqLUZaDZzx08_hmpRtmJiL-WpwtjBpFMpnXOl0j698j0EmvPYtg")),
                          Positioned(
                              top: 88,
                              left: 30,
                              child: Text("همراه هوشمند",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)))
                        ],
                      )),
                    ),
                  ])),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.97,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              // color: Colors.red,
            ),
            child: Image.network(
              "https://saranmarket.com/blog/wp-content/uploads/2020/06/MyIrancell.jpg",
              fit: BoxFit.fill,
            ),
          ),
          // SnackBarCustom()
        ])));
  }
}

class SnackBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RaisedButton(
        color: Colors.orange[300],
        onPressed: () {
          SnackBar snackbar = SnackBar(
            content: Text(
              "موجودی کافی نیست",
              style: TextStyle(color: Colors.black54, fontSize: 18),
            ),
            duration: Duration(seconds: 2),
            backgroundColor: Colors.orange[300],
            action: SnackBarAction(label: "undo", onPressed: () {}),
          );

          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Text("خرید بسته اینترنت"),
      )
    ]);
  }
}

class Chevron extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.orangeAccent, Colors.red],
      tileMode: TileMode.clamp,
    );

    final Rect colorBounds = Rect.fromLTRB(0, 0, size.width, size.height);
    final Paint paint = new Paint()
      ..shader = gradient.createShader(colorBounds);

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - size.height / 3);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
