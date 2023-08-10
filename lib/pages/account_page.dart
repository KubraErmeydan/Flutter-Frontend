import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xff5C4DB1),
            borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25) )
        ),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child:CircleAvatar(backgroundColor:Color(0xffA79CE3) ,radius:50,child: Image.asset('assets/userprofile.png')),

            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(20) )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text('Account',style: TextStyle(fontSize: 18),),
                          Row(
                            children: [
                              Image.asset('asssets/notification.png'),
                              TextButton(onPressed: (){}, child: Text('Notification')),
                            ],
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
