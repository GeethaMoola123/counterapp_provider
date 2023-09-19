import 'package:counterapp_provider/providers/counter_decrement.dart';
import 'package:counterapp_provider/providers/counter_increment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    final counter=Provider.of<CounterIncrement>(context);
    final counter1=Provider.of<CounterDecrement>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${counter.count.toString()}",style: TextStyle(fontSize: 28),),
          Text("${counter1.count.toString()}",style: TextStyle(fontSize: 28),),
        ],
      ),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed:(){
            counter.Increment();
          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed:(){
            counter1.Decrement();
          },child: Icon(Icons.minimize),),
        ],
      ) ,
    );
  }
}
