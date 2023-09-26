import 'package:flutter/material.dart';
import 'package:untitled11/BottomNavigator.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
          appBar: AppBar(

            title:const FittedBox( child:
            Text('1 Online Shop',
                style: TextStyle(color: Colors.black)
            ),
            ) ,
            centerTitle:true,
          ),
          body:Center(
          child: Container
            (width:200, height: 200,
          child:
          Column(
            children:
            [
              ElevatedButton(
                  child:Column(
                    children: <Widget>[
                      Icon(Icons.business_center,weight: 200,),
                      Container(child: Text('Каталог'),)
                    ]
          ),
                  onPressed:()
                  {Navigator.pushNamed(context,'/catalog'); } ,

              )
            ],
            ),
            )
          ),
    bottomNavigationBar: BottomNavigator(context),
    );
  }
}