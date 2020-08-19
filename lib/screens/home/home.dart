import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sasanya/models/user.dart';
import 'package:sasanya/screens/authenticate/login.dart';
import 'package:sasanya/screens/shopping_pages/car1.dart';
import 'package:sasanya/screens/shopping_pages/iphone8.dart';
import 'package:sasanya/screens/shopping_pages/laptop1.dart';
import 'package:sasanya/screens/shopping_pages/menfashion.dart';


import 'package:sasanya/screens/shopping_pages/officechair.dart';
import 'package:sasanya/screens/shopping_pages/womanfash.dart';
import 'package:sasanya/services/auth.dart';
import 'package:sasanya/shared/image_banner.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  final LoginPage inst =LoginPage();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(colors: [Colors.black,Colors.red,Colors.purple,Colors.blue,Colors.green,Colors.yellow])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
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
                        RaisedButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MenFashion()));
                           

                          },
                          child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                        
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
                        RaisedButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WomanFash()));
                          },
                          child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                        
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
                        RaisedButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>OfficeChairs()));
                          },child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                        
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
                        RaisedButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Iphone8()));
                          },child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                        
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
                        RaisedButton(
                          onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Laptop1()));
                          },child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                        
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
                        RaisedButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Car1()));
                        },child:Text('Go',style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.black)),),color: Colors.blue,)
                        
                      ]
                    ),
                  ),
                ),
              ),
           
          
             
         

            ],
          ),
        ),
        drawer: Drawer(
          child:Container(
            decoration: BoxDecoration(
              gradient:LinearGradient(colors:[Colors.black,Colors.red,Colors.purple,Colors.indigo])
            ),
                      child: ListView(
              children: [
                DrawerHeader(
                  child: Text("Your ID: ${user.uid}",style: TextStyle(color:Colors.white,fontSize:15),),
                  decoration: BoxDecoration(
                    gradient:LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime])
                  ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:BoxDecoration(
                      
                      
                      gradient: LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime]),
                    ),
                    child: ListTile(
                        title: Text("Men's fashion",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color:Colors.white))),
                        
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MenFashion()));
                        }
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:BoxDecoration(
                      
                      
                      gradient: LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime]),
                    ),
                    child: ListTile(
                      title: Text("Women's fashion",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white))),
                      
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WomanFash()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     decoration:BoxDecoration(
                      
                      
                      gradient: LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime]),
                    ),

                    child: ListTile(
                      title: Text("Home and Office",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color:Colors.white))),
                      
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OfficeChairs()));
                      },
                    ),
                  ),
                ),
                Padding(
                  
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     decoration:BoxDecoration(
                      
                      
                      gradient: LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime]),
                    ),
                    child: ListTile(
                      title: Text("Smartphones",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white))),
                      
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Iphone8()));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     decoration:BoxDecoration(
                      
                      
                      gradient: LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime]),
                    ),
                    child: ListTile(
                      title: Text("Laptops",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white))),
                      
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Laptop1()));
                      },
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     decoration:BoxDecoration(
                      
                      
                      gradient: LinearGradient(colors: [Colors.blue,Colors.green,Colors.lime]),
                    ),
                    child: ListTile(
                      title: Text("Cars",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white))),
                      
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Car1()));
                      },
                    ),
                  ),
                ),
               
                
                
              

              ],
            ),
          )
        ),

      ),
    );
  }
}