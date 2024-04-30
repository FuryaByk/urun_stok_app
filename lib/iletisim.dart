import 'package:flutter/material.dart';
import 'package:urun_stok_app/sepet.dart';
import 'package:urun_stok_app/urun_listesi.dart';
import 'package:urun_stok_app/welcome_screen.dart';
class Iletisim extends StatefulWidget {
  const Iletisim({super.key});

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  int aktifIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        onTap:  (index) {
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
        ]),body: Center(child: Text('İletişim Sayfası'),));
  }
}


