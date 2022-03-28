import 'package:flutter/material.dart';

class Product {
  final String? pinCode,
      title,
      checkAvailability,
      urlImage,
      firstPrice,
      secondPrice,
      rate,
      numOfReview,
      description,
      moreInfo,
      deliverBy;
  final List<Color>? colorList;
  final List<String>? sizeList;

  Product({
    this.pinCode,
    this.title,
    this.checkAvailability,
    this.urlImage,
    this.firstPrice,
    this.secondPrice,
    this.rate,
    this.numOfReview,
    this.description,
    this.moreInfo,
    this.deliverBy,
    this.colorList,
    this.sizeList,
  });
}

List<Product> productList = [
  Product(
    pinCode: "12",
    title: "Red Dress",
    checkAvailability: "12",
    urlImage: "assets/products/dress/dress_8.jpeg",
    firstPrice: "\$17",
    secondPrice: "\$16",
    rate: "3.0",
    numOfReview: "6",
    description:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    moreInfo:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    deliverBy: "25 June, Monday",
    colorList: [Colors.blue, Colors.black],
    sizeList: ['L', 'M', 'S', 'XL'],
  ),
  Product(
    pinCode: "12",
    title: "Red Dress",
    checkAvailability: "12",
    urlImage: "assets/products/dress/dress_8.jpeg",
    firstPrice: "\$17",
    secondPrice: "\$16",
    rate: "3.0",
    numOfReview: "6",
    description:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    moreInfo:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    deliverBy: "25 June, Monday",
    colorList: [Colors.blue, Colors.black],
    sizeList: ['L', 'M', 'S', 'XL'],
  ),
  Product(
    pinCode: "12",
    title: "Red Dress",
    checkAvailability: "12",
    urlImage: "assets/products/dress/dress_8.jpeg",
    firstPrice: "\$17",
    secondPrice: "\$16",
    rate: "3.0",
    numOfReview: "6",
    description:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    moreInfo:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    deliverBy: "25 June, Monday",
    colorList: [Colors.blue, Colors.black],
    sizeList: ['L', 'M', 'S', 'XL'],
  ),
  Product(
    pinCode: "12",
    title: "Red Dress",
    checkAvailability: "12",
    urlImage: "assets/products/dress/dress_8.jpeg",
    firstPrice: "\$17",
    secondPrice: "\$16",
    rate: "3.0",
    numOfReview: "6",
    description:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    moreInfo:
        "Our Forever pumps are a classic and elegant style that you will wear season after season. Made in Italy from our velvety sue abc xyz",
    deliverBy: "25 June, Monday",
    colorList: [Colors.blue, Colors.black],
    sizeList: ['L', 'M', 'S', 'XL'],
  ),
];
