class Product {
  final String name;
  final List<Image> images;

  Product({this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['images'] as List;
    print(list.runtimeType);
    List<Image> imagesList = list.map((i) => Image.fromJson(i)).toList();


    return Product(
      name: parsedJson['name'],
      images: imagesList

    );
  }
}

class Image {
  final String brief;
  final String image;
  final String title;
  final String type;
  final String url;

  Image({this.brief, this.image, this.title, this.type, this.url});

  factory Image.fromJson(Map<String, dynamic> parsedJson){
   return Image(
     brief:parsedJson['brief'],
     image:parsedJson['image'],
     title:parsedJson['title'],
     type:parsedJson['type'],
     url:parsedJson['url']
   );
  }
}