
import 'package:flutter/material.dart'; // import package

void main() { 
  //menjalankan method runapp yang didalamnya
  // terdapat class yang dijalankan method runapp
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Routing Navigation',
    initialRoute: '/', //digunakan unutk default yang pertama kali 
    routes: { // berisi daftar nama route untuk   setiap halaman
      '/' : (context) => MyApp(),
      HalamanKedua.routeName : (context) => HalamanKedua(),
    },
  )); //membuat routing 
}

class MyApp extends StatelessWidget { //class myapp turunan dari stlwidget 
  @override 
  // penggunaan nama class yang sama
  Widget build(BuildContext context) { // metod build dari stl widget , metod akan mengembalikan sebuah widget yang merupakan tampilan dari stl widget  
    var appBar2 = AppBar(
          //didalanya terdapat properti titlle 
          title:Text(
            //memberi text pada appbar
            'Apk AirSuDekat - SDGS 6',
            //memberi styling appbar
            style: TextStyle(
              fontWeight:FontWeight.bold,
              ),
          ),
          // dengan widget teks
          
          
        centerTitle: true,// membuat posisi titile ke tengah
        backgroundColor: Colors.tealAccent[400],// merubah warna
          
        
        );
    return MaterialApp( //mengermbalikan materialapp yang berisi materialapp
      home: Scaffold(
        //properti appbar yang  memiliki widget appbar
        appBar: appBar2,
        body:
        // padding: EdgeInsets.fromLTRB(5,10, 5, 10),//memberi padding
        
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
              children: <Widget> [
                Text('Moh. Sholihul Fauzan - 182410102014'),
                Text('Arif Nurul Rahman H. - 182410102015'),
                Text('Agustian Armando - 182410102057'),
                //membuat text 
                RaisedButton(// membuat tombol
                  child: Text('Tekan aja dah'),
                  onPressed: (){
                    Navigator.pushNamed(context, HalamanKedua.routeName);// menuju halama kedua
                  },

                ),
              ],

            ),
          
          ) , 

        
        
        
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget { //class HalamanKedua turunan dari stlwidget 
static const String routeName ='/HalamanKedua';
  @override 
  // penggunaan nama class yang sama
  Widget build(BuildContext context) { // metod build dari stl widget , metod akan mengembalikan sebuah widget yang merupakan tampilan dari stl widget  
    var appBar2 = AppBar(
          //didalanya terdapat properti titlle 
          title:Text(
            //memberi text pada appbar
            'Jeng Jeng !!!',
            //memberi styling appbar
            style: TextStyle(
              fontWeight:FontWeight.bold,
              ),
          ),
          // dengan widget teks
          
          
        centerTitle: true,// membuat posisi titile ke tengah
        backgroundColor: Colors.tealAccent[400],// merubah warna
          
        
        );
    return MaterialApp( //mengermbalikan materialapp yang berisi materialapp
      home: Scaffold(
        //properti appbar yang  memiliki widget appbar
        appBar: appBar2,
        body:
        // padding: EdgeInsets.fromLTRB(5,10, 5, 10),//memberi padding
        
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
              children:  [
                Text('ZONk !'),
                //membuat text
                RaisedButton( // membuat tombol
                  child: Text('Balek dah'),
                  onPressed: (){
                    Navigator.pop(context); // kembali ke halaman sebelumnya
                  },

                ), 
              ],

            ),
          
          ) , 

        
        
        
      ),
    );
  }
}
