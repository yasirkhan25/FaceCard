import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CashOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text(
          'CASH OUT',
          style: TextStyle(fontSize: 25),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, size: 30),
          )
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                padding: EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 100, left: 5),
                            child: CircleAvatar(
                              radius: 37.0,
                              backgroundImage: AssetImage(
                                  "assets/images/ani-kolleshi-7jjnJ-QA9fY-unsplash.jpg"),
                            ),
                          ),
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(
                                'assets/images/usman-yousaf-eUSCGHW-uZw-unsplash.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                  'assets/images/ani-kolleshi-7jjnJ-QA9fY-unsplash.jpg'),
                            ),
                          ),
                          CircleAvatar(
                            radius: 33.0,
                            backgroundImage: AssetImage(
                                'assets/images/national-cancer-institute-L8tWZT4CcVQ-unsplash.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80),
                            child: CircleAvatar(
                              radius: 33.0,
                              backgroundImage: AssetImage(
                                  'assets/images/hush-naidoo-jade-photography-ZCO_5Y29s8k-unsplash.jpg'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    ///Image and Text Row Container
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ///Image and Text Row Container
                          Container(
                            padding: EdgeInsets.only(
                              top: 5,
                            ),
                            child: CircleAvatar(
                              radius: 70.0,
                              backgroundImage: AssetImage(
                                  'assets/images/usman-yousaf-pTrhfmj2jDA-unsplash.jpg'),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 40, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'John Henry',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 28),
                                ),
                                Container(
                                  child: RatingBar.builder(
                                    itemSize: 17,
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                Text(
                                  '\$ 500.02',
                                  style: TextStyle(
                                      color: Colors.yellow.shade600,
                                      fontSize: 28),
                                ),
                                Text(
                                  DateFormat('MM-dd-yyyy')
                                      .format(DateTime.now()),
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(height: 25),

                                /// Forward Arrow Icon Button
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade900,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                    ),
                                    color: Colors.white,
                                    onPressed: () {
                                      print('clicked');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    /// Done Button Container
                    Container(
                      padding: EdgeInsets.only(top: 50),
                      child: Column(
                        children: [
                          Center(
                              child: Text(
                            'Thanks for your nice work!!',
                            style: TextStyle(color: Colors.black54),
                          )),
                          SizedBox(height: 10),
                          Center(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 58,
                                width: 250,
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade700,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  'Done',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
