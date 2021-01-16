
// import 'dart:html';

import 'package:flutter/material.dart'; // import package
import 'package:projectawal/Screens/contact.dart';
import 'package:projectawal/Screens/daftar.dart';
import 'package:projectawal/Screens/list_user/list.dart';
import 'package:projectawal/Screens/camera/camera.dart';
import 'package:projectawal/components/rounded_button.dart';
import 'package:projectawal/Screens/about.dart';
import 'package:projectawal/Screens/contact.dart';
import 'package:projectawal/Screens/Login/login_screen.dart';

class Dashboard extends StatefulWidget{
  @override
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:Text(
            //memberi text pada appbar
            'Apk AirSuDekat - SDGS 6',
            //memberi styling appbar
            style: TextStyle(
              fontWeight:FontWeight.bold,
              color: Colors.white
              
              // color: Colo,
              ),
            
          ),
        centerTitle: true,// membuat posisi titile ke tengah
        backgroundColor: Colors.tealAccent[400],// merubah warna
        
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text ('Fauzan',style: TextStyle(
              fontWeight:FontWeight.bold,
              color: Colors.white
              
              // color: Colo,
              ),),
              accountEmail: new Text ('sudekat@gmail.com',
              style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.white
              
              // color: Colo,
              ),),
              currentAccountPicture: new CircleAvatar(
                backgroundImage:new NetworkImage('https://i.pravatar.cc/150?img=4'),

              ),
              ),
              new ListTile(
                leading: new IconButton(icon: new Icon(Icons.perm_device_information,color: Colors.greenAccent), onPressed: () {},),
                title: new Text('About',style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.greenAccent
              
              // color: Colo,
              ),),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=> new AboutPage())
                  );
                },
              ),
              new ListTile(
                leading: new IconButton(icon: new Icon(Icons.app_registration,color: Colors.greenAccent), onPressed: () {},),
                title: new Text('Daftar',style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.greenAccent
              
              // color: Colo,
              ),),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=> new Daftar())
                  );
                },
              ),
              new ListTile(
                leading: new IconButton(icon: new Icon(Icons.list_alt_outlined,color: Colors.greenAccent), onPressed: () {},),
                title: new Text('List Pendaftar',style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.greenAccent
              
              // color: Colo,
              ),),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=> new IndexPage())
                  );
                },
              ),
              new ListTile(
                
                leading: new IconButton(icon: new Icon(Icons.camera ,color: Colors.greenAccent), onPressed: () {},),
                title: new Text('camera',style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.greenAccent
              
              // color: Colo,
              ),),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=> new CameraScreen())
                  );
                },
              ),
              new ListTile(
                
                leading: new IconButton(icon: new Icon(Icons.contact_mail_rounded, color: Colors.greenAccent), onPressed: () {},),
                title: new Text('Contact-Us',style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.greenAccent
              
              // color: Colo,
              ),),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=> new ContactPage())
                  );
                },
              ),
              new ListTile(
                
                leading: new IconButton(icon: new Icon(Icons.logout ,color: Colors.greenAccent), onPressed: () {},),
                title: new Text('Log-out',style: TextStyle(
              // fontWeight:FontWeight.bold,
              color: Colors.greenAccent
              
              // color: Colo,
              ),),
                onTap:() {
                  Navigator.of(context).pop();
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context)=> new LoginScreen())
                  );
                },
              ),
          ],
        ),
      ),
      // backgroundColor: Colors.tealAccent[400],// merubah warna
      body:
        // padding: EdgeInsets.fromLTRB(5,10, 5, 10),//memberi padding
        
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
              children: <Widget> [
                Text('Pendaftaran air bersih ke desa',style: TextStyle(fontSize: 17),),
                Text(''),
                Text('Daftarkan desa anda jika benar-benar ', style: TextStyle(color: Colors.grey),),
                Text('membutuhkan Bantuan AIR (PDAM/Sumur)', style: TextStyle(color: Colors.grey),),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/sudekat.png",
                
              ),
            ),
            
            RoundedButton(
                text: "Daftar",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Daftar();
                      },
                    ),
                  );
                },
                ), 
              ],

            ),
          
          ) , 
    );
    
  }
}




