import 'package:app_1/store_app/model/all_product_model.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key,required this.list}) : super(key: key);
final ProductModel list;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                 Text(list.title.substring(0,10),style: const TextStyle(color: Colors.grey),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(r'$' '${list.price.toString()}'),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite),color: Colors.red,)
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(bottom: 90,right: 30, child: Image.network(list.image,height: 80,width: 80,)),
      ],
    );
  }
}