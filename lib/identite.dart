import 'package:flutter/material.dart';
 
 
 
 class Identite extends StatefulWidget {
   const Identite({ Key? key }) : super(key: key);
 
   @override
   State<Identite> createState() => _IdentiteState();
 }
 
 class _IdentiteState extends State<Identite> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title:Text("INDENTIFICATION ETUDIANT"),
         backgroundColor: Colors.orangeAccent,
       ),
       body: ListView(
         children: [
          new  TextField(
            
            controller: null,
            decoration:InputDecoration(
              labelText: "name",
              hintText: "Entrer votre nom",
              fillColor: Colors.deepOrange,
              focusColor:  Colors.deepOrange,
            )
          ),
          SizedBox(width:30,height:30),
                new  TextField(
            controller: null,
            decoration:InputDecoration(
              labelText: "Adresse",
              hintText: "Entrer votre Adresse",
            )
          ),
            SizedBox(width:30,height:30),
                new  TextField(
            controller: null,
            keyboardType: TextInputType.number,
            enabled: true,
            decoration:InputDecoration(
              labelText: "Telephone",
              hintText: "Entrer votre Telephone",
            )
          ),
  SizedBox(width:30,height:30),
          RaisedButton(onPressed: (){},
          child: Text("Enregistrer"),
          color:Colors.orangeAccent,),
          
  SizedBox(width:30,height:30),

            RaisedButton(onPressed: (){
               Navigator.pushNamed(context, '/RCalculatrice');
            },
          child: Text("Voir Calculatrice"),
          color:Colors.orangeAccent,),    
              
           

         ],
       ),
     );
   }
 }