// class dashboard extends StatelessWidget { //class dashboard turunan dari stlwidget 
//   @override 
//   // penggunaan nama class yang sama
//   Widget build(BuildContext context) { // metod build dari stl widget , metod akan mengembalikan sebuah widget yang merupakan tampilan dari stl widget  
//     var appBar2 = AppBar(
//           //didalanya terdapat properti titlle 
//           title:Text(
//             //memberi text pada appbar
//             'Apk AirSuDekat - SDGS 6',
//             //memberi styling appbar
//             style: TextStyle(
//               fontWeight:FontWeight.bold,
//               ),
            
//           ),
//           // dengan widget teks
          
          
//         centerTitle: true,// membuat posisi titile ke tengah
//         backgroundColor: Colors.tealAccent[400],// merubah warna
          
        
//         );
//     return MaterialApp( //mengermbalikan materialapp yang berisi materialapp
//       home: Scaffold(
//         //properti appbar yang  memiliki widget appbar
//         appBar: appBar2,
//         body:
//         // padding: EdgeInsets.fromLTRB(5,10, 5, 10),//memberi padding
        
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
//               children: <Widget> [
//                 Text('Pendaftaran air bersih ke desa'),
//           Positioned(
//             top: 0,
//             left: 0,
//             child: Image.asset(
//               "assets/images/sudekat.png",
              
//             ),
//           ), 
//                 //membuat text 
//               RoundedButton(
//               text: "Daftar",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return Daftar();
//                     },
//                   ),
//                 );
//               },
//               ),
//               RoundedButton(
//               text: "List Pendaftar",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return IndexPage();
//                     },
//                   ),
//                 );
//               },
//               ),
//               RoundedButton(
//               text: "camera",
//               press: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
//                       return CameraScreen();
//                     },
//                   ),
//                 );
//               },
//               ),
//                 // RaisedButton(// membuat tombol
//                 //   child: Text('DAFTAR'),
//                 //   onPressed: (){
//                 //     Navigator.pushNamed(context, HalamanKedua.routeName);// menuju halama kedua
//                 //   },

//                 // ),
//               ],

//             ),
          
//           ) , 

        
        
        
//       ),
//     );
//   }
// }

//  class sidemenu extends dashboard{
//    @override
//    Widget build(BuildContext){
//       return new Scaffold(

//       );
//    }
//  }
// class HalamanKedua extends StatelessWidget { //class HalamanKedua turunan dari stlwidget 
// static const String routeName ='/HalamanKedua';
//   @override 
//   // penggunaan nama class yang sama
//   Widget build(BuildContext context) { // metod build dari stl widget , metod akan mengembalikan sebuah widget yang merupakan tampilan dari stl widget  
//     var appBar2 = AppBar(
//           //didalanya terdapat properti titlle 
//           title:Text(
//             //memberi text pada appbar
//             'FORM Pendaftaran ',
//             //memberi styling appbar
//             style: TextStyle(
//               fontWeight:FontWeight.bold,
//               ),
//           ),
//           // dengan widget teks
          
          
//         centerTitle: true,// membuat posisi titile ke tengah
//         backgroundColor: Colors.tealAccent[400],// merubah warna
          
        
//         );
//     return MaterialApp( //mengermbalikan materialapp yang berisi materialapp
//       home: Scaffold(
//         //properti appbar yang  memiliki widget appbar
//         appBar: appBar2,
//         body:
//         // padding: EdgeInsets.fromLTRB(5,10, 5, 10),//memberi padding
        
//           Center(
//             child: Column(
              
//               mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
//               children:  [
//                 Text('Fitur belum tersedia'),
//                 Text('Maaf masih baru belajar'),
//                 //membuat text
//                 RaisedButton( // membuat tombol
//                   child: Text('Kembali'),
//                   onPressed: (){
//                     Navigator.pop(context); // kembali ke halaman sebelumnya
//                   },
                

//                 ), 
//               ],

//             ),
          
//           ) , 

        
        
        
//       ),
//     );
//   }
// }
