import 'package:flutter/material.dart';
import 'package:youtube/model.dart';

class hom extends StatefulWidget {
  const hom({super.key});

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [SliverAppBar(
          pinned: true,
          expandedHeight: 100,
          backgroundColor: Colors.white,
          leading: Image.asset("assets/y.png",width: 120,),
          title: Text("Youtube",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.cast),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        )];
      }, body: Container(
        height: double.infinity,
        width: 420,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hari.length,
                  itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),foregroundColor: Colors.white,backgroundColor: Colors.black),onPressed: (){}, child: Text(hari[index].text)),
                    );
                  },
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pei.jpg"),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                  // Positioned(
                  //   right: 2,
                  //     top: 2,
                  //     child: Icon(Icons.volume_up,color: Colors.brown,)),
                  Positioned(
                    right: 2,
                      bottom: 2,
                      child: Text("20.22",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),)),
                  Positioned(
                    top: 80,
                      left: 183,
                      child: Icon(Icons.pause,color: Colors.white,size: 30,))
                ],
              ),
              ListTile(
                leading: Container(
                  height: 60,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/btr.jpg")
                    )
                  ),
                ),
                title: Text("#Ghost stories Subscriber Real life ghost Experience",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 14),),
                subtitle: Text("Back To Rewind 12k views 13 hours ago",style: TextStyle(color:Colors.grey),),
                trailing: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Icon(Icons.more_vert,color: Colors.black,size: 20,),
                )
              ),
              Container(
                height: 100,
                width: 380,
                decoration: BoxDecoration(
                    color: Color(0xff272727),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
          
                  )
                  ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(" Comments",style: TextStyle(color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/hk.jpg")
                              )
                            ),
                          ),
                          Container(
                            height: 33,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color(0xff3d3d3d),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
          
                                )
                            ),
          
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Add a comments...",style: TextStyle(color: Colors.white),),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage("https://logowik.com/content/uploads/images/youtube-shorts5863.jpg"),
          
                      )
                    ),
                  ),
                  Text("Shorts",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),)
                ],
              ),
              Container(
                height: 400,
                width: 400,
                child: GridView.builder(
                  // shrinkWrap: true,
                  //   physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                  itemCount:Krish.length,
                  itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 400,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8)
                            ),
                            image: DecorationImage(
                              image: NetworkImage(Krish[index].image),
                              fit: BoxFit.cover
                            )
                          ),
                              child:  Align(
                                alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(Krish[index].text, style: TextStyle(color: Colors.white),),
                                  )),
                        ),
                      );
                  },
                ),
              ),
              Container(
                height: 510,
                width: 420,
                child: Column(
                  children: [
                    ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/btr.jpg")
                          )
                        ),
                      ),
                      title: Text("Back To Rewind",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                      subtitle: Text("2 days ago",style: TextStyle(color: Color(0xff3d3d3d)),),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Republic day sale",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                        )),
                    Container(
                      height: 230,
                      width: 420,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://tricksrecharge.com/wp-content/uploads/2023/02/IMG_20230210_215144_786.webp")
                        )
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.thumb_up),
                            ),
                            Text(" 114",style: TextStyle(color: Colors.black)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Icon((Icons.thumb_down)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250.0),
                              child: Icon(Icons.comment),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Color(0xff272727),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8)
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Comments",style: TextStyle(color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage("assets/hk.jpg")
                                        )
                                      ),
                                    ),
                                    Container(
                                      height: 33,
                                      width: 280,
                                      decoration: BoxDecoration(
                                        color: Color(0xff3d3d3d),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            topLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8)
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Add a comments",style: TextStyle(color: Colors.white),),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      )
      ),

    );
  }
}
