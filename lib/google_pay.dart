import 'package:flutter/material.dart';

class gpay extends StatefulWidget {
  const gpay({super.key});

  @override
  State<gpay> createState() => _gpayState();
}

class _gpayState extends State<gpay> {
  var  size,height,width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [SliverAppBar(
          toolbarHeight: 250,
          shape: RoundedRectangleBorder(),
          backgroundColor: Color(0xff2c2e30),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(height: 220,
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.1,
                // width: MediaQuery.of(context).size.width *1,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    filled: true,
                      fillColor:Color(0xff2c2e30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                      hintText: "Pay friends and merchants",hintStyle: TextStyle(fontFamily: "ARLRDBD",color: Colors.grey,fontSize: 15)
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 160.0),
              child: Container(
                height: 45,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/hk.jpg"),
                  )
                ),
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/gpay.png"),
                fit: BoxFit.cover
              )
            ),
          ),


        )];
      }, body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black12,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.qr_code,color: Colors.blue,size: 30,),
                        Text("Scan any",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18
                        ),),
                        Text("QR code",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.contact_mail,color: Colors.blue,size: 30,),
                        Text("Pay ",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),),
                        Text("Contacts",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.phone_android_outlined,color: Colors.blue,size: 30,),
                        Text("Pay phone",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),),
                        Text("Number",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.food_bank,color: Colors.blue,size: 30,),
                        Text("Bank",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),),
                        Text("transfer",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.lock_clock,color: Colors.blue,size: 30,),
                        Text("Pay UPI ID",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18
                        ),),
                        Text("or number",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.person,color: Colors.blue,size: 30,),
                        Text("Self ",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),),
                        Text("transfer",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.contact_page_outlined,color: Colors.blue,size: 30,),
                        Text("Pay",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),),
                        Text("bills",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.mobile_screen_share_rounded,color: Colors.blue,size: 30,),
                        Text("Mobile",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),),
                        Text("recharge",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18)),
                      ],
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Color(0xff2c2e30),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child: Text("Activate UPI Lite ➕",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.03,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                          color: Color(0xff2c2e30),
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Center(child: Text("UPIID:harikrish58027@..",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600),)),
                    ),
                  ),
          
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                    child: Text("People",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 20),)),
              ),
              Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/hk.jpg")
                              )
                            ),
                          ),
                          Text("Hari krish",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/g.jpg")
                                )
                            ),
                          ),
                          Text("vishwa",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              // color: Colors.grey,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/g1.jpg"),
                                  fit: BoxFit.contain
                                )
                            ),
                          ),
                          Text("Gp",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/g5.jpg")
                                )
                            ),
                          ),
                          Text("Suresh",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/g3.jpg")
                                  )
                              ),
                            ),
                            Text("Asief",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/g4.jpg")
                                  )
                              ),
                            ),
                            Text("divakar",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/g6.jpg")
                                  )
                              ),
                            ),
                            Text("sharavP",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.2,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage("assets/g7.jpg")
                                  )
                              ),
                            ),
                            Text("Partha",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),)
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Business",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18,),),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.purple.shade300,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("💼 Explore",style: TextStyle(fontFamily:"ARLRDBD",color: Colors.black,fontSize: 18 ),),
                          ),
                        )
                      ],
                    )),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.green,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/ra1.jpg")
                            )

                            )
                          ),
                      Text("sri",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/my.jpg")
                            )
                          )
                      ),
                      Text("mine",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/ra.jpg")
                            )
                          )
                      ),
                      Text("Ram",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/g.jpg")
                              )
                          )
                      ),
                      Text("mapla",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18))
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text("Bills & recharges",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18),),
                      )),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text("No bills due,Try addin these",style: TextStyle(color: Colors.black,fontFamily: "ARLRDBD",fontSize: 18)),
                      ))
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width:  MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(12)
                        ),
                        child: Icon(Icons.mobile_screen_share_rounded,color: Colors.black,),
                      ),
                      Text("Mobile ",style: TextStyle(fontFamily: "ARLRDBD",color: Colors.black,fontSize: 18),),
                      Text("recharge",style: TextStyle(fontFamily: "ARLRDBD",color: Colors.black,fontSize: 18),)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width:  MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(12)
                        ),
                        child: Icon(Icons.tv_outlined,color: Colors.black,),
                      ),
                      Text("DTH/cable",style: TextStyle(fontFamily: "ARLRDBD",color: Colors.black,fontSize: 18),),
                      Text("TV",style: TextStyle(fontFamily: "ARLRDBD",color: Colors.black,fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width:  MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade300,
                          shape: BoxShape.circle,
                          // borderRadius: BorderRadius.circular(12)
                        ),
                        child: Icon(Icons.lightbulb_circle,color: Colors.black,size: 18,),
                      ),
                      Text("Electricity",style: TextStyle(fontFamily: "ARLRDBD",color: Colors.black,fontSize: 18),),
                      Text("Bill",style: TextStyle(fontFamily: "ARLRDBD",color: Colors.black,fontSize: 18),),
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width:  MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(
                    color: Colors.yellowAccent
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("See all",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18),)),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Offers & rewards",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black)),
                  )),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                          image: DecorationImage(
                            image: NetworkImage("https://storage.googleapis.com/support-kms-prod/fsjwPGV8GxhAiL7PO8vzsnZWEVwnBwYI2Bil"),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                      Text("Rewards",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              image: DecorationImage(
                                  image: NetworkImage("https://cdn.create.vista.com/api/media/small/171771732/stock-photo-price-tag"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Text("Offers",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                              image: DecorationImage(
                                  image: NetworkImage("https://t3.ftcdn.net/jpg/03/66/12/10/360_F_366121000_a9lf5Zb1o2xM9x4zb1D7LvBnD91Tghs6.jpg"),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Text("Referrals",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.speed_sharp,color: Colors.blue,),
                    title: Text("Check your sibil score for free",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black)),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black38,),
                  ),
                  ListTile(
                    leading: Icon(Icons.alarm,color: Colors.blue,),
                    title: Text("See transaction history",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black)),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black38,),
                  ),
                  ListTile(
                    leading: Icon(Icons.food_bank_outlined,color: Colors.blue,),
                    title: Text("Check bank balance",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.black)),
                    trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black38,),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height* 0.08,
                width: MediaQuery.of(context).size.width* 1,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Showing business based on your loaction - Learn more",style: TextStyle(fontFamily: "ARLRDBD",fontSize: 18,color: Colors.white),),
                ),
              )


            ],
          ),
        ),

      ),),
    );
  }
}
