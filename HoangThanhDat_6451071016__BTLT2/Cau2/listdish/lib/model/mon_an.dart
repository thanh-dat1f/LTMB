class MonAn {
  final String ten;
  final String moTa;
  final int gia;
  final String hinhAnh;

  const MonAn({
    required this.ten,
    required this.moTa,
    required this.gia,
    required this.hinhAnh,
  });

  String get giaFormatted => '${_formatSoTien(gia)}VNĐ';

  String _formatSoTien(int so){
    final str = so.toString();
    final buffer = StringBuffer();

    int dem = 0;
    for (int i = str.length - 1; i >= 0; i--) {
      if(dem > 0 && dem % 3 == 0)  buffer.write(',');
        buffer.write(str[i]);
        dem++;
      }

    return buffer.toString().split('').reversed.join();
  }
}