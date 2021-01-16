import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:projectawal/Screens/list_user/color.dart';
class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage>{  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.home, color: Colors.white), onPressed: () { 
          Navigator.pop(context);
         },),
        title: new Text('Contact-Us',
        style: TextStyle(
              fontWeight:FontWeight.bold,
              color: Colors.white
              
              // color: Colo,
              ),
      ),
        

        centerTitle: true,// membuat posisi titile ke tengah
        backgroundColor: Colors.tealAccent[400],// merubah warna
      ),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: 
          Center(
            child: Padding (
              padding: const EdgeInsets.all(20.0),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
              children: <Widget> [
                Text('Disusun Oleh :', style: TextStyle(color: Colors.grey),),
                Text(''),
                Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://i.pravatar.cc/150?img=4'),
                  )
                ),
              ),
                Text('Moh. Sholihul Fauzan',style: TextStyle(fontSize: 17),),
                Text('182410102014/solihulfauzan@gmail.com', style: TextStyle(color: Colors.grey),),
                Text(''),
                Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://i.pravatar.cc/150?img=8'),
                  )
                ),
              ),
                Text('Arif Nurul Rahman H.',style: TextStyle(fontSize: 17),),
                Text('182410102015/zibondevidgram@gmail.com', style: TextStyle(color: Colors.grey),),
                Text(''),
                Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    // image: Image.asset('assets/images'),
                    image: NetworkImage('https://i.pravatar.cc/150?img=7'),
                  )
                ),
              ),
                Text('Agustian Armando',style: TextStyle(fontSize: 17),),
                Text('182410102057/agustianarmando@gmail.com', style: TextStyle(color: Colors.grey),) 
                
              ],
              
            ),
            ),
            
          ) ,
                
    );
  }
  Widget getCard(){
    // ResizeObserverEntry=20,
    return Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://i.pravatar.cc/150?img=4'),
                  )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width-140,
                    child: Text('Moh. Sholihul Fauzan',style: TextStyle(fontSize: 17),)),
                  SizedBox(height: 10,),
                  Text('solihulfauzan@gmail.com', style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
        ),
        
      ),
    );
    
  }
}