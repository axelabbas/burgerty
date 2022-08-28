import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int amount = 0;
  int price = 0;
  int itemPrice = 6000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://t4.ftcdn.net/jpg/02/44/61/19/360_F_244611927_yrh0ZIYwOGTDurVnCMAt7Cq8DR4sBkB0.jpg'),
                      )),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ],


        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'برغرتي',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(height:50,
                    width: MediaQuery.of(context).size.width,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        infocard("جيد جدا", Icons.emoji_emotions),
                        if(amount<5)
                          infocard("سعر التوصيل\n 1000 د.ع", Icons.motorcycle_outlined)
                        else
                          infocard("سعر التوصيل\n مجاني", Icons.motorcycle_outlined),
                      ],
                    ),
                  ),
                  Container(height:50,
                    width: MediaQuery.of(context).size.width,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        infocard("الحد الادنى للطلب\n5000 د.ع",Icons.circle),
                        infocard("المنصور",Icons.location_pin),
                      ],
                    ),),
                  Container(height:50,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: infocard("وقت التوصيل: نصف ساعه",Icons.timer),
                  ),
                ],
              ),
              Text(
                'برغر لحم بقري',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',fontSize: 20),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(5),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(.3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_upward_outlined),
                    Column(
                      children: [Text(
                        'الاضافات',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontFamily: 'Cairo',fontSize: 15),
                      ),Text(
                        'اختياري',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Cairo',fontSize: 12),
                      ),],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),

              Text(
                'تعليمات خاصه',
                style: TextStyle(

                    fontFamily: 'Cairo',fontSize: 15),
              ),
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(5),
                height: 60,
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(.3)
                ),
                child: Text(
                  'اي ملاحضات تخص الطلب يا نكدي',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontFamily: 'Cairo',fontSize: 12),
                ),
              ),
              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (amount>0)
                  GestureDetector(
                    child: Container(
                      width: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.grey.withOpacity(.3)
                      ),
                      child: Text('-',style: TextStyle(fontWeight: FontWeight.bold),),

                    ),
                    onTap: (){
                      if(amount>0){
                      setState(() {
                        amount = amount - 1;
                        price = itemPrice * amount;
                      });};
                    },)
                  else
                    Container(
                      width: 30,
                    ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(.3)
                    ),
                    child: Text(amount.toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                  ),
                  GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.withOpacity(.3)
                      ),
                      child: Text('+',style: TextStyle(fontWeight: FontWeight.bold),),

                    ),
                    onTap: (){
                      setState(() {
                        amount = amount+1;
                        price = itemPrice * amount;
                      });

                    },)
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '$price IQD',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',fontSize: 10),
                ),
              ),
              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.all(5),
                height: 60,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.redAccent
                ),
                child: Text(
                  'add to order list',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                      fontFamily: 'Cairo',fontSize: 20),
                ),
              ),
            ],
          ),
        ),]) ,

      ),
    );
  }

  Widget infocard(text, icon) {
    return Container(
      height: 50,
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(),
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
