import 'package:get/get.dart';
import 'package:t_store/common/widgets/loaders/loaders.dart';
import 'package:t_store/data/repositories/product/product_repository.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/utils/constants/enums.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  //Variables
  final _productRepository = Get.put(ProductRepository());
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchFeaturedProducts();
  }

  //Load Fetured products Data
  Future<void> fetchFeaturedProducts() async {
    try {
      //Loading
      isLoading.value = true;

      //fetch categories from data source
      final products = await _productRepository.getFeaturedProducts();
      //Assign products
      featuredProducts.assignAll(products);

      //Filter featured categories
    } catch (e) {
      //Show error message
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    } finally {
      //Remove Loader
      isLoading.value = false;
    }
  }

  Future<List<ProductModel>> fetchAllFeaturedProducts() async {
    try {
      //fetch categories from data source
      final products = await _productRepository.getFeaturedProducts();
      return products;
    } catch (e) {
      //Show error message
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
      return [];
    }
  }

  //Get the product price or price range of variations
  String getProductPrice(ProductModel product) {
    double smallestPrice = double.infinity;
    double largestPrice = 0.0;

    //ifno variation existreturn thesimple priceorsale price
    if (product.productType == ProductType.single.toString()) {
      return (product.salePrice > 0 ? product.salePrice : product.price)
          .toString();
    } else {
      //calculate the smallest and largestprice among variations
      for (var variation in product.productVariations!) {
        double priceToConsider =
            variation.salePrice > 0.0 ? variation.salePrice : variation.price;

        //Update smallest and largest price
        if (priceToConsider < smallestPrice) {
          smallestPrice = priceToConsider;
        }
        if (priceToConsider > largestPrice) {
          largestPrice = priceToConsider;
        }
      }
      //if smallest andlargest price are the same return single price
      if (smallestPrice.isEqual(largestPrice)) {
        return largestPrice.toString();
      } else {
        return "$smallestPrice - \$$largestPrice";
      }
    }
  }

  //Calculate discount
  String? calculateSalePercentage(double originalPrice, double? salePrice) {
    if (salePrice == null || salePrice <= 0.0) return null;
    if (originalPrice <= 0) return null;

    double percentage = ((originalPrice - salePrice) / originalPrice) * 100;
    return percentage.toStringAsFixed(0);
  }

  //Check product stockstatus
  String getProductStockStatus(int stock) {
    return stock > 0 ? "In Stock" : "Out of Stock";
  }
}
