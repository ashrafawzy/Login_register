import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fashion store"),elevation:0,backgroundColor: Colors.transparent,foregroundColor: mainColor,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            SizedBox(
              height: 50,
              child: TextFormField(
                enabled: false,
                onChanged: (input)
                {

                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.3),
                    suffixIcon: InkWell(
                      onTap: (){},
                      child: Icon(Icons.clear),
                    ),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    )
                ),
              ),
            ),


            Row(
              children:
              [
                Text("Categories",style: TextStyle(color: mainColor,fontWeight: FontWeight.bold,fontSize: 18),),
                Spacer(),
                Text("View All"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
