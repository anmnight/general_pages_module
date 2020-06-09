import 'package:flutter/material.dart';
import 'package:general_pages_module/DashPatternLineChart.dart';
import 'package:general_pages_module/DonutAutoLabelChart.dart';
import 'package:general_pages_module/Home.dart';

void main() {
  runApp(MaterialApp(
      title: "Router Test",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home",
      routes: {
        "/home":(context)=> Home(),
        "/dash": (context) => DashPatternLineChart.withSampleData(),
        "/donut": (context) => DonutAutoLabelChart.withSampleData()
      }));
}
