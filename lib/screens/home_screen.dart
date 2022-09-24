import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scoffold_widget/model/product_model.dart';

import '../providers/home_provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//HomeModel? homeModel;
class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
     Provider.of<HomeProvider>(context, listen: false)
           .getAllData();
    // TODO: implement initState
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context,homeProv,child){
        return homeProv.data==null?
        Center(
          child: CircularProgressIndicator(color: Colors.blue),
        ):
        Column(
        children: [
    //LLLLLLLLLLLLLLLLL
            Expanded(
              child:
             GridView.builder(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio: .8),
                itemCount:homeProv.data!.data!.products.length,
                itemBuilder: (context, index) {
                  return homeProv.data!.data!.products.isEmpty?CircularProgressIndicator():
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                             
                                width: MediaQuery.of(context).size.height,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0)),
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image:homeProv.data!.data!.products[index].image == null
                                        ? NetworkImage(
                                            "https://cutz.com.eg/uploads/product_images/default.png")
                                        : NetworkImage(
                                          homeProv.data!.data!.products[index].image.toString()),
                                  ),
                                )),
                            Positioned(
                                right: 10,
                                top: 5,
                                child: Icon(Icons.favorite_border,
                                    color: Colors.blue)),
                            Positioned(
                                left: 10,
                                top: 0.0,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xffBFE2FF),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(4.0),
                                        bottomLeft: Radius.circular(4.0)),
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(Icons.flash_on,
                                          color: Color(0xffdb1313), size: 20.0),
                                      Text(
                                       homeProv.data!.data!.products[index].discount == null
                                            ? "0%"
                                            : homeProv.data!.data!.products[index].discount.toString()+"%",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        ListTile(
                          isThreeLine: false,
                          title: Text(
                            homeProv.data!.data!.products[index].name!,
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            homeProv.data!.data!.products[index].name!,
                            maxLines: 1,
                          ),
                          minVerticalPadding: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                 homeProv.data!.data!.products[index].price==null
                                      ? SizedBox()
                                      : Row(
                                          children: [
                                            Text("EGP"),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text("${ homeProv.data!.data!.products[index].price.toString()}"),
                                          ],
                                        ),
                                  Row(
                                    children: [
                                      Text("EGP"),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                     homeProv.data!.data!.products[index].old_price == null
                                            ? ""
                                            :  homeProv.data!.data!.products[index].old_price.toString(),
                                        style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey[400]),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffCA252B)),
                                child: Icon(Icons.shopping_cart_outlined,
                                    color: Colors.white, size: 20),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]);
      },
    );
  }
}
//  Consumer<HomeProvider>(
//       builder: (context,homeProv,child){
//         return Scaffold(
//         body: Column(children: [
//           // Container(
//           //   width: MediaQuery.of(context).size.width,
//           //   height: 100.0,
//           //   child: ListView.builder(
//           //       itemCount: brand.length,
//           //       padding: EdgeInsets.symmetric(horizontal: 10.0),
//           //       scrollDirection: Axis.horizontal,
//           //       itemBuilder: (context, index) {
//           //         return Container(
//           //             height: 50.0,
//           //             width: 50.0,
//           //             alignment: Alignment.center,
//           //             margin: EdgeInsets.symmetric(horizontal: 5.0),
//           //             decoration: BoxDecoration(
//           //               shape: BoxShape.circle,
//           //               color: Colors.grey[200],
//           //               image: DecorationImage(
//           //                 fit: BoxFit.contain,
//           //                 image: brand[index].logo == null
//           //                     ? NetworkImage(
//           //                         "https://cutz.com.eg/uploads/product_images/default.png")
//           //                     : NetworkImage(brand[index].logo.toString()),
//           //               ),
//           //             ));
//           //       }),
//           // ),
//           //horizantalList(context,data.allProducts.length,data),
//           Expanded(
//             child:homeProv.data==null?Center(
//                   child: CircularProgressIndicator(),
//                 ): GridView.builder(
//               physics: ScrollPhysics(),
//               shrinkWrap: true,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 1.0,
//                   mainAxisSpacing: 4.0,
//                   childAspectRatio: .8),
//               itemCount:homeProv.data!.data!.products.length,
//               itemBuilder: (context, index) {
//                 return homeProv.data!.data!.products.isEmpty?
//                 Center(
//                   child: CircularProgressIndicator(),
//                 ):
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     children: [
//                       Stack(
//                         children: [
//                           Container(
//                               width: MediaQuery.of(context).size.height,
//                               height: 100.0,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(10.0),
//                                     topRight: Radius.circular(10.0)),
//                                 image: DecorationImage(
//                                   fit: BoxFit.fill,
//                                   image: homeProv.data!.data!.products[index].image == null
//                                       ? NetworkImage(
//                                           "https://cutz.com.eg/uploads/product_images/default.png")
//                                       : NetworkImage(
//                                           homeProv.data!.data!.products[index].image.toString()),
//                                 ),
//                               )),
//                           Positioned(
//                               right: 10,
//                               top: 5,
//                               child: Icon(Icons.favorite_border,
//                                   color: Colors.blue)),
//                           Positioned(
//                               left: 10,
//                               top: 0.0,
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(horizontal: 3.0),
//                                 decoration: BoxDecoration(
//                                   color: Color(0xffBFE2FF),
//                                   borderRadius: BorderRadius.only(
//                                       bottomRight: Radius.circular(4.0),
//                                       bottomLeft: Radius.circular(4.0)),
//                                 ),
//                                 child: Column(
//                                   children: [
//                                     Icon(Icons.flash_on,
//                                         color: Color(0xffdb1313), size: 20.0),
//                                     Text(
//                                       homeProv.data!.data!.products[index].discount == null
//                                           ? "0%"
//                                           : homeProv.data!.data!.products[index].discount.toString()+"%",
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 11,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   ],
//                                 ),
//                               )),
//                         ],
//                       ),
//                       ListTile(
//                         isThreeLine: false,
//                         title: Text(
//                            homeProv.data!.data!.products[index].name!,
//                           maxLines: 1,
//                         ),
//                         subtitle: Text(
//                          homeProv.data!.data!.products[index].name!,
//                           maxLines: 1,
//                         ),
//                         minVerticalPadding: 2,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                         child: Row(
//                           children: [
//                             Column(
//                               children: [
//                               homeProv.data!.data!.products[index].price==null
//                                     ? SizedBox()
//                                     : Row(
//                                         children: [
//                                           Text("EGP"),
//                                           SizedBox(
//                                             width: 5.0,
//                                           ),
//                                           Text("${homeProv.data!.data!.products[index].price}"),
//                                         ],
//                                       ),
//                                 Row(
//                                   children: [
//                                     Text("EGP"),
//                                     SizedBox(
//                                       width: 5.0,
//                                     ),
//                                     Text(
//                                     homeProv.data!.data!.products[index].old_price == null
//                                           ? ""
//                                           : homeProv.data!.data!.products[index].old_price.toString(),
//                                       style: TextStyle(
//                                           decoration: TextDecoration.lineThrough,
//                                           color: Colors.grey[400]),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                             Spacer(),
//                             Container(
//                               height: 30.0,
//                               width: 30.0,
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   color: Color(0xffCA252B)),
//                               child: Icon(Icons.shopping_cart_outlined,
//                                   color: Colors.white, size: 20),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ]),
//       );
//       },
//     );
// Widget horizantalList(context,int length,data){
//   return 
// }
///*************************************GridView Card******************************************* */
 