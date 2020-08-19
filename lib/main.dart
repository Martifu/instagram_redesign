
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:instagram_redesign/screens/historia_view.dart';
import 'package:instagram_redesign/screens/home_page.dart';
 
void main() {
  runApp(MyApp());
} 
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int  currentIndex =0;
  
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        'historia' : (_) => HistoriaPage()
      },
      home: Scaffold(
        backgroundColor: Color(0xfff2f2f7),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xfff2f2f7),
          centerTitle: true,
          title: Image.asset('assets/img/instagram-text.png', height: 28,),
          leading: Padding(
            padding: EdgeInsets.all(16.0),
            child: Image.asset('assets/img/plus.png', height: 25,),
          ),
          actions: <Widget>[
            Badge( showBadge: true, position: BadgePosition.bottomRight(right: 10, bottom: 18), child: IconButton(icon: Image.asset('assets/img/message.png', height: 25,), onPressed: null))
          ],
        ),
        body: HomePage(),
        bottomNavigationBar: Container(                                             
          decoration: BoxDecoration(                                                   
            borderRadius: BorderRadius.only(                                           
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),                                           
          ),                                                                           
          child: ClipRRect(                                                            
            borderRadius: BorderRadius.only(                                           
            topLeft: Radius.circular(30.0),                                            
            topRight: Radius.circular(30.0),                                           
            ),                                                                         
            child: BottomNavigationBar(    
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,      
              currentIndex: currentIndex, 
              onTap: (i) {
                setState(() {
                  currentIndex = i;
                });
              },                                   
              items: <BottomNavigationBarItem>[                                        
                BottomNavigationBarItem(                       
                  icon: Image.asset('assets/img/home.png', height: 25,),
                  activeIcon: Image.asset('assets/img/home-bold.png', height: 25,),
                  title: Container()
                  ),
                BottomNavigationBarItem(                                               
                  icon: Image.asset('assets/img/search.png', height: 25,), 
                  activeIcon: Image.asset('assets/img/search-bold.png', height: 25,),
                  title: Container()),
                BottomNavigationBarItem(                                               
                icon: Image.asset('assets/img/plus.png', height: 25,),
                activeIcon: Image.asset('assets/img/plus-bold.png', height: 25,),
                title: Container()),  
                BottomNavigationBarItem(     
                                                            
                icon: Badge( showBadge: true, position: BadgePosition.bottomRight(right: 10, bottom: 18), child: IconButton(icon: Image.asset('assets/img/heart.png', height: 25,), onPressed: null)),
                activeIcon: Badge( showBadge: true, position: BadgePosition.bottomRight(right: 10, bottom: 18), child: IconButton(icon: Image.asset('assets/img/heart-bold.png', height: 25,), onPressed: null)),
                title: Container()),
                BottomNavigationBarItem(                                               
                icon: Image.asset('assets/img/profile.png', height: 25,), 
                activeIcon: Image.asset('assets/img/profile-bold.png', height: 25,),
                title: Container())         
              ],                                                                       
            ),                                                                         
          )                                                                            
        )
      ),
    );
  }
}