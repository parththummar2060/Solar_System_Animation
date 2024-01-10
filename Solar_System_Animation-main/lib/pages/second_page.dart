import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with TickerProviderStateMixin {

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

    dynamic e = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage("https://wallpaperaccess.com/full/37638.jpg"),fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                height: double.infinity,
                width: double.infinity,
                color: const Color(0xff54759E),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 120,),
                      const Text("OverView",style: TextStyle(color: Colors.white,fontSize: 25),),
                      const SizedBox(height: 20,),
                      Text(e.data,style: const TextStyle(color: Colors.white70, fontSize: 18),),
                    ],
                  ),
                ),
              ),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                  color: const Color(0xff54759E).withOpacity(0.3),

                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Hero(
                        tag:e.name,
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
                      ),
                      const SizedBox(height: 10,),
                      Text(e.name,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                      const SizedBox(height: 10,),
                      const Text("Milk way galaxy",style: TextStyle(color: Colors.black,fontSize: 15),),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on),
                            Text(e.location),
                            const Spacer(),
                            Text(e.sunDistance),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  const SizedBox(height: 90,),
                  IconButton(onPressed: (){Navigator.of(context).pop();}, icon: const Icon(Icons.arrow_back),color: Colors.white,),
                  const Spacer(),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),color: Colors.white,),
                ],
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
