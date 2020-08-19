import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sasanya/models/user.dart';
import 'package:sasanya/screens/home/home.dart';
import 'package:sasanya/screens/shopping_pages/laptop2.dart';


import 'package:sasanya/shared/image_banner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

import 'package:sasanya/shared/loading.dart';


class Laptop1 extends StatefulWidget {
  @override
  _Laptop1State createState() => _Laptop1State();
}

class _Laptop1State extends State<Laptop1> {
  File _imageFile;
  bool _uploaded=false;
  bool loading=false;
  //String _downloadUrl;
  
  
  @override
  Widget build(BuildContext context) {
  final user = Provider.of<User>(context);
  StorageReference _reference = FirebaseStorage.instance.ref().child('${DateTime.now().millisecondsSinceEpoch}-${user.uid}.jpg');
  Future getImage(bool isCamera) async
  {
    File image;
    if(isCamera)
    {
      image=await ImagePicker.pickImage(source: ImageSource.camera);

    } else{
      image=await ImagePicker.pickImage(source: ImageSource.gallery);
    }
    setState(() {
      _imageFile=image;
    });
  }
  Future uploadImage() async
  {
    
    StorageUploadTask uploadTask = _reference.putFile(_imageFile);
    StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
    setState(() {
      _uploaded=true;
      loading=false;
    });
  }
  /*Future downloadImage() async
  {
    String downloadAddress = await _reference.getDownloadURL();
    setState(() {
      _downloadUrl=downloadAddress;
    });

  }*/





    return loading?Loading():Container(
      decoration: BoxDecoration(
        gradient:LinearGradient(colors: [Colors.black,Colors.purple,Colors.blue,Colors.green,Colors.lime])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title:Text("Laptops",textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:30,color: Colors.white)),),
          actions: [
            FlatButton.icon(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            }, icon: Icon(Icons.home), label: Text("Home",style:TextStyle(color:Colors.white)))
          ],
        ),
        body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
            children: [
              Container(
                  child:Card(
                    
                    child: Column(
                      children: [
                        SizedBox(height: 10.0),
                        Text("Elegant Microsoft surface",textAlign: TextAlign.center,style: GoogleFonts.bangers(textStyle:TextStyle(fontWeight:FontWeight.bold,fontSize:25,color: Colors.black)),),
                        SizedBox(height: 5.0,),
                        ImageBanner("assets/images/macpro.jpg"),
                        SizedBox(height:20.0 ),
                        Text("Choose item, that you'd want to exchange this computer for. ",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,)),),
                        Text("Successful bidders will be contacted via email",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.black)),),
                        SizedBox(height: 10.0,),
                        Text("Remember to click next, to continue in this section",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.black)),),
                        

                        Row(
                          children: [
                            SizedBox(width: 10.0),
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: (){
                                getImage(true);
                              },
                              child: Text("Camera",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white)),),
                              ),
                            SizedBox(width:120.0 ),
                            RaisedButton(
                              color: Colors.blue,
                              onPressed: (){
                                getImage(false);
                              },
                              child: Text("Gallery",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white)),),
                              ),]
                        ),
                        _imageFile ==null?Container():Container(
                          child: Column(
                            children: [
                              Image.file(_imageFile,height: 300.0,width: 300.0,),
                              Text("Upload your bid to storage and WAIT for the confirmation message before continuing",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white)),),
                            ],
                          )),
                        
                        _imageFile==null?Container(): RaisedButton(
                          color: Colors.blue,
                          onPressed: (){
                            setState(()=>loading=true);
                            uploadImage();
                          },
                          child: Text("Upload your bid to storage",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white)),),
                          
                          ),
                        _uploaded==false?Container():Text("Your bid has been logged, thank's for trading with us",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize: 20)),)
                        /*RaisedButton(
                          child: Text("Download Image",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,)),),
                          onPressed:(){
                           // downloadImage();
                          },

                           ),*/
                         // _downloadUrl==null?Container():Image.network(_downloadUrl),


                        

                      ],
                    ),)
              ),
              RaisedButton(
                  color: Colors.red,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Laptop2()));
                  },
                  child: Text("Next",textAlign: TextAlign.center,style: GoogleFonts.pacifico(textStyle:TextStyle(fontSize:20,color: Colors.white)),),
                  ),
                  
             
            ],
          ),
                ),
        ),
      ),
    );
  }
}