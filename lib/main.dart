import 'package:flutter/material.dart';
import 'package:flutter_app5/profile.dart';
import 'package:flutter_app5/purchase_zaps.dart';

import 'cash_out.dart';
import 'graph_performance.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FaceCard',
      home:
      //GraphPerformance(),
      PurchaseZaps(),
      //ProfilePage(),
      //CashOut(),
    );
  }
}



