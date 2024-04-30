import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:urun_stok_app/iletisim.dart';
import 'package:urun_stok_app/sepet.dart';
import 'package:urun_stok_app/urun_islemleri.dart';
import 'package:urun_stok_app/urun_listesi.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int aktifIndex = 0;
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>UrunIslemleri()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      'Ürün İşlemleri',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                color: Colors.teal,
                elevation: 5,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>UrunListesi()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Material(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Text('Ürün Listesi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                color: Colors.teal,
                elevation: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
