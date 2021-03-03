import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
//import 'package:restaurant_mobile_app/widgets/article_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              //header
              new UserAccountsDrawerHeader(
                accountName: Text('WAGOUM Patrick'),
                accountEmail: Text('wagoumpatrick@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ),
                decoration: new BoxDecoration(color: Colors.blue),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('setting'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('about'),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200.0,
                    child: Carousel(
                      images: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/ndole.jpg'),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/eru.jpg'),
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/okok.jpg'),
                          ),
                        ),
                      ],
                      boxFit: BoxFit.fitHeight,
                      indicatorBgPadding: 0.0,
                      showIndicator: true,
                      autoplay: true,
                      dotSize: 4.0,
                      animationDuration: Duration(milliseconds: 300),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 192.0),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ),
                  Text(
                    'tout voir',
                    style: TextStyle(color: Colors.blue, fontSize: 14.0),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                height: 50.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCategorie(),
                    buildCategorie(),
                    buildCategorie(),
                    buildCategorie(),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 230.0),
                    child: Text(
                      'plats',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),
                    ),
                  ),
                  Text(
                    'tout voir',
                    style: TextStyle(color: Colors.blue, fontSize: 14.0),
                  ),
                ],
              ),
              Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildService(),
                    buildService(),
                    buildService(),
                    buildService(),
                    buildService(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCategorie() {
  return Container(
    height: 50.0,
    width: 100.0,
    child: Card(
      elevation: 3.0,
      shadowColor: Colors.blue,
      child: Center(
        child: Text(
          'entrées',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget buildService() {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.0),
    child: Container(
      height: 200.0,
      width: 120.0,
      child: Card(
        elevation: 3.0,
        shadowColor: Colors.blue,
        child: Column(
          children: [
            Container(
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/okok.jpg'),
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text('pommes pilées'),
            SizedBox(
              height: 3.0,
            ),
            Text('1000 FCFA'),
          ],
        ),
      ),
    ),
  );
}
