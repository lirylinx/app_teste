// import 'dart:collection';

// import 'package:provider/provider.dart';


// class CartApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {


//       return LayoutMyApp();

//   }
// }


// class CartModel extends ChangeNotifier {
//   final List<Item> _items = [];

//   UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

//   int get totalPrice => _items.length * 42;

//   void add( Item item) {
//       _items.add(item);
  
//       notifyListeners();
//     }
  
//     void removeAll() {
//       _items.clear();
  
//       notifyListeners();
//     }
//   }
  
//   class Item {
// }