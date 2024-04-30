import 'package:flutter/material.dart';
import 'package:urun_stok_app/sepet.dart';
import 'package:urun_stok_app/urun_listesi.dart';
import 'package:urun_stok_app/welcome_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

import 'iletisim.dart';
class UrunIslemleri extends StatefulWidget {


  @override
  State<UrunIslemleri> createState() => _UrunIslemleriState();
}

class _UrunIslemleriState extends State<UrunIslemleri> {
  int aktifIndex=0;
  late String ryol;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        onTap: (index) {
          setState(() {
            aktifIndex = index;
            if(aktifIndex==0)
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>WelcomeScreen()),
              );
            }
            else if(aktifIndex==1){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>Iletisim()),
              );
            }
            else if(aktifIndex==2){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>UrunListesi()),
              );
            }
            else{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>Sepet()),
              );
            }
          });
        },
        currentIndex: aktifIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Anasayfa',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'İletişim',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Ürün Listesi',
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: 'Sepet',
              backgroundColor: Colors.teal),
        ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Container(child: Text('Resim Buraya'),width: 150,height: 150,color: Colors.grey,)),
        SizedBox(height: 10,),
        Center(child: FilledButton(onPressed: () async{
          final ImagePicker picker = ImagePicker();
          // Capture a photo.
          final XFile? photo = await picker.pickImage(source: ImageSource.camera);
        }, child: Text('Kameradan Foto Seç'),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),)),
            SizedBox(height: 10,),
        Center(child: FilledButton(onPressed: () async{
          final ImagePicker picker = ImagePicker();
          // Capture a photo.
          final XFile? photo = await picker.pickImage(source: ImageSource.gallery);
          ryol=photo!.path.toString();


        }, child: Text('Galeriden Foto Seç'),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),)),
            SizedBox(height: 10,),
            Text('Ürün Adı:'),TextField(),
            Text('Markası:'),TextField(),
            Text('Adet:'),TextField(),
            Text('Fiyatı:'),TextField(), SizedBox(height: 10,),
            Center(child: FilledButton(onPressed: (){}, child: Text('Kaydet'),style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal)),)),
            SizedBox(height: 10,),


        ],),
      ));
  }
}


