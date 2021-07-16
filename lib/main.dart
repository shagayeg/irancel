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
        drawer: Drawer(
          child: ListView(
            // reverse: false,
            children: [
              ListTile(),
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
                        RaisedButton(
                          color: Colors.orange[400],
                          onPressed: () {},
                          child: Text(
                            'خرید بسته اینترنت',
                            style: const TextStyle(color: Colors.black87),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
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
                crossAxisCount: 3, children: [
                GridTile(
                  child: Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child: Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child:  Card(
                  
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child: Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child: Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child:  Card(
                  
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child:  Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child: Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),
                GridTile(
                  child:  Card(
                   
                    child:
                      Icon(Icons.home),
                      
                    
                  ),
                ),

                // color: Colors.red,
                //   child:  GridView.count(

                // crossAxisCount: 3,
                // childAspectRatio: 1.0,
                // padding: const EdgeInsets.all(4.0),
                // mainAxisSpacing: 4.0,
                // crossAxisSpacing: 4.0,
                // children: [
                //   Icon(Icons.circle_notifications),
                //   Icon(Icons.circle_notifications),
                //   Icon(Icons.circle_notifications),
                //   Icon(Icons.circle_notifications),
                //   Icon(Icons.circle_notifications),
                // ],
                // )
              ]))
        ])));
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,

//         visualDensity: VisualDensity.adaptivePlatformDensity,

//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          actions: [
//   IconButton(
//             icon: Icon(Icons.notifications,size: 30,),
//             onPressed: () {
//               setState(() {});
//              } ),
//          ],

//        centerTitle: false,
//           title: Container(
//             width: MediaQuery.of(context).size.width,
//             child: Text(
//               "حساب من",
//               style: TextStyle(
//                   // color: Colors.grey[700],
//                   fontWeight: FontWeight.w700,
//                   fontSize: 20),
//               textAlign: TextAlign.end,
//             ),
//           ),
//           // backgroundColor: Colors.white),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           // reverse: false,
//           children: [
//             ListTile(

//               ),

//           ],
//         ),
//       ),
//       //  bottomNavigationBar: BottomNavigationBar(
//       //    fixedColor: Colors.yellow,
//       //    backgroundColor: Colors.black87,

//       //   items: [

//       //     BottomNavigationBarItem(
//       //       icon: new Icon(Icons.medical_services,color: Colors.yellow),
//       //       title: new Text('دسته بندی '),
//       //     ),
//       //     BottomNavigationBarItem(
//       //       icon: new Icon(Icons.menu_sharp,color: Colors.yellow),
//       //       title: new Text('دسته بندی '),
//       //     ),
//       //     BottomNavigationBarItem(
//       //         icon: Icon(Icons.person,color: Colors.yellow),
//       //          title: Text('دیجی کالا من')
//       //     )],
//       // ),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           Container(

//             height: MediaQuery.of(context).size.height*0.20,
//             // width: MediaQuery.of(context).size.width*0.99,
//             color: Colors.orange[300],
//             child: Row(
//               children: [
//                  Container(
//                    margin: EdgeInsets.only(left: 10),
//                   height: MediaQuery.of(context).size.height*0.14,
//             width: MediaQuery.of(context).size.width*0.70,

//             // color: Colors.teal,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//               Text("شقایق حیدرزاده",style: TextStyle(fontWeight: FontWeight.w800),),
//               SizedBox(height: 5,),
//               Text("09387265013",style: TextStyle(color: Colors.white),),
//                SizedBox(height: 5,),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//                 height: 1,width: MediaQuery.of(context).size.width*0.90,
//               color: Colors.black12,),
//               Text("موجودی",style: TextStyle(fontWeight: FontWeight.w800),),
//                SizedBox(height: 5,),
//               Text("0",style: TextStyle(color: Colors.white),)
//             ],),
//                 ),
//                 Spacer(),
//                 Container(
//                   // child: Icon(Icons.account_circle,size: 105,),
//                 margin: EdgeInsets.only(right:5),
//                  decoration: BoxDecoration(
//                         shape: BoxShape.circle, color: Colors.red),
//                 // borderRadius: BorderRadius.circular(80.0),
//                 height: MediaQuery.of(context).size.height*0.50,
//                 width: 100,
//                 ),

//               ],
//             ),
//           ),
//         ],),
//       ),
//       );

//   }
// }
