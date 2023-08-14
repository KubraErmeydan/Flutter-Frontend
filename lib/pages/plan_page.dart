import 'package:flutter/material.dart';
class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff5C4DB1),
        borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25) )
      ),
       child: Column(
         children: [
           const SizedBox(height: 80,),
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: Text('Your Plan', style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),),
           ),
           Expanded(
             child: Container(
               width: double.infinity,
               height: 60,
               decoration: const BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(20) )
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Padding(
                     padding: EdgeInsets.only(left: 25.0, top: 12,bottom: 12),
                     child: Text('Selected Cleaning',style: TextStyle(fontWeight: FontWeight.bold), ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height:150,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: const Color(0xffDFDEFF),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset('assets/group4004.png'),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Initial Cleaning'),
                              ),

                            ],
                          ),
                        ),
                       Container(
                         child: Column(
                           children: [
                             Container(
                               height:150,
                               width: 170,
                               decoration: BoxDecoration(
                                 color: const Color(0xffDFDEFF),
                                 borderRadius: BorderRadius.circular(25),
                               ),
                               child: Image.asset('assets/group4040.png'),
                             ),
                             const Padding(
                               padding: EdgeInsets.all(10.0),
                               child: Text('Upkeep Cleaning'),
                             ),

                           ],
                         ),
                       ),
                     ],
                   ),
                   const Padding(padding: EdgeInsets.only(left: 25.0, top: 12,bottom: 12),
                   child: Text('Selected Frequency',style: TextStyle(fontWeight: FontWeight.bold),),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: const Color(0xff9B9B9B),width: 2),
                             borderRadius: const BorderRadius.all(Radius.circular(10)),
                           ),
                           child:TextButton(onPressed: (){}, child: const Text('Weekly',style: TextStyle(color: Color(0xff9B9B9B)),),)
                       ),
                       Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: const Color(0xff9B9B9B),width: 2),
                             borderRadius: const BorderRadius.all(Radius.circular(10)),
                           ),
                           child:TextButton(onPressed: (){}, child: const Text('Bi-weekly',style: TextStyle(color: Color(0xff9B9B9B)),),)
                       ),
                       Container(
                           height: 50,
                           width: 100,
                           decoration: BoxDecoration(
                             border: Border.all(color: const Color(0xff9B9B9B),width: 2),
                             borderRadius: const BorderRadius.all(Radius.circular(10)),
                           ),
                           child:TextButton(onPressed: (){}, child: const Text('Monthly',style: TextStyle(color: Color(0xff9B9B9B)),),)
                       ),
                     ],
                   ),
                 const Padding(
                   padding: EdgeInsets.only(left: 25.0, top: 18,),
                   child: Text('Selected Extras',style: TextStyle(fontWeight: FontWeight.bold),),),
                   const SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         child: Column(
                           children: [
                             CircleAvatar(backgroundColor:const Color(0xff5C4DB1) ,radius:35,child: Image.asset('assets/fridge.png',height: 40,)),
                             const SizedBox(height: 15),
                             const Text('Inside Fridge')
                           ],
                         ),
                       ),
                       Container(
                         child: Column(
                           children: [
                             CircleAvatar(backgroundColor:const Color(0xff5C4DB1) ,radius:35,child: Image.asset('assets/organizing.png',height: 40,)),
                             const SizedBox(height: 15),
                             const Text('Organizing')
                           ],
                         ),
                       ),
                       Container(
                         child: Column(
                           children: [
                             CircleAvatar(backgroundColor:const Color(0xff5C4DB1) ,radius:35,child: Image.asset('assets/blinds.png',height: 40,)),
                             const SizedBox(height: 15),
                             const Text('Small Blinds')
                           ],
                         ),
                       ),
                     ],
                   ),
                   const SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         child: Column(
                           children: [
                             CircleAvatar(backgroundColor:const Color(0xff5C4DB1) ,radius:35,child: Image.asset('assets/patio.png',height: 40,)),
                             const SizedBox(height: 15),
                             const Text('Patio')
                           ],
                         ),
                       ),
                       Container(
                         child: Column(
                           children: [
                             CircleAvatar(backgroundColor:const Color(0xff5C4DB1) ,radius:35,child: Image.asset('assets/organizing.png',height: 40,)),
                             const SizedBox(height: 15),
                             const Text('Organizing')
                           ],
                         ),
                       ),
                       Container(
                         child: Column(
                           children: [
                             CircleAvatar(backgroundColor:const Color(0xff5C4DB1) ,radius:35,child: Image.asset('assets/blinds.png',height: 40,)),
                             const SizedBox(height: 15),
                             const Text('Small Blinds')
                           ],
                         ),
                       ),
                     ],
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
