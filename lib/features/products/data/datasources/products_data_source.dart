import 'dart:convert';
import 'package:flutter/foundation.dart';
import "package:http/http.dart" as http;
import '../../../../core/environment/environment.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../data/models/products_models_export.dart';
import '../../domain/entities/products_entities_export.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsDataSource {
  Future<ProductsModel> getProducts(ProductsData data);
}

@LazySingleton(as: ProductsDataSource)
class ProductsDataSourceImpl implements ProductsDataSource {
  final http.Client client;

  ProductsDataSourceImpl({required this.client});

  @override
  Future<ProductsModel> getProducts(ProductsData data) async {
    final response = await client.get(
      Uri.parse(
          '${Env.apiUrl}/products?limit=${data.limit}&skip=${data.offset}'),
      headers: <String, String>{
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    );

    final result = json.decode(response.body);

    if ([200, 201].contains(response.statusCode)) {
      return compute(ProductsModel.fromJson, result as Map<String, dynamic>);
    } else {
      throw ServerException(msg: result);
    }
  }
}
