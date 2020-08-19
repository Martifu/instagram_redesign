import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
 
 
class HistoriaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network('https://www.nme.com/wp-content/uploads/2020/04/Benee-Inline-Article-Breakout.jpg', fit: BoxFit.cover,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                width: _size.width * .95,
                 child: Row(
                  children: <Widget>[
                    Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                         ),
                          height: 5,
                        ),
                    ), 
                    SizedBox(width: 5,),
                    Expanded(
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(20)
                         ),
                        ),
                    ), 
                    SizedBox(width: 5,),
                    Expanded(
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(20)
                         ),
                        ),
                    ), 
                    SizedBox(width: 5,),
                    Expanded(
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(20)
                         ),
                        ),
                    ), 
                    SizedBox(width: 5,),
                    Expanded(
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(20)
                         ),
                        ),
                    ), 
                    SizedBox(width: 5,),
                    Expanded(
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 5,
                          decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(20)
                         ),
                        ),
                    ), 
                    SizedBox(width: 5,), 
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 55),
              child: Align(
                alignment: Alignment.topCenter,
                child: ListTile(
                  title: Text('Martin Esparza 😄', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  leading:Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('https://media.publit.io/file/instagramre/hombrebarba.png'), fit: BoxFit.cover),
                      border: Border.all(color: Color(0xfff6f4f4), width: 1.5),
                      borderRadius: BorderRadius.circular(28)
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: ()=> Navigator.of(context).pop(),
                    child: BlurryContainer(
                      borderRadius: BorderRadius.circular(14),
                      padding: EdgeInsets.all(10),
                      bgColor: Colors.black12,
                      child: Icon(Icons.clear, size: 18, color: Colors.white,),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    BlurryContainer(
                      height: 60,
                      width: _size.width * .7,
                      bgColor: Colors.black12,
                      child: Row(
                        children: <Widget>[
                          Text('Send Message', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                          Expanded(child: Container()),
                          VerticalDivider( thickness: 1, color: Colors.white, ),
                          Text('😍', style: TextStyle(fontSize: 28),)
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    BlurryContainer(
                      borderRadius: BorderRadius.circular(24),
                      height: 60,
                      width: _size.width * .15,
                      bgColor: Colors.black12,
                      child: Image.asset('assets/img/chat-bold.png', color: Colors.white, height: 5,) 
                    ),
                    
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}