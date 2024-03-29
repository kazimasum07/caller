import 'package:caller_app/data/const/constantvariables.dart';
import 'package:caller_app/features/calls/contract/ui/contract_screen.dart';
import 'package:caller_app/features/calls/ui/callscreen.dart';
import 'package:caller_app/features/credits/ui/addcredits.dart';
import 'package:caller_app/features/setting/account/ui/account_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RecentCallScreen extends StatefulWidget {
  const RecentCallScreen({super.key});

  @override
  State<RecentCallScreen> createState() => _RecentCallScreenState();
}

class _RecentCallScreenState extends State<RecentCallScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height*1,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: size.height*0.03),
            Container(
              height: size.height*0.97,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: KConstColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 10,top: 20,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recents",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>CallScreen()));
                            },
                            icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,)),
                      ],
                    ),
                  ),
                  Stack(
                    children:  [
                      Container(
                        width: double.infinity,
                        height: size.height*0.8688,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )
                        ),
                        child: ListView.separated(
                            itemBuilder: (_,index)=>ListTile(
                              title: Text("Jhon Doe",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                              leading: Icon(CupertinoIcons.timer,color: Colors.black,),
                              trailing: Text("3secs",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16)),
                            ),
                            separatorBuilder: (_,index)=>SizedBox(height: 10),
                            itemCount: 20)
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 400,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>RecentCallScreen()));
                                },
                                child: Column(
                                  children: [
                                    Icon(CupertinoIcons.clock,size: 35,),
                                    Text("Recent",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CallScreen()));
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.dialpad_sharp,size: 35,),
                                    Text("Dial",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (_)=>ContractScreen()));
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.account_box_sharp,size: 35,),
                                    Text("Contract",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            ///Bottom Navigation Bar

          ],
        ),
      ),
    );
  }
}
