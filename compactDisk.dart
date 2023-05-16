import 'RetailItem.dart';
import 'labeled.dart';

class CompactDisk implements RetailItem, Labeleld {
  double _price;
  String _label;

  CompactDisk({required double price, required String label})
      : _price = price,
        _label = label;

  @override
  String get label => _label;

  @override
  set label(String label) => _label = label;

  @override
  double get price => _price;

  @override
  set price(double price) => _price = price;
}
