import 'dart:ui';

import 'package:flutter/material.dart';

class PurchaseZaps extends StatelessWidget {
  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        child: InkWell(
          onTap: () {
            print('Clicked...!');
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
            height: 58,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.purple.shade900,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              'Get a million zaps',
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text(
          'PURCHASE ZAPS',
          style: TextStyle(fontSize: 25),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, size: 30),
          )
        ],
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 5),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Search million no. of zaps',
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black54,
                          ),
                        ),
                      )),
                ),
              ),

              ///GridView Builder Container
              Container(
                // height: MediaQuery.of(context).size.height*0.75,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 25, right: 25),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 2,
                            crossAxisSpacing: 40,
                            mainAxisSpacing: 15),
                    itemCount: myProducts.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text(myProducts[index]["name"]),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
