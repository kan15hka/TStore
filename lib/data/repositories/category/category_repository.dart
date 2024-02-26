import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/loaders/loaders.dart';
import 'package:t_store/data/services/firebase_storage_service.dart';
import 'package:t_store/features/shop/models/category_model.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/exceptions/firebase_exceptions.dart';
import 'package:t_store/utils/exceptions/format_exceptions.dart';
import 'package:t_store/utils/exceptions/platform_exceptions.dart';
import 'package:t_store/utils/popups/full_scree_loader.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  //Variables
  final _db = FirebaseFirestore.instance;

  //Getall categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection("Categories").get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnaphot(document))
          .toList();
      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Someting went wrong. Please try again";
    }
  }
  //Get Sub Categories

  // Upload Categories to Cloud firestore
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      TFullScreenLoader.openLoadingDialog(
          "Uploading Your Data...", TImages.cloudUploadingAimation);
      //Upload all categoryalong with their images
      final storage = Get.put(TFirebaseStorageService());

      for (var category in categories) {
        //Get image data lin from loacalassets
        final file = await storage.getImageDataFromAssets(category.image);

        //Uploadimage and get its url
        final url =
            await storage.uploadImageData("Categories", file, category.name);

        //assing url tocategory image attribute
        category.image = url;

        //Store Categoryin Firestore
        await _db
            .collection("Categories")
            .doc(category.id)
            .set(category.toJson());
      }
      TFullScreenLoader.stopLoading();
      TLoaders.succcesSnackBar(
          title: "Categories Uploaded",
          message: "The categories data has been successfully uploaded");
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw "Someting went wrong. Please try again";
    } finally {
      TFullScreenLoader.stopLoading();
    }
  }
}
