import 'package:FlutterListView/custom_widgets/CompanyCard.dart';
import 'package:flutter/material.dart';
import 'pojos/Companies.dart';

void main() {
  runApp(MaterialApp(
    home: MapMethod(),
  ));
}

class MapMethod extends StatefulWidget {
  @override
  _MapMethodState createState() => _MapMethodState();
}

class _MapMethodState extends State<MapMethod> {
  List<Companies> companies = [
    Companies(name: 'Google', ceo: 'Sundar Pichai'),
    Companies(name: 'Microsoft', ceo: 'Bill Gates'),
    Companies(name: 'Facebook', ceo: 'Mark Zukerberg')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('List Data'),
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        children: companies.map((company) => CompanyCard(company: company)).toList(),
      ),
    );
  }
}

