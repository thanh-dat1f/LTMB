/// Model đại diện cho một ảnh trong gallery
class AnhItem {
  final String id;
  final String imageUrl; // Network URL
  final String tieuDe;

  const AnhItem({
    required this.id,
    required this.imageUrl,
    required this.tieuDe,
  });

  /// Danh sách 8 ảnh từ internet (picsum.photos)
  static const List<AnhItem> danhSach = [
    AnhItem(id: '1', imageUrl: 'https://picsum.photos/id/29/400/400',  tieuDe: 'Núi rừng'),
    AnhItem(id: '2', imageUrl: 'https://picsum.photos/id/237/400/400', tieuDe: 'Chú chó'),
    AnhItem(id: '3', imageUrl: 'https://picsum.photos/id/15/400/400',  tieuDe: 'Bãi biển'),
    AnhItem(id: '4', imageUrl: 'https://picsum.photos/id/44/400/400',  tieuDe: 'Thành phố'),
    AnhItem(id: '5', imageUrl: 'https://picsum.photos/id/250/400/400', tieuDe: 'Máy ảnh'),
    AnhItem(id: '6', imageUrl: 'https://picsum.photos/id/110/400/400', tieuDe: 'Sa mạc'),
    AnhItem(id: '7', imageUrl: 'https://picsum.photos/id/145/400/400', tieuDe: 'Rừng cây'),
    AnhItem(id: '8', imageUrl: 'https://picsum.photos/id/102/400/400', tieuDe: 'Hoa quả'),
  ];
}