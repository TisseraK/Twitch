import 'package:flutter/material.dart';
import 'package:twitch/service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitch Concept App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color.fromARGB(255,26,27,32)
        ),
        child: Column(
          children: <Widget>[
            //Container barre top
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: MediaQuery.of(context).size.height *0.10,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => HomePage(),
                         ));
                   },
                   child:  Container(
                     height: MediaQuery.of(context).size.height *0.05,
                     width: MediaQuery.of(context).size.height *0.05,
                     decoration: BoxDecoration(
                         image:DecorationImage(
                             image:  AssetImage('img/icon2.png'),
                             fit: BoxFit.fitHeight
                         )
                     ),
                   ),
                 ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: MediaQuery.of(context).size.height *0.08,
                    width: MediaQuery.of(context).size.width *0.70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(120, 0,0,0),
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ],
                      color: Color.fromARGB(255,34,35,40),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child:
                        TextFormField(
                          onChanged: (val){
                        },
                          style:TextStyle(
                            color:Color.fromARGB(255,26,27,32)
                          ),
                          decoration: InputDecoration(
                            hintText: 'Search, games, channels',
                            hintStyle: TextStyle(
                                color:Color.fromARGB(255,101, 101, 101)
                            ),
                            border: InputBorder.none,
                          ),
                        )
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height *0.75,
                width: MediaQuery.of(context).size.width,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height *0.07,
                    width: MediaQuery.of(context).size.width *0.20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Explore', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.05,fontWeight: FontWeight.bold ),),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: MediaQuery.of(context).size.height *0.05,
                          width: MediaQuery.of(context).size.width *0.12,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255,164,39,56),
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child:  Text('Live', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),),),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin:EdgeInsets.symmetric(horizontal: 30),
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.80,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(15),
                              image:DecorationImage(
                                  image:  AssetImage('img/fornite.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.10,
                                width: MediaQuery.of(context).size.width * 0.70,
                                child: Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image:DecorationImage(
                                              image:  AssetImage('img/venum.png'),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.50,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text('Live Fortnite chill', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),textAlign: TextAlign.left,),
                                            ],                                          ),
                                          Row(
                                            children: [
                                              Text('ForeverYoungGaming', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),),
                                            ],                                          ),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.30,
                          width: MediaQuery.of(context).size.width * 0.80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image:DecorationImage(
                                  image:  AssetImage('img/fornite.jpg'),
                                  fit: BoxFit.cover
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height * 0.10,
                                width: MediaQuery.of(context).size.width * 0.70,
                                child: Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.height * 0.05,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          image:DecorationImage(
                                              image:  AssetImage('img/venum.png'),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.50,
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text('Live Fortnite chill', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),textAlign: TextAlign.left,),
                                            ],                                          ),
                                          Row(
                                            children: [
                                              Text('ForeverYoungGaming', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),),
                                            ],                                          ),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  //Popular channels
                  Container(
                    height: MediaQuery.of(context).size.height *0.30,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text('Popular channels', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.03,fontWeight: FontWeight.bold ),),
                                    GestureDetector(onTap: (){}, child: Text('View all', style: TextStyle(color: Color.fromARGB(200,48,50,55),fontSize:MediaQuery.of(context).size.height *0.025,fontWeight: FontWeight.bold ),),)
                  ]
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height:MediaQuery.of(context).size.height *0.2,
                                width: MediaQuery.of(context).size.width *0.28,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255,33,34,38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height *0.10,
                                      width: MediaQuery.of(context).size.height *0.10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image:DecorationImage(
                                            image:  AssetImage('img/venum.png'),
                                            fit: BoxFit.fitHeight
                                        )
                                    ),

                                    ),
                                    Text('Venum', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height:MediaQuery.of(context).size.height *0.2,
                                width: MediaQuery.of(context).size.width *0.28,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255,33,34,38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height *0.10,
                                      width: MediaQuery.of(context).size.height *0.10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          image:DecorationImage(
                                              image:  AssetImage('img/rapido.png'),
                                              fit: BoxFit.fitHeight
                                          )
                                      ),

                                    ),
                                    Text('Rapido', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height:MediaQuery.of(context).size.height *0.2,
                                width: MediaQuery.of(context).size.width *0.28,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255,33,34,38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height *0.10,
                                      width: MediaQuery.of(context).size.height *0.10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          image:DecorationImage(
                                              image:  AssetImage('img/venum.png'),
                                              fit: BoxFit.fitHeight
                                          )
                                      ),

                                    ),
                                    Text('Venum', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.02,fontWeight: FontWeight.bold ),),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height *0.30,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Catégories', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.03,fontWeight: FontWeight.bold ),),
                              GestureDetector(onTap: (){}, child: Text('View all', style: TextStyle(color: Color.fromARGB(200,48,50,55),fontSize:MediaQuery.of(context).size.height *0.025,fontWeight: FontWeight.bold ),),)
                            ]
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height:MediaQuery.of(context).size.height *0.2,
                                width: MediaQuery.of(context).size.width *0.28,
                                decoration: BoxDecoration(
                                    image:DecorationImage(
                                        image:  AssetImage('img/warzone.jpg'),
                                        fit: BoxFit.fitHeight
                                    ),
                                    color: Color.fromARGB(255,33,34,38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height:MediaQuery.of(context).size.height *0.2,
                                width: MediaQuery.of(context).size.width *0.28,
                                decoration: BoxDecoration(
                                    image:DecorationImage(
                                        image:  AssetImage('img/fortnite.jpg'),
                                        fit: BoxFit.fitHeight
                                    ),
                                    color: Color.fromARGB(255,33,34,38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Container(
                                height:MediaQuery.of(context).size.height *0.2,
                                width: MediaQuery.of(context).size.width *0.28,
                                decoration: BoxDecoration(
                                    image:DecorationImage(
                                        image:  AssetImage('img/discussion.jpg'),
                                        fit: BoxFit.fitHeight
                                    ),
                                    color: Color.fromARGB(255,33,34,38),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: BottomBar()
    );
    }
    }
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Color.fromARGB(255,26,27,32),
      child: Container(
        height: MediaQuery.of(context).size.height *0.075,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height *0.05,
                width: MediaQuery.of(context).size.height *0.05,
              ),
            )
          ],
        ),
      ),
    );
  }
}