import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
                  
                  
                  fillColor:Colors.white70, //setting the fill color
                  filled:true, //ensuring that we view the effect
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.white,width:2.0) //setting the effects of the border when it isn't selected
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color: Colors.blueAccent,width:0.80) //setting the effects of the border when it is now selected
                  ),
                );