import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
 import 'package:instagram_redesign/data/post_data.dart';
import 'package:instagram_redesign/screens/historia_view.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return  NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
            overscroll.disallowGlow();
          },      
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _buildHistorias(),
              _buildPosts(context),
            ],
        ),
      ),
          ),
    );
  }

  _buildHistorias() {
    return Container(
      height: 95,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: historias.length,
        padding: EdgeInsets.only(left:20, right: 15),
        separatorBuilder:  (BuildContext context, int index) {
                          return SizedBox(
                            width: 10,
                          );
        },
        itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('historia'),
                  child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2.5),
                    borderRadius: BorderRadius.circular(28)
                  ),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(historias[index].foto,), fit: BoxFit.cover),
                    border: Border.all(color: Color(0xfff6f4f4), width: 1.5),
                    borderRadius: BorderRadius.circular(28)
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(historias[index].nombre, style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        );
       },
      ),
    );
  }

  _buildPosts(context) {
    final _size = MediaQuery.of(context).size;
     return Container(
       height: _size.height*5,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: posts.length,
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: Colors.white,
            ),
            width: _size.width /2, 
            height: _size.height * .65,
            child: Stack(
              children: <Widget>[
                Align( 
                  alignment: Alignment.topCenter,
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(posts[index].fotoperfil),),
                    trailing: Text('•••', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2),),
                    title: Text(posts[index].nombre, style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text(posts[index].ubicacion, style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
                  )),
                Positioned(
                  top: 65,
                  right: 15,
                  child: GestureDetector(
                    onDoubleTap: () {
                      setState(() {
                        fav = !fav;
                      });
                    },
                    child: Container(
                      width: _size.width * .83,
                      height: _size.height * .42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(image: NetworkImage(posts[index].foto), fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffe91c44).withOpacity(.10),
                            spreadRadius: 5,
                            offset: Offset(0, 40),
                            blurRadius: 30
                          ),
                          BoxShadow(
                            color: Color(0xffe91c44).withOpacity(.10),
                            spreadRadius: 5,
                            offset: Offset(0, -20),
                            blurRadius: 30
                          )
                        ]
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter, 
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            (!fav) ? GestureDetector(
                              onTap: () {
                                setState(() {
                                  fav = true;
                                });
                              },
                              child: Chip(
                                padding: EdgeInsets.all(10),
                                backgroundColor: Color(0xfff6f4f4),
                                label: Row(
                                  children: <Widget>[
                                    Image.asset('assets/img/heart-bold.png', height: 20,),
                                    SizedBox(width: 5,),
                                    Text(posts[index].likes.toString()+'k', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                                  ],
                                )
                              ),
                            ) : GestureDetector(
                              onTap: () {
                                setState(() {
                                  fav = false;
                                });
                              },
                              child: Chip(
                                padding: EdgeInsets.all(10),
                                backgroundColor: Color(0xffe91c44),
                                label: Row(
                                  children: <Widget>[
                                    Image.asset('assets/img/heart-bold.png', height: 20, color: Colors.white,),
                                    SizedBox(width: 5,),
                                    Text(posts[index].likes.toString() +'k', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                                  ],
                                )
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Image.asset('assets/img/chat-bold.png', height: 20,),
                                  SizedBox(width: 5,),
                                  Text(posts[index].likes.toString(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                                ],
                              )
                            ),
                            SizedBox(width: 20,),
                             Icon(Icons.share, size: 20,),
                             Expanded(child: Container()),
                             Image.asset('assets/img/bookmark.png', height: 20,),
                            SizedBox(width: 5,),
                             
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 65, bottom: 2),
                          child: Row(
                            children: <Widget>[
                              ImageStack(
                                imageRadius: 38,
                                imageList: posts[index].likefotos,
                                imageBorderWidth: 3,
                                totalCount: posts[index].likefotos.length,
                              ),
                              SizedBox(width: 5,),
                              Flexible(child: Text(posts[index].descripcion, style: TextStyle(fontWeight: FontWeight.bold),)),
                              Spacer(),
                              Align(alignment: Alignment.centerRight, child: Chip(label: Text('More',style: TextStyle(fontWeight: FontWeight.bold))))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
                
              ],
            ),
          ),
        );
       },
      ),
    );
  }
}