import 'package:app_1/store_app/model/all_product_model.dart';
import 'package:app_1/store_app/services/get_all_products.dart';
import 'package:flutter/material.dart';
import 'helper/custom_widget.dart';
class HomeStore extends StatelessWidget {
  const HomeStore({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:const Text('New Trend',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions:  [
         IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_cart,color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15,left: 15,top: 45.0),
        child:FutureBuilder<List<ProductModel>>(
          future:AllProducts().getAllProducts(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              List<ProductModel> data=snapshot.data!;
              return  GridView.builder(
                itemCount: data.length,
                physics: const BouncingScrollPhysics(),
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    mainAxisSpacing: 70,
                    crossAxisSpacing: 10,
                  ), itemBuilder: (context,index){
                return  CustomWidget(list:data[index],);
              });
            }
            else
            {
              return const Center(child: CircularProgressIndicator());
            }
          }),
        ),

    );
  }
}


