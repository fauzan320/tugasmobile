import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:projectawal/Screens/list_user/color.dart';
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>{  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.home, color: Colors.white), onPressed: () { 
          Navigator.pop(context);
         },),
        title: new Text('About Page',
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
                Text('          Aplikasi Airsudekat digunakan untuk mewujudkan SDGs No 6 yakni air bersih dan sanitasi dengan tujuan utama menjamin ketersediaan air bersih dan sanitasi yang berkelanjutan untuk semua orang, Dimana aplikasi ini menargetkan daerah-daerah yang berada di jember yang masih mengalami kesulitan air bersih.'),
                Text('          Meskipun kota Jember sudah bisa terbilang kota maju tapi masih tidak terlepas dengan kesulitan air bersih di beberapa desanya contohnya di daerah Desa Pelalangan, Kecamatan Kalisat masih mengalami kesulitan air bersih.'),
                Text('          Solusi yang kami tawarkan yakni dengan mambuat aplikasi Airsudekat tersebut agar warga yang mengalami permasalahan diatas agar segera tertangani dimana akan mendapatkan bantuan air bersih (pdam / pembangunan sumur) dengan melakukan pendaftaran dan mengirim buktinya berupa hasil foto melalui aplikasi Airsudekat.'),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/sudekat.png",
                    
                  
                  ),
                  
                ),
                // Text('Disusun Oleh :', style: TextStyle(color: Colors.grey),),
                // Text('Moh. Sholihul Fauzan',style: TextStyle(fontSize: 17),),
                // Text('182410102014/solihulfauzan@gmail.com', style: TextStyle(color: Colors.grey),),
                // Text('Arif Nurul Rahman H.',style: TextStyle(fontSize: 17),),
                // Text('182410102015', style: TextStyle(color: Colors.grey),),
                // Text('Agustian Armando',style: TextStyle(fontSize: 17),),
                // Text('182410102087', style: TextStyle(color: Colors.grey),) 
                
              ],
              
            ),
            ),
            
          ) ,
                
    );
  }
}