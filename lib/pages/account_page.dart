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
                              Image.asset('assets/notification.png',height:25,),
                              TextButton(onPressed: (){}, child: Text('Notification',style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.normal))),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/calender.png',height:25,),
                              TextButton(onPressed: (){}, child: Text('My Bookings',style: TextStyle(fontWeight:FontWeight.normal ,color: Colors.black,fontSize: 18))),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/tick.png',height: 25,),
                              TextButton(onPressed: (){}, child: Text('My Plan',style: TextStyle(fontWeight:FontWeight.normal,color: Colors.black,fontSize: 18))),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/address.png',height: 25,),
                              TextButton(onPressed: (){}, child: Text('Addresses',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal))),
                            ],
                          ),
                          Text('Share',style: TextStyle(fontSize: 18),),
                          Row(
                            children: [
                              Image.asset('assets/facebook.png',height: 25,),
                              TextButton(onPressed: (){}, child: Text('Facebook',style: TextStyle(fontWeight:FontWeight.normal,color: Colors.black,fontSize: 18))),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/twitter.png',height: 25,),
                              TextButton(onPressed: (){}, child: Text('Twitter',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18))),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/gmail.png',height: 25,),
                              TextButton(onPressed: (){}, child: Text('Gmail',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18))),
                            ],
                          ),
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
