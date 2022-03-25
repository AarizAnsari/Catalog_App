import 'dart:math';
import 'package:catalog/Services/data_services.dart';

class Generator {
  ListGenerator() async {
    List list = [];
    Data data = Data();
    await data.clearData();
    for (int i = 0; i < 1000; i++) {
      String name = ProductName();
      int rate = ProductRating();
      String url = ProductUrl();
      var item = {
        'productName': name,
        'productRating': rate,
        'productDescription': 'Loren Ipsum',
        'productUrl': url
      };
      list.add(item);
      await data.addData(name, rate, url);
    }
    return list;
  } //Loads the Json data to the List

  ProductUrl() {
    List url = [
      'http://lh4.ggpht.com/-f8xYA5l4apw/RSziSQVaABI/AAAAAAAAASE/V8rWCdC0cvI/s1600/',
      'https://lh5.googleusercontent.com/-PUnMrX7oOyA/TySyn1rpTTI/AAAAAAAAASE/1O6VjsWhkdo/s1600/',
      'http://lh3.ggpht.com/-9fgSxDYwhHA/SMvGEoltKTI/AAAAAAAAAmQ/okImAMVbiM8/s1600/',
      'http://lh6.ggpht.com/-UGAXxvPbr98/S-jGZbyMIPI/AAAAAAAACjk/cDbltIKSaEs/s1600/',
      'https://lh6.googleusercontent.com/-onL5-pK9nZI/SvfWv6_P-pI/AAAAAAAABPY/Le1iu-JSmgY/s1600/',
      'http://lh5.ggpht.com/-3GWjPriaA9g/Sg3e_S0qEgI/AAAAAAAADY0/ysitBi2mSLc/s1600/',
      'https://lh4.googleusercontent.com/-FcAwNv0-WeY/T0AzkaCi3eI/AAAAAAAAFb8/Ehmw2DwGe6s/s1600/',
      'https://lh6.googleusercontent.com/-xIJ3I2i3ESk/Ud-m9bYtxoI/AAAAAAAAdho/l-zOMG1nosw/s1600',
      'http://lh3.ggpht.com/-3bysCvkJIBs/Tnf_HqJhFaI/AAAAAAAAbxQ/xpqzo2s6C-U/s1600/',
      'https://lh5.googleusercontent.com/-eoC653AtqLs/RlnlPeWOUCI/AAAAAAAAAJo/0UYvWJieL0w/rj/',
      'http://lh6.ggpht.com/-5upOUlKrK5g/RT9rdTOxABI/AAAAAAAADjc/90fCmeY5nTM/s1600/',
      'http://lh4.ggpht.com/-2Z3YgkH6iI8/TW5MB3UmXhI/AAAAAAAAAfk/u7IZrc-VbSo/s1600/',
      'http://lh4.ggpht.com/-Fl70oNceS_g/TFcqq4PpR9I/AAAAAAAALPs/z803A0bIyBI/s1600/',
      'https://lh6.googleusercontent.com/-8isu7IsH2x8/TD9faPQeEaI/AAAAAAAACHE/hyz4YsuqfUw/s1600/',
      'http://lh6.ggpht.com/-qdtbnvhvEDM/TSoOCs0xtjI/AAAAAAAACi8/-76yG_qffFE/s1600/',
      'http://lh5.ggpht.com/-0vWLyGMeQQ0/T-AU7KKs08I/AAAAAAAACSc/m-syosrtsM0/s1600/',
      'https://lh3.googleusercontent.com/-nGAwumqrkI0/SDlq3IWdZ2I/AAAAAAAAIgM/n6LadHrWegI/s1600/',
      'http://lh6.ggpht.com/-Euw-JhniTh0/RxevJzZ3ZnI/AAAAAAAABzY/2FeE0pd4-ww/s1600/',
      'http://lh6.ggpht.com/-MbCfKSsUTLg/RjyNT-6K2OI/AAAAAAAAArk/bCJ_ohFb67M/s1600/',
      'http://lh6.ggpht.com/-g_6dtHyMEmA/TB5_ST1SOtI/AAAAAAAAEaI/fYOceYItDu0/s1600/'
    ];
    Random random = new Random();
    return url[random.nextInt(url.length - 1)];
  } //Returns a random url

  ProductName() {
    //Returns a random product name
    return BrandName() + ' ' + ItemName();
  } //Generates a random name for product

  ProductRating() {
    Random random = new Random();
    return random.nextInt(6);
  } //Returns a rating between 0 to 5

  BrandName() {
    List brands = [
      'Fort',
      'Easter',
      'Brook',
      'Bumps',
      'Deep',
      'Maneuvers',
      'Monarch',
      'Darwins',
      'Slug',
      'Now',
      'Goldmine',
      'Palms',
      'Top',
      'Stumble',
      'Eagles',
      'Skynyrd',
      'Aerosmith',
      'Heads',
      'ACDC',
      'Metallica',
      'Shirelles',
      'Guns',
      'Roses',
      'Sly',
      'Family',
      'Stone',
      'Nirvana',
      'Queen',
      'Beatles',
      'Rolling',
      'Stones',
      'Floyd',
      'Supremes',
      'Public',
      'Bangles',
      'Runway',
      'Isley Brothers',
      'Siberian',
      'Duran',
      'The Ting',
      'Garbage',
      'Zeppelin'
    ];
    Random random = new Random();
    return brands[random.nextInt(brands.length - 1)];
  } //Generates a brand name for the product

  ItemName() {
    List items = [
      'hammer',
      'soap',
      'screw driver',
      'drill',
      'detergent',
      'belt',
      'brush',
      'shirt',
      'glasses',
      'pants',
      'cream',
      'coffee',
      'mug',
      'tie',
      'kettle',
      'cooker',
      'iron',
      'scissors',
      'comb',
      'speakers',
      'duster',
      'groom',
      'wipes',
      'nail paint',
      'lipstic',
      'shampoo',
      'darts',
      'notebook',
      'pencils',
      'chalk',
      'caps',
      'slippers',
      'sandals',
      'hair oil',
      'perfume',
      'salt',
      'sugar',
      'bags',
      'socks',
      'shoes',
      'pen',
      'eraser'
    ];
    Random random = new Random();
    return items[random.nextInt(items.length - 1)];
  } //Generates a item name for the product
}
