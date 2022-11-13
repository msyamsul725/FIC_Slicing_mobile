import 'package:flutter/material.dart';

import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.grey[100],
          body: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.short_text,
                            size: 32.0,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.search,
                            size: 32.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170.0),
                    child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: const Text(
                        "Discover the most modern furniture",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          height: 1.2,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16.0),
                    height: 34.0,
                    child: ListView.builder(
                      itemCount: MenuButton.menuButton.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = MenuButton.menuButton[index];
                        return InkWell(
                          onTap: () {
                            controller.selectedIndex = item['index'].toString();
                            controller.update();
                          },
                          child: Container(
                            width: 90.0,
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: (controller.selectedIndex ==
                                      item['index'].toString())
                                  ? const Color(0xfff9c9290)
                                  : Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                item['name_buttton'],
                                style: TextStyle(
                                  color: (controller.selectedIndex ==
                                          item['index'].toString())
                                      ? Colors.white
                                      : Colors.black54,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 14.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Recommended Furnitures",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 400.0,
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.28,
                      ),
                      itemCount: ProductServices.product.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = ProductServices.product[index];

                        return SizedBox(
                          height: 200,
                          width: 180.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(ProductDetailView(item: item));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 126.0,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          "${item['picture']}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.all(10),
                                          width: 30.0,
                                          height: 30.0,
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
                                      ],
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                  ),
                                  child: Container(
                                    color: Colors.white,
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["product_name"],
                                          style: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "\$ ${item['price']}",
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[500]!,
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.star,
                                              size: 18.0,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 8.0,
                                            ),
                                            Text(
                                              "${item['rating']}",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[400]!,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
