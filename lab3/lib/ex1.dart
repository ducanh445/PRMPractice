import 'dart:async';

class Product{
  int id;
  String name;
  double price;

  Product(this.id,this.name,this.price);

  @override
  String toString() {
    return"Product(id: $id, name: $name, price: $price)";
  }
}

class ProductRepository{
  final List<Product> _product =[
    Product(1, "iphone", 2300),
    Product(2, "samsung", 1700),
  ];

  final StreamController<Product> _controller = StreamController<Product>.broadcast();

  Future<List<Product>> getAll() async{
    await Future.delayed(Duration(seconds: 1));
    return _product;
  }

  Stream<Product> liveAdded(){
    return _controller.stream;
  }

  void addProduct(Product products){
    _product.add(products);
    _controller.add(products);
  }
}

Future<void> main() async{
  ProductRepository repo = ProductRepository();

  repo.liveAdded().listen((products){
    print("new product: $products");
  });

  List<Product> product = await repo.getAll();
  print("all product:");
  for(var p in product){
    print(p);
  }

  repo.addProduct(Product(3, "xiaomi", 10000));
  await Future.delayed(Duration(seconds: 1));


}