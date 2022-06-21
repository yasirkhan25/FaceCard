import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade700,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        title: Text(
          'PROFILE',
          style: TextStyle(fontSize: 25),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, size: 30),
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
                child: Text(
              'Codepreadtv send you zaps',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          ),
          Container(
            padding: EdgeInsets.only(top: 80, left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Image and Text Row Container
                Container(
                  padding: EdgeInsets.only(
                    top: 5,
                  ),
                  child: CircleAvatar(
                    radius: 55.0,
                    backgroundImage: AssetImage(
                        'assets/images/ani-kolleshi-7jjnJ-QA9fY-unsplash.jpg'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Theresa Khan',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor at amat,\ncooperate',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            height: 250,
            width: 250,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.yellow.shade600,
                style: BorderStyle.solid,
              ),
            ),
            child: Image.asset(
              'assets/images/yellow-lightning-png-44066-Windows_11zon.png',
              scale: 1,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '500',
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    child: Container(
                      height: 55.0,
                      width: 150.0,
                      decoration: ShapeDecoration(
                        color: Colors.deepPurple.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.yellow.shade600,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      print('Share Button Clicked');
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 55.0,
                      width: 150.0,
                      decoration: ShapeDecoration(
                        color: Colors.deepPurple.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 30,
                            color: Colors.yellow.shade600,
                          ),
                          Text(
                            "Invite",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      print('Invite Button Clicked');
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
