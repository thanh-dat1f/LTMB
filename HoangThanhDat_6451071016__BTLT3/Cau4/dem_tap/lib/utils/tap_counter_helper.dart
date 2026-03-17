// Lớp tiện ích hỗ trợ logic đếm tap
class TapCounterHelper {
  int _count = 0;

  // Tăng đếm và trả về giá trị mới
  int increment() {
    _count++;
    return _count;
  }

  // Đặt lại về 0
  void reset() {
    _count = 0;
  }

  // Lấy giá trị hiện tại
  int get count => _count;

  // Trả về chuỗi hiển thị
  String get displayText => 'Tap count: $_count';
}
