// ignore_for_file: use_key_in_widget_constructors

import 'buttons.dart';
import 'package:flutter/material.dart';
class NameList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
     SingleChildScrollView (child: Column(children: const [
          Buttons(btnName:"Abdu", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Abel", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Biniam", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Bana", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Christina", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Daniel", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Feysel", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Genet", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"henos", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Isaias", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Ismael", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Jolly", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Kevin", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
          Buttons(btnName:"Luam", btnColor: Colors.white,txtColor: Colors.blueAccent,width: 500,height: 50,),
      ],
    ),
    ),

   
    );
    
  }
}
//Reusable button
