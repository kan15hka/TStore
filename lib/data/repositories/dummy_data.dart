import 'package:t_store/features/shop/models/banner_model.dart';
import 'package:t_store/features/shop/models/brand_model.dart';
import 'package:t_store/features/shop/models/category_model.dart';
import 'package:t_store/features/shop/models/product_attribute_model.dart';
import 'package:t_store/features/shop/models/product_model.dart';
import 'package:t_store/features/shop/models/product_variation_model.dart';
import 'package:t_store/routes/routes.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class TDummyData {
  ////////////////////BANNERS///////////////////////

  static final List<BannerModel> oldBanners = [
    BannerModel(
      imageUrl: TImages.banner1,
      targetScreen: TRoutes.order,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner2,
      targetScreen: TRoutes.cart,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner3,
      targetScreen: TRoutes.favourites,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner4,
      targetScreen: TRoutes.search,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner5,
      targetScreen: TRoutes.settings,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner6,
      targetScreen: TRoutes.userAddress,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner7,
      targetScreen: TRoutes.store,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.banner8,
      targetScreen: TRoutes.checkout,
      active: true,
    ),
  ];
  static final List<BannerModel> banners = [
    BannerModel(
      imageUrl: TImages.promoBanner1,
      targetScreen: TRoutes.order,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.promoBanner2,
      targetScreen: TRoutes.cart,
      active: true,
    ),
    BannerModel(
      imageUrl: TImages.promoBanner3,
      targetScreen: TRoutes.favourites,
      active: true,
    ),
  ];
  ////////////////////CATEGORIES////////////////////
  static final List<CategoryModel> categories = [
    CategoryModel(
      id: "1",
      name: "Sports",
      image: TImages.sportIcon,
      isFeatured: true,
    ),
    CategoryModel(
        id: "5",
        name: "Furniture",
        image: TImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: "2",
        name: "Electronics",
        image: TImages.electronicsIcon,
        isFeatured: true),
    CategoryModel(
      id: "3",
      name: "Clothes",
      image: TImages.clothIcon,
      isFeatured: true,
    ),
    CategoryModel(
      id: "4",
      name: "Animals",
      image: TImages.animalIcon,
      isFeatured: true,
    ),
    CategoryModel(
      id: "6",
      name: "Shoes",
      image: TImages.shoeIcon,
      isFeatured: true,
    ),
    CategoryModel(
        id: "7",
        name: "Cosmetics",
        image: TImages.cosmeticsIcon,
        isFeatured: true),
    CategoryModel(
        id: "14",
        name: "Jwellery",
        image: TImages.jeweleryIcon,
        isFeatured: true),

    //SubCategories
    //Sports
    CategoryModel(
        id: "8",
        name: "Sport Shoes",
        image: TImages.sportIcon,
        parentId: "1",
        isFeatured: false),
    CategoryModel(
        id: "9",
        name: "Track Suits",
        parentId: "1",
        image: TImages.sportIcon,
        isFeatured: false),
    CategoryModel(
        id: "10",
        name: "Sport Equipments",
        parentId: "1",
        image: TImages.sportIcon,
        isFeatured: false),

    //Furnitures
    CategoryModel(
        id: "11",
        name: "Bedroom furniture",
        image: TImages.furnitureIcon,
        parentId: "5",
        isFeatured: false),
    CategoryModel(
        id: "12",
        name: "Kitchen furniture",
        parentId: "5",
        image: TImages.furnitureIcon,
        isFeatured: false),
    CategoryModel(
        id: "13",
        name: "Office furniture",
        parentId: "5",
        image: TImages.furnitureIcon,
        isFeatured: false),

    //electronics
    CategoryModel(
        id: "14",
        name: "Laptop",
        image: TImages.electronicsIcon,
        parentId: "2",
        isFeatured: false),
    CategoryModel(
        id: "15",
        name: "Mobile",
        image: TImages.electronicsIcon,
        parentId: "2",
        isFeatured: false),

    CategoryModel(
        id: "16",
        name: "Shirts",
        image: TImages.clothIcon,
        parentId: "3",
        isFeatured: false),
  ];

  ////////////////////////PRODUCTS///////////////////////////
  static final List<ProductModel> products = [
    ProductModel(
      id: "001",
      stock: 15,
      price: 135,
      title: "Green Nike Sports shoe",
      isFeatured: true,
      thumbnail: TImages.productImage1,
      description: "Green Nike Sports shoe",
      brand: BrandModel(
          id: "1",
          image: TImages.nikeLogo,
          name: "Nike",
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage1,
        TImages.productImage23,
        TImages.productImage21,
        TImages.productImage9,
      ],
      salePrice: 30,
      sku: "ABR4568",
      categoryId: "1",
      productAttributes: [
        ProductAttributeModel(
          name: "Color",
          values: ["Green", "Black", "Red"],
        ),
        ProductAttributeModel(
          name: "Size",
          values: ["EU 30", "EU 32", "EU 34"],
        )
      ],
      productVariations: [
        ProductVariationModel(
          id: "1",
          stock: 34,
          price: 134,
          salePrice: 122.6,
          image: TImages.productImage1,
          description:
              "This is a product description of Green Nike sports shoe",
          attributeValues: {"Color": "Green", "Size": "EU 34"},
        ),
        ProductVariationModel(
          id: "2",
          stock: 15,
          price: 132,
          image: TImages.productImage23,
          attributeValues: {"Color": "Black", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "3",
          stock: 0,
          price: 234,
          image: TImages.productImage23,
          attributeValues: {"Color": "Black", "Size": "EU 34"},
        ),
        ProductVariationModel(
          id: "4",
          stock: 232,
          price: 234,
          image: TImages.productImage1,
          attributeValues: {"Color": "Green", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "5",
          stock: 222,
          price: 102,
          image: TImages.productImage21,
          attributeValues: {"Color": "Red", "Size": "EU 34"},
        ),
        ProductVariationModel(
          id: "6",
          stock: 25,
          price: 334,
          image: TImages.productImage21,
          attributeValues: {"Color": "Red", "Size": "EU 32"},
        ),
      ],
      productType: ProductType.variable.toString(),
    ),
    ProductModel(
      id: "002",
      stock: 36,
      price: 1200,
      title: "Brown Leather Jacket",
      isFeatured: true,
      thumbnail: TImages.productImage64,
      description:
          "A brown leatherjacket with high durability and strength. Servers your purpose in a tougher way",
      brand: BrandModel(
          id: "2",
          image: TImages.adidasLogo,
          name: "Adidas",
          productsCount: 265,
          isFeatured: true),
      images: [
        TImages.productImage64,
        TImages.productImage65,
        TImages.productImage66,
        TImages.productImage67,
      ],
      salePrice: 1000,
      sku: "GHt8942",
      categoryId: "2",
      productType: ProductType.single.toString(),
    ),
    ProductModel(
      id: "003",
      stock: 15,
      price: 135,
      title: "Nike Air Jordan",
      isFeatured: true,
      thumbnail: TImages.productImage7,
      description:
          "MJ wore 'em when he claimed his first championship and you'll be wearing 'em for—well, whatever you want. Laden with dynamic design lines and those iconic lace locks, these sneakers bring throwback style to any 'fit. Lace up, and let your kicks do the talking.",
      brand: BrandModel(
          id: "1",
          image: TImages.nikeLogo,
          name: "Nike",
          productsCount: 360,
          isFeatured: true),
      images: [
        TImages.productImage7,
        TImages.productImage8,
        TImages.productImage9,
        TImages.productImage10,
      ],
      salePrice: 30,
      sku: "ABR4568",
      categoryId: "1",
      productAttributes: [
        ProductAttributeModel(
          name: "Color",
          values: [
            "Black",
            "Orange",
            "Magenta",
            "Red",
          ],
        ),
        ProductAttributeModel(
          name: "Size",
          values: ["EU 30", "EU 32"],
        )
      ],
      productVariations: [
        ProductVariationModel(
          id: "1",
          stock: 34,
          price: 134,
          salePrice: 122.6,
          image: TImages.productImage7,
          description:
              "This is a product description of Green Nike sports shoe",
          attributeValues: {"Color": "Black", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "2",
          stock: 15,
          price: 132,
          image: TImages.productImage7,
          attributeValues: {"Color": "Black", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "3",
          stock: 0,
          price: 234,
          image: TImages.productImage8,
          attributeValues: {"Color": "Orange", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "4",
          stock: 232,
          price: 234,
          image: TImages.productImage8,
          attributeValues: {"Color": "Orange", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "5",
          stock: 222,
          price: 102,
          image: TImages.productImage9,
          attributeValues: {"Color": "Magenta", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "6",
          stock: 25,
          price: 334,
          image: TImages.productImage9,
          attributeValues: {"Color": "Magenta", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "7",
          stock: 222,
          price: 102,
          image: TImages.productImage10,
          attributeValues: {"Color": "Red", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "8",
          stock: 25,
          price: 334,
          image: TImages.productImage10,
          attributeValues: {"Color": "Red", "Size": "EU 32"},
        ),
      ],
      productType: ProductType.variable.toString(),
    ),
    ProductModel(
      id: "004",
      stock: 69,
      price: 560,
      title: "Zara Track Suit",
      isFeatured: true,
      thumbnail: TImages.productImage24,
      description:
          "Tracksuits are a wardrobe staple for fitness and fashion enthusiasts alike for their comfy feel and trendy appearance. Crafted from breathable materials, the outfit helps avoid sweat, keeping you cool and comfortable all day long as well as for workout sessions.",
      brand: BrandModel(
          id: "3",
          image: TImages.zaraLogo,
          name: "Zara",
          productsCount: 690,
          isFeatured: true),
      images: [
        TImages.productImage24,
        TImages.productImage25,
        TImages.productImage26,
      ],
      salePrice: 500,
      sku: "ABR4568",
      categoryId: "1",
      productAttributes: [
        ProductAttributeModel(
          name: "Color",
          values: [
            "Black",
            "Blue",
            "Red",
          ],
        ),
        ProductAttributeModel(
          name: "Size",
          values: ["EU 30", "EU 32"],
        )
      ],
      productVariations: [
        ProductVariationModel(
          id: "1",
          stock: 34,
          price: 134,
          salePrice: 122.6,
          image: TImages.productImage24,
          description:
              "This is a product description of Green Nike sports shoe",
          attributeValues: {"Color": "Black", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "2",
          stock: 15,
          price: 132,
          image: TImages.productImage24,
          attributeValues: {"Color": "Black", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "3",
          stock: 0,
          price: 234,
          image: TImages.productImage25,
          attributeValues: {"Color": "Blue", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "4",
          stock: 232,
          price: 234,
          image: TImages.productImage25,
          attributeValues: {"Color": "Blue", "Size": "EU 32"},
        ),
        ProductVariationModel(
          id: "5",
          stock: 222,
          price: 102,
          image: TImages.productImage26,
          attributeValues: {"Color": "Red", "Size": "EU 30"},
        ),
        ProductVariationModel(
          id: "6",
          stock: 25,
          price: 334,
          image: TImages.productImage26,
          attributeValues: {"Color": "Red", "Size": "EU 32"},
        ),
      ],
      productType: ProductType.variable.toString(),
    ),
  ];
}
