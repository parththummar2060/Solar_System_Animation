import 'dart:math';

import 'package:flutter/material.dart';
import 'package:projectanimation2/modelclass/mocel_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 5000,
      ),
    );
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GALAXY PLANETS"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.search),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.desktopbackground.org/p/2011/05/05/198539_tap-and-get-the-free-app-space-planet-blue-earth-astronomy-cool_736x1308_h.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: allDetails.map((e) => myDetail(e)).toList(),
      ),
          ),
    ],),
    );
  }
  Widget myDetail(e){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: (){
            Navigator.of(context).pushNamed("second_page",arguments: e);
          },
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(30, 15, 15, 15),
                height: 150,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(e.name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                      const Text("Milk way galaxy",style: TextStyle(color: Colors.white60,fontSize: 15),),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on),
                            Text(e.location),
                            Spacer(),
                            Text(e.sunDistance),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Hero(
                tag: e.name,
                child: AnimatedBuilder(
                  animation: _controller,
                  child: Image.network(
                    e.img,
                    scale: e.scale,
                  ),
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * pi,
                      child: child,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
