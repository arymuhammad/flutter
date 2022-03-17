import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/product.dart';
import 'detail_page_view.dart';
import 'package:intl/intl.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'id_ID');

    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, left: 0, right: 0),
        child: InkWell(
          onTap: () => Get.to(
            () => DetailPageView(),
            arguments: [
              product.id.toString(),
              product.title,
              product.price,
              product.description,
              product.category,
              product.image,
              product.rating.rate,
              product.rating.count
            ],
            transition: Transition.cupertino,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Obx(() => CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon: product.isFavorite.value
                                ? const Icon(Icons.favorite_rounded)
                                : const Icon(Icons.favorite_border),
                            onPressed: () {
                              product.isFavorite.toggle();
                            },
                          ),
                        )),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text(
                  product.title,
                  maxLines: 1,
                  style: const TextStyle(
                      fontFamily: 'avenir', fontWeight: FontWeight.w800),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: Text('${formatCurrency.format(product.price)}',
                    style: const TextStyle(
                        fontSize: 18, fontFamily: 'avenir', color: Colors.red)),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (product.rating != null)
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 2),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              product.rating.rate.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    const Spacer(),
                    Container(
                      // decoration: BoxDecoration(
                      //   color: Colors.green,
                      //   borderRadius: BorderRadius.circular(12),
                      // ),
                      // margin: EdgeInsets.only(right: 1),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Terjual ' + product.rating.count.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 15, 10, 10)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
