import 'package:flutter/material.dart';
import 'package:untitled11/BottomNavigator.dart';


class CatalogPage extends StatelessWidget {

  CatalogPage({Key? key}) : super(key: key);

  ////конструктор подгрузки файла

  List<List<String>> date =[
    ['Корзина','assets/Korziny.jpg','1230.99'],
    ['Аксессуары','assets/aks.jpg','42.99'],
    ['Средство','assets/sredstva.jpg','788.99'],
    ['Коврик','assets/kovriki.jpg','99999.99'],
  ]; /// json

  Widget imageProduct (String image,String name,String price) //формирование контенеар отображения
  {
    return SizedBox(
      height: 250,
      //padding: EdgeInsets.only(bottom: 10),
      child: Column(
        children:
        [Container(padding:const EdgeInsets.only(bottom:10) , child: Text(name,style: const TextStyle(fontSize: 20),)) ,
          Image.asset(image),
          Container(padding:const EdgeInsets.only(top: 10),
              child:Text('$price деревянных'))],
      ),
    );

  }

  Widget listProduct () // ListWiew списка товаров
  {
    List<Widget> arr=[]; //массив виджетов

    for(int x=0;x<date.length;x++)
      {
        arr.add(imageProduct(date[x][1], date[x][0], date[x][2]));
       // arr.add(ImageProduct('assets/Korziny.jpg','Корзина','1230.99'));
      }
  Widget  productList = ListView(

      padding: const EdgeInsets.only(top: 30),
      children: arr
  );
    return productList;

  }

  @override
  Widget build(BuildContext context)
  {
    return  Scaffold(
          appBar: AppBar(

            title:const FittedBox( child:
            Text('Каталог',
                style: TextStyle(color: Colors.black)
            ),
            ) ,
            centerTitle:true,
          ),
          body:listProduct(), // формирование лист виев
      bottomNavigationBar: BottomNavigator(context));
  }
}

