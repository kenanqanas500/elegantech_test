import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/features/products/model/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final offer = product.activeOffer;
    int finalPrice = product.price;

    Widget? offerWidget;
    if (offer?.type == 'percentage') {
      offerWidget = Text(
        '-${offer?.value}% خصم',
        style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      );
    } else if (offer?.type == 'value') {
      finalPrice -= offer!.value;
      offerWidget = Column(
        children: [
          Text(
            '${product.price} ل.س',
            style: const TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
              fontSize: 8,
            ),
          ),
          Text(
            '$finalPrice ل.س',
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                product.mainMediaUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.nameAr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(product.descriptionAr, maxLines: 2, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 4),
                  Text('السعر: $finalPrice ل.س / ${product.unit}',
                      style: const TextStyle(color: Colors.black87)),
                  const SizedBox(height: 4),
                  if (offerWidget != null) offerWidget,
                  if (product.availableAt.isNotEmpty)
                    Text(
                      'المنطقة: ${product.availableAt[0].area.nameAr}',
                      style: const TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
