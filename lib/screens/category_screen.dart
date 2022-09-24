import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoffold_widget/providers/category_provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
   @override
  void initState() {
     Provider.of<CategoryProvider>(context, listen: false)
           .getAllCategory();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
      builder: (context,category,child){
        return category.category==null? 
        Center(child: CircularProgressIndicator(color:  Colors.blue,)):
        ListView.builder(
        itemCount: category.category!.data!.data!.length,
        itemBuilder: (context,index){
          return Container(
            height: 200,
           margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(category.category!.data!.data![index].image!,
                  fit:BoxFit.fill, 
                  width: MediaQuery.of(context).size.width,
                  ),
                ),
                Text("${category.category!.data!.data![index].name!}")
    
              ],
            ),
          );
        }
        );
      },
    );
    
  }
}








/* Consumer<CategoryProvider>(
      builder: (context,data,child){
        return ListView.builder(
          padding: EdgeInsets.only(top: 20.0),
        itemCount:data.data!.data!.data!.length ,
        itemBuilder: (context,index){
          return Container(
            height: 160.0,
            margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(data.data!.data!.data![index].image!,fit: BoxFit.fill,width:MediaQuery.of(context).size.width,)),
                Text(data.data!.data!.data![index].name!)

              ],
            ),
          );
    
      });
      },
    ); */