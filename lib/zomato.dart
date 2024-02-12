import 'package:flutter/material.dart';
import 'package:youtube/model.dart';

class zoma extends StatefulWidget {
  const zoma({super.key});

  @override
  State<zoma> createState() => _zomaState();
}

class _zomaState extends State<zoma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [SliverAppBar(
          expandedHeight: 50,
          backgroundColor: Colors.white,
          title: ListTile(
           title: Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Icon(Icons.location_on_outlined,color: Colors.redAccent,size: 28),
               Text(" Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 22),),
               Padding(
                 padding: const EdgeInsets.only(top: 6.0),
                 child: Icon(Icons.keyboard_arrow_down,color: Colors.grey,size: 26,),
               )
             ],
           ),

          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.language,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person,color: Colors.black,),
            ),
          ],

        )];
      }, body:Container(
        height: double.infinity,
        width: 420,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.redAccent,),
                    hintText: "search Biriyani",hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                    suffixIcon: Icon(Icons.settings_voice,color: Colors.redAccent,),
                    border: OutlineInputBorder()
                  ),
                ),
              ),
              Container(
                height: 170,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)

                  ),
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.grabon.in/gograbon/images/web-images/uploads/1658919238810/zomato-coupons.jpg"),
                    fit: BoxFit.fill
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("E X P L O R E ",style: TextStyle(color: Color(0xff586375),fontStyle: FontStyle.normal),),
              ),
              Container(
                height: 137,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)

                  ),

                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Offers",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),

                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(" up to 60% OFF ,Flat Discounts,",style: TextStyle(color: Color(0xff586375)),),
                            Text("and others great others ,",style: TextStyle(color: Color(0xff586375)),)
                          ],
                        ),
                        Container(
                          height: 88,
                          width: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://assets-v2.lottiefiles.com/a/749eae30-117b-11ee-b817-339b21bf6ffe/g1KvmX3MP4.gif")
                            )
                          ),
                        )
                      ],
                    )
                  ],

                ),
              ),
              Text("W H A T 'S  O N  Y O U R  M I N D? ",style: TextStyle(color: Color(0xff586375)),),
              Container(
                height: 120,
                width: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: nv.length,
                    itemBuilder: (BuildContext  context,index){
                    return Column(
                      children: [
                        Container(
                          height: 85,
                          width: 110,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(nv[index].image),
                              fit: BoxFit.cover
                            )
                          ),

                        ),
                        Text(nv[index].text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)
                      ],
                    );
                    }
                ),
              ),
              Text("A L L R E S T U R A N T S",style: TextStyle(color: Color(0xff586375)),),

              Container(
                height: 50,
                width: 420,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:goi.length,
                    itemBuilder: (BuildContext  context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                            )
                          ),
                          child: Center(child: Text(goi[index].text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)),
                        ),
                      );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("203 resturants delivering to you",style: TextStyle(color: Color(0xff586375)),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("F E A T U R E D ",style: TextStyle(color: Color(0xff586375)),),
              ),
              Stack(
                children: [
                  Container(
                    height: 360,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),

                      )
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 420,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),

                              ),
                            image: DecorationImage(
                              image: NetworkImage("https://media-cdn.tripadvisor.com/media/photo-s/02/98/3b/76/filename-01-1-jpg-thumbnail0.jpg"),
                              fit: BoxFit.fill
                            )
                          ),
                        )
                      ],
                    ),

                    ),

                  Positioned(
                    right: 5,
                      top: 3,
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.thumb_up_sharp,color: Colors.white,size: 26,),
                        // child: Text("❤️",style: TextStyle(color: Colors.white,fontSize:26),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.more_vert,color: Colors.white,),
                      ),
                    ],


                  )
                  ),
                  Positioned(
                    left: 5,
                      top: 20,
                      child: Container(
                            height: 26,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8),
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              )
                            ),
                            child: Center(child: Text("dosa:₹99",style: TextStyle(color: Colors.black),)),
                  ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Tirupur Sree Annapoorna",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w500,fontSize: 20),),
                         Padding(
                           padding: const EdgeInsets.only(left: 70.0),
                           child: Container(
                             height: 26,
                             width: 48,
                             decoration: BoxDecoration(
                                 color: Colors.green,
                                 borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(8),
                                   topLeft: Radius.circular(8),
                                   bottomLeft: Radius.circular(8),
                                   bottomRight: Radius.circular(8),
                                 )
                             ),
                             child: Center(child: Text("4.5⭐",style: TextStyle(color: Colors.white),)),

                           ),
                         )
                        ],
                      ),
                    ),),
                  Positioned(
                    bottom: 60,
                      left: 4,
                      child: Column(
                    children: [
                      Text(" South Indian. ₹100 for one",style: TextStyle(color: Color(0xff757c8d),fontWeight: FontWeight.w600,fontSize: 16),),
                      Text("⌚ 15-20 min 2.0km",style: TextStyle(color: Color(0xff757c8d),fontWeight: FontWeight.w600,fontSize: 16))
                    ],
                  )),
                  Positioned(
                    bottom: 30,
                      left: 6,
                      child: Text(" Flat ₹50  OFF above ₹199",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w700,fontSize: 16,fontStyle: FontStyle.italic),))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 269,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    )
                  ),

                  child: Column(
                    children: [
                      Text("Top brands loved by customers ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
                      Container(
                        height: 240,
                        color: Colors.white,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemCount: food.length,
                            itemBuilder: (BuildContext  context,index){
                            return Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 120,
                                    width: 175,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                      image: DecorationImage(
                                        image: NetworkImage(food[index].image),
                                        fit: BoxFit.cover
                                      )
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 80,
                                    left: 26,
                                    child: Row(
                                      children: [
                                        Text(food[index].text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 20,
                                            width: 44,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(6),
                                                topLeft: Radius.circular(6),
                                                bottomLeft: Radius.circular(6),
                                                bottomRight: Radius.circular(6),
                                              ),
                                            ),
                                            child: Center(child: Text("4.1⭐",style: TextStyle(color: Colors.white),)),
                                          ),
                                        )
                                      ],
                                    )),
                                Positioned(
                                  bottom: 60,
                                    left: 2,
                                    child: Text("⌚ 30 -35 min +4 Km",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)),
                                Positioned(
                                  bottom: 30,
                                    left: 2,
                                    child: Text(" 10 % OFF upto ₹100",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w700,fontSize: 16),))
                               ],
                            );
                            }
                        ),
                      )
                    ],
                  ),


                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 370,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.limeAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),

                        )
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: 420,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),

                              ),
                              image: DecorationImage(
                                  image: NetworkImage("https://img.freepik.com/premium-photo/mutton-lamb-biriyani-with-basmati-rice-served-bowl-moody-background_466689-72544.jpg"),
                                  fit: BoxFit.fill
                              )
                          ),
                        )
                      ],
                    ),

                  ),

                  Positioned(
                      right: 5,
                      top: 3,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.thumb_up_sharp,color: Colors.white,size: 26,),
                            // child: Text("❤",style: TextStyle(color: Colors.white,fontSize:26),),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.more_vert,color: Colors.white,),
                          ),
                        ],


                      )
                  ),
                  Positioned(
                    left: 5,
                    top: 20,
                    child: Container(
                      height: 26,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          )
                      ),
                      child: Center(child: Text("Biriyani:₹199",style: TextStyle(color: Colors.black),)),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Cockarako Biriyani",style: TextStyle(color: Colors.brown,fontWeight: FontWeight.w500,fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(left: 140.0),
                            child: Container(
                              height: 26,
                              width: 48,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  )
                              ),
                              child: Center(child: Text(" 4.5⭐",style: TextStyle(color: Colors.white),)),

                            ),
                          )
                        ],
                      ),
                    ),),
                  Positioned(
                      bottom: 60,
                      left: 4,
                      child: Column(
                        children: [
                          Text(" South Indian. ₹100 for one",style: TextStyle(color: Color(0xff757c8d),fontWeight: FontWeight.w600,fontSize: 16),),
                          Text("⌚ 10-15 min 1.6km",style: TextStyle(color: Color(0xff757c8d),fontWeight: FontWeight.w600,fontSize: 16))
                        ],
                      )),
                  Positioned(
                      bottom: 30,
                      left: 6,
                      child: Text(" Flat ₹50  OFF above ₹199",style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w700,fontSize: 16,fontStyle: FontStyle.italic),))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("Thank you",style: TextStyle(color: Colors.white),),
              )

      ],
          ),
        ),
      )

      ),
    );
  }
}
