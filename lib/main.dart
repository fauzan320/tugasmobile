import 'package:flutter/material.dart'; // import package

void main() { 
  //menjalankan method runapp yang didalamnya
  // terdapat class yang dijalankan method runapp
  runApp(MyApp()); 
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
        backgroundColor: Colors.tealAccent[4  00],// merubah warna
          
        
        );
    return MaterialApp( //mengermbalikan materialapp yang berisi materialapp
      home: Scaffold(
        //properti appbar yang  memiliki widget appbar
        appBar: appBar2,
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
            children:  [
              Text('Moh. Sholihul Fauzan - 182410102014'),
              Text('Arif Nurul Rahman H. - 182410102015'),
              Text('Agustian Armando - 182410102057'),
              //membuat text 
            ],

          ),
        ) , 
        
      ),
    );
  }
}

