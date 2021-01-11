import 'package:flutter/material.dart'; // import package
import 'package:projectawal/Screens/dashboard.dart';
import 'package:projectawal/components/rounded_button.dart';

class Daftar extends StatefulWidget { //class HalamanKedua turunan dari stlwidget 
  @override
  _HomeState createState()=> new _HomeState();
}

class _HomeState extends State<Daftar> {
  static const String routeName ='/daftar';

  String _JenisBantuan="";

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerNomor = new TextEditingController();
  TextEditingController controllerRTRW = new TextEditingController(); 
  TextEditingController controllerAlamat = new TextEditingController();
  
  void _PilihBantuan(String value){
    setState(() {
      _JenisBantuan=value;
    });
  }

  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content:new Container(
        height : 300.0,
        child :new Column (
          children :<Widget>[
            new Text("Nama Lengkap : ${controllerNama.text}"),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new Text("Nomor Telepon : ${controllerNomor.text}"),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new Text("RT/RW: ${controllerRTRW.text}"),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new Text("Alamat : ${controllerAlamat.text}"),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            new Text("Jenis Bantuan : $_JenisBantuan"),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
            // new RaisedButton(
            //   child: new Text("Kirim"),
            //   onPressed: ()=> Navigator.push(dashboard()))
            //   )
            RoundedButton(
              text: "Daftar",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return dashboard();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
    showDialog(context: context,child:alertDialog );
  }

  @override 
  // penggunaan nama class yang sama
  Widget build(BuildContext context) { // metod build dari stl widget , metod akan mengembalikan sebuah widget yang merupakan tampilan dari stl widget  
    var appBar2 = AppBar(
          //didalanya terdapat properti titlle 
          
          title:Text(
            //memberi text pada appbar
            'FORM Pendaftaran ',
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
        body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              new TextField(
                controller: controllerNama,
                decoration : new InputDecoration (
                  hintText:"Nama Lengkap Pengaju",
                  labelText: "Nama lengkap",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)

                  )

                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                controller: controllerNomor,
                decoration : new InputDecoration (
                  hintText:"Nomer Telfon",
                  labelText: "Nomer Telfon",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)

                  )

                ),
              ),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                controller: controllerRTRW,
                decoration : new InputDecoration (
                  hintText:"RT/RW",
                  labelText: "RT/RW",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)

                  )

                ),
              ),
            new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                controller: controllerAlamat,
                decoration : new InputDecoration (
                  hintText:"Alamat",
                  labelText: "Alamat",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)

                  )

                ),
              ),
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new TextField(
                maxLines: 4,
                decoration : new InputDecoration (
                  hintText:"Keterangan",
                  labelText: "Keterangan",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)

                  )

                ),
              ),
            
              new Padding(padding: new EdgeInsets.only(top: 20.0),),
              new RadioListTile(
                value: "Sumur",
                title: new Text("sumur"),
                groupValue: _JenisBantuan, 
                onChanged: (String value){
                    _PilihBantuan(value);
                },
                activeColor: Colors.tealAccent[400],
                subtitle: new Text("Pilih ini Jika Pembuatan Sumur memungkinkan"),
                ),

              new RadioListTile(
                value: "PDAM",
                title: new Text("PDAM"),
                groupValue: _JenisBantuan, 
                onChanged: (String value){
                    _PilihBantuan(value);
                },
                activeColor: Colors.tealAccent[400],
                subtitle: new Text("Pilih ini Jika Pembuatan Sumur TIDAK memungkinkan"),
                ),
            
              new Padding(padding: new EdgeInsets.only(top: 20.0),),

              new RaisedButton(
                child: new Text("OK"),
                color: Colors.tealAccent[400],
                onPressed: () {  kirimdata();},
                
              )

            
            ],
          ),

        ) 
        // padding: EdgeInsets.fromLTRB(5,10, 5, 10),//memberi padding
        
          // Center(
          //   child: Column(
              
          //     mainAxisAlignment: MainAxisAlignment.center, // membuat posisi tengah vertikal
          //     children:  [
              
          //       //membuat text
          //       RaisedButton( // membuat tombol
          //         child: Text('Kembali'),
          //         onPressed: (){
          //           Navigator.pop(context); // kembali ke halaman sebelumnya
          //         },
                

          //       ), 
          //     ],

          //   ),
          
          // ) , 

        
        
        
      ),
    );
  }
}

class extend {
}
