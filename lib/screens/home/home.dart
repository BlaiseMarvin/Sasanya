import 'package:flutter/material.dart';
import 'package:sasanya/shared/image_banner.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Welcome to Sasanya')
      ),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/fashion.jpg'),
                    SizedBox(height: 10.0),
                    Text('Men\'s Fashion',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5),
                    Text("Need suit real fast with no ka money?, exchange something for it"),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/womens.jpg'),
                    SizedBox(height: 10.0),
                    Text('Women\'s Fashion',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("Tired of that guy always finding you in the same blouse?, we've got you"),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/homeoffice.jpg'),
                    SizedBox(height: 10.0),
                    Text('Home and Office',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text('Stop borrowing stationery from your neighbors, about time you got your own'),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),

            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/smartphone.jpg'),
                    SizedBox(height: 10.0),
                    Text('Smartphones',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("Carry an entire mainframe in your pocket"),

                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/laptops.jpg'),
                    SizedBox(height: 10.0),
                    Text('Laptops',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("From MacBooks to Lenovos, just name it and we've got it"),

                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/electronics.jpg'),
                    SizedBox(height: 10.0),
                    Text('Other Electronics',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("Cameras, Headsets, just name it we've got it"),

                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/cars.jpg'),
                    SizedBox(height: 10.0),
                    Text('Cars',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("Exchange that Vitz for a Rangerover today"),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/beauty.jpg'),
                    SizedBox(height: 10.0),
                    Text('Beauty',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("Swap makeup with your girlfriends"),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/collectibles.jpg'),
                    SizedBox(height: 10.0),
                    Text('Collectibles',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("Your art could be worth more than you think"),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/sports.jpg'),
                    SizedBox(height: 10.0),
                    Text('Sports Equipment',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text("We're here to support the next Messi"),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),
            Container(
              child: Card(
                      child: Column(
                  children:[
                    ImageBanner('assets/images/home.jpg'),
                    SizedBox(height: 10.0),
                    Text('Home and Gardening',style: TextStyle(fontWeight:FontWeight.bold,fontSize:30),),
                    SizedBox(height:5.0),
                    Text('Tired of wasting away your days at home?, get digging.'),
                    SizedBox(height: 10.0),
                    RaisedButton(onPressed:(){},child:Text('Go'))
                    
                  ]
                ),
              ),
            ),

          ],
        ),
      ),
      drawer: Drawer(
        child:ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: null, 
              accountEmail: null),
            ListTile(
              title: Text("Men's fashion"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Women's fashion"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Home and Office"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Smartphones"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Laptops"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Other Electronics"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Cars"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Beauty"),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Collectibles"),
              
              onTap: null,
            ),
            ListTile(
              title: Text('Sports Equipment'),
              
              onTap: null,
            ),
            ListTile(
              title: Text('Home and Gardening'),
              onTap: null,
            ),

          ],
        )
      ),

    );
  }
}