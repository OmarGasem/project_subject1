import 'package:flutter/material.dart';
import '../Component/reuasble_card.dart';
import '../constants.dart';
import 'account.dart';
import '../Component/data_content.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kAppBarGreen,
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 55,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(kActiveColorCard,
                          DataContent(AssetImage("images/images.jpeg")))),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return AccountProfile();
                      }));
                    },
                    child: ReusableCard(kActiveColorCard,
                        DataContent(AssetImage("images/images.png"))),
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(kActiveColorCard, Column())),
                  Expanded(child: ReusableCard(kActiveColorCard, Column()))
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(child: ReusableCard(kActiveColorCard, Column())),
                  Expanded(child: ReusableCard(kActiveColorCard, Column()))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
