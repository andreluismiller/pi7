// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'pages/lista.dart';
import 'pages/home.dart';
// import 'home.dart';

void main() {
  runApp(NFCReaderApp());
}

class NFCReaderApp extends StatelessWidget {
  const NFCReaderApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bem-vindo',
      home: Lista(),
    );
  }
}