import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_Filter extends StatefulWidget {
  const Product_Filter({super.key});

  @override
  State<Product_Filter> createState() => _Product_FilterState();
}

class _Product_FilterState extends State<Product_Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Products Filter',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Slider(
            min: 0,
            max: 80000,
            inactiveColor: Colors.blue[100],
            label: main_value.toInt().toString(),
            divisions: 5,
            thumbColor: Colors.blue,
            activeColor: Colors.blue,
            value: main_value,
            onChanged: (value) {
              setState(() {
                main_value= value;
                print(main_value);
              });
            },
          ),
          Text('All Products < Rs. ${main_value.toInt()}',style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.w600),
          ),),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(productsList.length, (index) => (productsList[index]['price'] <= main_value)? Product_Container(index) : Product_Not_Found()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget Product_Container(int index)
{
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 3,
              offset: Offset(0, 2))
        ]),
    child: ListTile(
      title: Text(productsList[index]['name'],style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: Colors.black,
            letterSpacing: 1,
            fontWeight: FontWeight.w600),
      ),),
      leading: CircleAvatar(child: Text('${index+1}',style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue, ),
      subtitle: Text(productsList[index]['sub'],
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
              letterSpacing: 1,),
        ),),
        trailing: Text(
        'Rs. ${productsList[index]['price'].toString()}',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              letterSpacing: 1,),
          ),),
    ),
  );
}

Widget Product_Not_Found()
{
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://notebookstore.in/image/no-product-found.png'),
      )
    ),
  );
}

List productsList = [
  {'id': 1, 'name': 'Watch', 'sub': 'Wearables', 'price': 1000},
  {'id': 2, 'name': 'T-Shirt', 'sub': 'Wearables', 'price': 520},
  {'id': 3, 'name': 'Jeans', 'sub': 'Wearables', 'price': 840},
  {'id': 4, 'name': 'Refrigerator', 'sub': 'Electronics', 'price': 18000},
  {'id': 5, 'name': 'Microwave', 'sub': 'Electronics', 'price': 15000},
  {'id': 6, 'name': 'Blazer', 'sub': 'Wearables', 'price': 1500},
  {'id': 7, 'name': 'Laptop', 'sub': 'Electronics', 'price': 70000},
  {'id': 8, 'name': 'Mobile', 'sub': 'Electronics', 'price': 20000},
  {'id': 9, 'name': 'Cold-Drinks', 'sub': 'Refreshment', 'price': 100},
  {'id': 10, 'name': 'Earbuds', 'sub': 'Electronics', 'price': 1000},
  {'id': 11, 'name': 'iPhone', 'sub': 'Electronics', 'price': 60000},
  {'id': 12, 'name': 'Macbook', 'sub': 'Electronics', 'price': 80000},
  {'id': 13, 'name': 'Sneakers', 'sub': 'Wearables', 'price': 2000},
  {'id': 14, 'name': 'Backpack', 'sub': 'Wearables', 'price': 3000},
  {'id': 15, 'name': 'Smartwatch', 'sub': 'Wearables', 'price': 5000},
  {'id': 16, 'name': 'Headphones', 'sub': 'Electronics', 'price': 4000},
  {'id': 17, 'name': 'Gaming Console', 'sub': 'Electronics', 'price': 25000},
  {'id': 18, 'name': 'Speaker System', 'sub': 'Electronics', 'price': 12000},
];

double main_value = 0;
