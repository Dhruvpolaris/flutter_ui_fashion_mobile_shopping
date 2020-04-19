import 'package:flutter/material.dart';
import './widgets/circular_list.dart';
import './productList.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/pic4.jpeg'),
                        fit: BoxFit.fill)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  padding: EdgeInsets.only(top: 15),
                  color: Colors.white,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: FloatingActionButton(
                    elevation: 0.0,
                    mini: true,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, top: 110.0),
                child: Text(
                  'Woman',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 37.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15),
            child: Text(
              'Cutting-edge items to stay in style, perfect for all of your moments.',
              style: TextStyle(
                fontFamily: 'Quicksand-Light',
                fontSize: 17.0,
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 35.0),
          Container(
            padding: EdgeInsets.only(left: 5.0,right: 5),
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CircularListItem('assets/pic4.jpeg', 'Tees'),
                SizedBox(height: 15.0),
                CircularListItem('assets/pic5.jpeg', 'New'),
                SizedBox(height: 15.0),
                CircularListItem('assets/pic1.jpeg', 'Tops'),
                SizedBox(height: 15.0),
                CircularListItem('assets/pic2.jpeg', 'Skirts'),
                SizedBox(height: 15.0),
                CircularListItem('assets/pic3.jpeg', 'Shirts'),
                SizedBox(height: 15.0),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable:  true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Coats',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Jackets',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Blazers',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Dresses',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 350.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                ProductList(),
                ProductList(),
                ProductList(),
                ProductList(),
                ProductList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
