import 'package:fhe_template/service/color_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../controller/product detail_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ProductDetailView extends StatelessWidget {
  final Map item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            item['picture'],
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 32.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 60.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back,
                                        size: 32.0,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 60.0),
                                      child: const Text(
                                        "Detail",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 84,
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.all(10),
                                            width: 36.0,
                                            height: 36.0,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(
                                                  8.0,
                                                ),
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.favorite_border,
                                              color: Colors.red,
                                              size: 24.0,
                                            ),
                                          ),
                                          const Icon(
                                            Icons.share_outlined,
                                            size: 26.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 400),
                      height: 380.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            36.0,
                          ),
                          topRight: Radius.circular(
                            36.0,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Container(
                              width: 40.0,
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item['product_name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                  Text(
                                    "\$ ${item['price']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 26.0,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: RatingBar.builder(
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                                itemSize: 20,
                                initialRating: 4,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              height: 40.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 120.0,
                                    child: Text(
                                      "Choose a color :",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 160.0,
                                    child: ListView.builder(
                                      itemCount: ColorsService.color.length,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        var item = ColorsService.color[index];
                                        return Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: InkWell(
                                            onTap: () {
                                              controller.selevtedIndex =
                                                  item['id'].toString();
                                              controller.update();
                                            },
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  (controller.selevtedIndex ==
                                                          item['id'].toString())
                                                      ? Colors.grey
                                                      : Colors.white,
                                              radius: 14,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.white,
                                                radius: 12,
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      item['color'],
                                                  radius: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            SizedBox(
                              height: 30.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 120.0,
                                    child: Text(
                                      "Select Quality :",
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(right: 14.0),
                                    width: 94.0,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(24.0),
                                      ),
                                    ),
                                    child: SizedBox(
                                      height: 100.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Icon(
                                            Icons.remove,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                          Container(
                                            width: 32,
                                            decoration: const BoxDecoration(
                                              color: Color(0xffE7E7E7),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.add,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              height: 80.0,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  height: 1.5,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey[400],
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              height: 44.0,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  backgroundColor: const Color(0xff9C9290),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
