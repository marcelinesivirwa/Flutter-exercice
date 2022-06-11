import 'package:flutter/material.dart';


class Cotation extends StatefulWidget {
  const Cotation({ Key? key }) : super(key: key);

  @override
  State<Cotation> createState() => _CotationState();
}

class _CotationState extends State<Cotation> {
  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

TextEditingController txtMath = new TextEditingController();
TextEditingController txtInfo = new TextEditingController();
TextEditingController txtProg = new TextEditingController();
TextEditingController txtStat = new TextEditingController();
TextEditingController txtPourcentage = new TextEditingController();
TextEditingController txtMention = new TextEditingController();

void pourcentage(){
     double mat = double.parse(txtMath.text);
     double info = double.parse(txtInfo.text);
     double prot = double.parse(txtProg.text);
     double stat = double.parse(txtStat.text);

  txtPourcentage.text= (((mat+info+prot+stat)/200)*100).toString();

 double pourc =  double.parse(txtPourcentage.text);


if(mat>40 || info>30 || prot>60 || stat>70){
 txtMention.text="verifiez les max";
  txtPourcentage.text="verifiez les max";
}else{
  if(pourc<40){
    txtMention.text="NAF";
  }else if(pourc>=41 && pourc<=49){
    txtMention.text="ECHEC";
  }else if(pourc>=50 && pourc<=69){
     txtMention.text="SATISFACTION";
  }else if(pourc>=70 && pourc<=79){
     txtMention.text="DISTINCTION";
  }else if(pourc>=80 && pourc<=90){
    txtMention.text="G-DISTINCTION";
  }
  else if(pourc>=91 && pourc<=100){
    txtMention.text="SURDOUE";
  }else{
      txtMention.text="mention invalide";
  }
}

}


  @override
  Widget build(BuildContext context) {
      return Scaffold(
       appBar: AppBar(
         title:Text("COTATION ETUDIANT"),
         backgroundColor: Colors.orangeAccent,
       ),
       
       body:
        Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Scrollbar(
              isAlwaysShown: _isAlwaysShown,
              showTrackOnHover: _showTrackOnHover,
              hoverThickness: 30.0,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) => Column(
                  children:[
   SizedBox(width:30,height:30),
       Row(
        children: [
      ContaintTextL("Math/40", "Math","nonOk"),
           SizedBox(width:30,height:30),
      ContaintText("Point obtenue","Point obtenue","ok",txtMath),
      ],
      ),
       SizedBox(width:30,height:30),
       Row(
        children: [
      ContaintTextL("Programmation/60", "Programmation","nonOk"),
           SizedBox(width:30,height:30),
      ContaintText("Point obtenue","Point obtenue","ok",txtProg),
      ],
      ),
              SizedBox(width:30,height:30),
      Row(
        children: [
      ContaintTextL("Statisque/70","Statisque","nonOk"),
           SizedBox(width:30,height:30),
       ContaintText("Point obtenue", "Point obtenue","ok",txtStat),
      ],
      ),
                SizedBox(width:30,height:30),
Row(
        children: [
      ContaintTextL("Informatique/30","Informatique","nonOk"),
     SizedBox(width:30,height:30),
      ContaintText("Point obtenue","Point obtenue","ok",txtInfo),

  ],
  
      ),
SizedBox(width:30,height:30),
            RaisedButton(onPressed: (){ pourcentage(); },
          child: Text("Calculer"),
          color:Colors.orangeAccent,),
      SizedBox(width:30,height:30),
        Row(
        children: [
      ContaintText("Poucentage","Poucentage","nonOk",txtPourcentage),
     SizedBox(width:30,height:30),
      ContaintText("Mention obtenue","Mention obtenue","nonOk",txtMention),

  ],
  
      ),
        
        
          ],


                
       
                ),
              ),
            ),
          ),
          Divider(height: 1),
        ],
//           children:[
//    SizedBox(width:30,height:30),
//        Row(
//         children: [
//       ContaintTextL("Math/40", "Math","nonOk"),
//            SizedBox(width:30,height:30),
//       ContaintText("Point obtenue","Point obtenue","ok",txtMath),
//       ],
//       ),
//        SizedBox(width:30,height:30),
//        Row(
//         children: [
//       ContaintTextL("Programmation/60", "Programmation","nonOk"),
//            SizedBox(width:30,height:30),
//       ContaintText("Point obtenue","Point obtenue","ok",txtProg),
//       ],
//       ),
//               SizedBox(width:30,height:30),
//       Row(
//         children: [
//       ContaintTextL("Statisque/70","Statisque","nonOk"),
//            SizedBox(width:30,height:30),
//        ContaintText("Point obtenue", "Point obtenue","ok",txtStat),
//       ],
//       ),
//                 SizedBox(width:30,height:30),
// Row(
//         children: [
//       ContaintTextL("Informatique/30","Informatique","nonOk"),
//      SizedBox(width:30,height:30),
//       ContaintText("Point obtenue","Point obtenue","ok",txtInfo),

//   ],
  
//       ),
// SizedBox(width:30,height:30),
//             RaisedButton(onPressed: (){ pourcentage(); },
//           child: Text("Calculer"),
//           color:Colors.orangeAccent,),
//       SizedBox(width:30,height:30),
//         Row(
//         children: [
//       ContaintText("Poucentage","Poucentage","nonOk",txtPourcentage),
//      SizedBox(width:30,height:30),
//       ContaintText("Mention obtenue","Mention obtenue","nonOk",txtMention),

//   ],
  
//       ),
        
        
//           ],


                
       
 
        ),
     );
  }
}


  
       Widget ContaintTextL(String label, String hintText,String ok){

    return   Container(
           width: 150,
            color: Colors.greenAccent,
            child: TextField(
            
            controller: null,
            decoration:InputDecoration(
              enabled: ok=="ok"?true:false,
              labelText: label,
              hintText: hintText,
              fillColor: Colors.deepOrange,
              focusColor:  Colors.deepOrange,
            )
          ),
    );
     }
     
     Widget ContaintText(String label, String hintText,String ok,TextEditingController txt){

    return   Container(
           width: 150,
            color: Colors.greenAccent,
            child: TextField(
            
            controller: txt,
            decoration:InputDecoration(
              enabled: ok=="ok"?true:false,
              labelText: label,
              hintText: hintText,
              fillColor: Colors.deepOrange,
              focusColor:  Colors.deepOrange,
            )
          ),
    );
     }
        
          
        
