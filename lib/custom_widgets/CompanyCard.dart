import 'package:FlutterListView/pojos/Companies.dart';
import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget{
  final Companies company;
  final Function delete;
  CompanyCard({this.company, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ Text(company.name,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),),

            SizedBox(width: 20.0,),

            Text(company.ceo,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),

            IconButton(
              onPressed: delete,
              icon: Icon(Icons.delete,
              color: Colors.black,)
            )
        ]),
      ),

    );
  }

}