import 'package:flutter/material.dart';
import 'package:twitch/main.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key,}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
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
            children:[
              Container(
                height: MediaQuery.of(context).size.height *0.78,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(height: MediaQuery.of(context).size.height *0.30,
                      width: MediaQuery.of(context).size.width *0.75,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyHomePage(),
                                        ));
                                  },
                                  //oui
                                  child:  Container(
                                    height: MediaQuery.of(context).size.height *0.08,
                                    width: MediaQuery.of(context).size.height *0.08,
                                    decoration: BoxDecoration(
                                        image:DecorationImage(
                                            image:  AssetImage('img/icon2.png'),
                                            fit: BoxFit.fitHeight
                                        )
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.75,
                              child: Text('Welcome to ', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.075,fontWeight: FontWeight.bold ),),
                            ),Container(
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.75,
                              child: Text('Twitch', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.075,fontWeight: FontWeight.bold ),),
                            ),


                          ]
                      ),
                    ),
                  ]
                )
              ),
             GestureDetector(
               onTap: (){
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => Connexion(),
                     ));
               },
               child:Container(
                   height: MediaQuery.of(context).size.height *0.08,
                   width: MediaQuery.of(context).size.width *0.90,
                   decoration: BoxDecoration(
                       color: Color.fromARGB(255, 53, 53, 53 ),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child:Center(
                     child:  Text('Login', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.03,fontWeight: FontWeight.bold ),),
                   )
               ),
             ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Inscription(),
                      ));
                },
                child:Container(
                  margin: EdgeInsets.only(top: 20),
                    height: MediaQuery.of(context).size.height *0.08,
                    width: MediaQuery.of(context).size.width *0.90,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 128, 0, 255  ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:Center(
                      child:  Text('Sign Up', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.03,fontWeight: FontWeight.bold ),),
                    )
                ),
              ),
            ],
          ),
        ),
    );
  }
}
class Connexion extends StatefulWidget {
  Connexion({Key? key,}) : super(key: key);
  @override
  ConnexionState createState() => ConnexionState();
}

class ConnexionState extends State<Connexion> {
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
          children:[
          Container(
            height:MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                    icon: Icon(Icons.arrow_back, color: Colors.white,))
              ],
            ),
          ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width *0.80,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text('Login', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.05,fontWeight: FontWeight.bold ),textAlign: TextAlign.left,),

                    ],
                  )],
              )
            ),
      Container(
        height: MediaQuery.of(context).size.height * 0.50,
        width: MediaQuery.of(context).size.width *0.80,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(

                children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: MediaQuery.of(context).size.height *0.08,
                      width: MediaQuery.of(context).size.width *0.70,
                      child:
                      TextFormField(
                        onChanged: (val){
                        },
                        style:TextStyle(
                            color:Colors.white
                        ),
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color:Color.fromARGB(255,101, 101, 101)
                          ),
                          border: InputBorder.none,
                        ),
                      )
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: MediaQuery.of(context).size.height *0.08,
                      width: MediaQuery.of(context).size.width *0.70,
                      child:
                      TextFormField(
                        onChanged: (val){
                        },
                        style:TextStyle(
                            color:Colors.white
                        ),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color:Color.fromARGB(255,101, 101, 101)
                          ),
                          border: InputBorder.none,
                        ),
                      )
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: (){}, child: Text('Forgot the password ?',style: TextStyle(color:Colors.white),))
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Connexion(),
                          ));
                    },
                    child:Container(
                        height: MediaQuery.of(context).size.height *0.08,
                        width: MediaQuery.of(context).size.width *0.90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 128, 0, 255  ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child:Center(
                          child:  Text('Login', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.03,fontWeight: FontWeight.bold ),),
                        )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class Inscription extends StatefulWidget {
  Inscription({Key? key,}) : super(key: key);
  @override
  InscriptionState createState() => InscriptionState();
}

class InscriptionState extends State<Inscription> {
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
          children:[
            Container(
              height:MediaQuery.of(context).size.height * 0.10,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      icon: Icon(Icons.arrow_back, color: Colors.white,))
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width *0.80,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Text('Sign up', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.05,fontWeight: FontWeight.bold ),textAlign: TextAlign.left,),

                      ],
                    )],
                )
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width *0.80,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(

                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.70,
                              child:
                              TextFormField(
                                onChanged: (val){
                                },
                                style:TextStyle(
                                    color:Colors.white
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                      color:Color.fromARGB(255,101, 101, 101)
                                  ),
                                  border: InputBorder.none,
                                ),
                              )
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.70,
                              child:
                              TextFormField(
                                onChanged: (val){
                                },
                                style:TextStyle(
                                    color:Colors.white
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Username',
                                  labelStyle: TextStyle(
                                      color:Color.fromARGB(255,101, 101, 101)
                                  ),
                                  border: InputBorder.none,
                                ),
                              )
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.70,
                              child:
                              TextFormField(
                                onChanged: (val){
                                },
                                style:TextStyle(
                                    color:Colors.white
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      color:Color.fromARGB(255,101, 101, 101)
                                  ),
                                  border: InputBorder.none,
                                ),obscureText:true

                              )
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.70,
                              child:
                              TextFormField(
                                onChanged: (val){
                                },
                                style:TextStyle(
                                    color:Colors.white
                                ),
                                decoration: InputDecoration(
                                  labelText: 'Date of birth',
                                  labelStyle: TextStyle(
                                      color:Color.fromARGB(255,101, 101, 101)
                                  ),
                                  border: InputBorder.none,
                                ),
                              )
                          ),

                        ],
                      ),
                    )
                  ],
                )
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                      TextButton(onPressed: (){}, child: Text('I have an account',style: TextStyle(color:Colors.white),)),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Connexion(),
                          ));
                    },
                    child:Container(
                        height: MediaQuery.of(context).size.height *0.08,
                        width: MediaQuery.of(context).size.width *0.90,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 128, 0, 255  ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child:Center(
                          child:  Text('Login', style: TextStyle(color: Colors.white,fontSize:MediaQuery.of(context).size.height *0.03,fontWeight: FontWeight.bold ),),
                        )
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}