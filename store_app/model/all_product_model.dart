class ProductModel
{
  final dynamic id;
  final String title;
  final dynamic price;
  final String desc;
  final String image;
  final String category;
  final RatingModel? rating;
ProductModel({required this.id,required this.title,required this.category,required this.desc,required this.price, required this.image,required this.rating});
factory ProductModel.formJson(jsonData){
  return ProductModel(
    id: jsonData['id'],
      title: jsonData['title'],
      category: jsonData['category'],
      desc: jsonData['description'],
      price: jsonData['price'],
      image: jsonData['image'],
    rating: jsonData['rating']==null? null:RatingModel.fromJson(jsonData['rating']),
  );
}
}
class RatingModel
{
  final dynamic rate;
  final int count;
  RatingModel({required this.rate,required this.count});
  factory RatingModel.fromJson(jsonData){
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}