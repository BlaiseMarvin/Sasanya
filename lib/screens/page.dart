import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black,
      title: Text('About This App', style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.white))

      

    ),
       ),

    body: Stack(
      fit: StackFit.expand,
              children: [Image.asset("assets/images/image4.jpg",fit: BoxFit.cover,color: Colors.black.withOpacity(0.7),colorBlendMode:BlendMode.darken,), 

          

            Container(

          
             
              child: SingleChildScrollView(
            
                
                            child: Center(

              child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       
                       
                       // child: Container(
                          
                        // decoration:BoxDecoration(
                          
                          
                         // gradient: LinearGradient(colors: [Colors.red,Colors.pink,Colors.yellow]),
                       // ),
                                              child: Column(
                             

                    children: <Widget>[
                      
                      
                      
                       Text('Sasanya is a trade and Barter App for different items and services, with a social and environmental cause. \n You can trade items and services without having to spend a dollar in the process. ', style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.white)),),
                      Text('There is a tone of secondhand marketplaces out there but there is very few that do it well. \n Instead of limiting you to only buying, Sasanya offers a user friendly interface to trade and barter.', style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20,color:Colors.white)), ),
                  
                    ListTile(
                               leading:  CircleAvatar(
                      backgroundImage: AssetImage("assets/images/bulbtwo.jpg"),
                    )            ,
                               title: Text("Nakitto Gloria Dorcus", style: TextStyle(color: Colors.white)),
                               subtitle: Text("Developer",style: TextStyle(color: Colors.white)),
                               
                             ),
                             ListTile(
                               leading: Icon(Icons.email),
                               title: Text("email",style: TextStyle(color: Colors.white)),
                               subtitle: Text("glorianakitto2@gmail.com",style: TextStyle(color: Colors.white)),
                               
                             ),
                             ListTile(
                               leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/blaise.jpg"),
                    )            ,
                               title: Text("Rusoke Blaise Marvin",style: TextStyle(color: Colors.white)),
                               subtitle: Text("Developer",style: TextStyle(color: Colors.white)),
                               
                             ),
                             ListTile(
                               leading: Icon(Icons.email),
                               title: Text("email",style: TextStyle(color: Colors.white)),
                               subtitle: Text("blaisemavin@gmail.com",style: TextStyle(color: Colors.white)),
                               
                             ),
                  
                    ]
                  
            ),
                        ),
              ),

            ),
                ),
              ]),
    );
  
     
   
    
  }
}