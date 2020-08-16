import 'package:flutter/material.dart';
import 'package:sasanya/services/auth.dart';
import 'package:sasanya/shared/image_banner.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title:Text('Welcome',style:GoogleFonts.bangers(textStyle:TextStyle(fontSize:30)) ),
        actions: [FlatButton.icon(onPressed: () async{await _auth.signOut();}, icon: Icon(Icons.exit_to_app), label: Text("Sign Out",style:GoogleFonts.bangers(textStyle:TextStyle(color: Colors.white,fontSize: 20)) ))],
        
        ),
        
      body: SingleChildScrollView(
              child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/fashion.jpg'),
                      SizedBox(height: 10.0),
                      Text('Men\'s Fashion',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,)),),
                      SizedBox(height:5),
                      Text("Need a suit real fast with no ka money?, exchange something for it",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,)),),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/womens.jpg'),
                      SizedBox(height: 10.0),
                      Text('Women\'s Fashion',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("Tired of that guy always finding you in the same blouse?, we've got you",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/homeoffice.jpg'),
                      SizedBox(height: 10.0),
                      Text('Home and Office',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text('Stop borrowing stationery from your neighbors, about time you got your own',textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/smartphone.jpg'),
                      SizedBox(height: 10.0),
                      Text('Smartphones',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("Carry an entire mainframe in your pocket",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),

                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/laptops.jpg'),
                      SizedBox(height: 10.0),
                      Text('Laptops',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("From MacBooks to Lenovos, just name it and we've got it",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),

                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/electronics.jpg'),
                      SizedBox(height: 10.0),
                      Text('More Electronics',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("Cameras, Headsets, just name it we've got it",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),

                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/cars.jpg'),
                      SizedBox(height: 10.0),
                      Text('Cars',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("Exchange that Vitz for a Rangerover today",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/beauty.jpg'),
                      SizedBox(height: 10.0),
                      Text('Beauty',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("Swap makeup with your girlfriends",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/collectibles.jpg'),
                      SizedBox(height: 10.0),
                      Text('Collectibles',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("Your art could be worth more than you think",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/sports.jpg'),
                      SizedBox(height: 10.0),
                      Text('Sports Equipment',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text("We're here to support the next Messi",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                        child: Column(
                    children:[
                      ImageBanner('assets/images/home.jpg'),
                      SizedBox(height: 10.0),
                      Text('Home and Gardening',textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,))),
                      SizedBox(height:5.0),
                      Text('Tired of wasting away your days at home?, get digging.',textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
                      SizedBox(height: 10.0),
                      RaisedButton(onPressed:(){},child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                      
                    ]
                  ),
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
              title: Text("Men's fashion",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Women's fashion",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Home and Office",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Smartphones",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Laptops",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Other Electronics",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Cars",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Beauty",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text("Collectibles",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text('Sports Equipment',textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              
              onTap: null,
            ),
            ListTile(
              title: Text('Home and Gardening',textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,))),
              onTap: null,
            ),

          ],
        )
      ),

    );
  }
}