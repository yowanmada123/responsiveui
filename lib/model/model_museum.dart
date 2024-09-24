class FutureMuseum {
  final String name;
  final String location;
  final String description;
  final String openDays;
  final String openTime;
  final String ticketPrice;
  final String imageAsset;
  final List<String> imageUrls;
  final double rating;

  FutureMuseum({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
    required this.rating,
  });
}

List<FutureMuseum> museumList = [
  FutureMuseum(
    name: 'Museum of Future Technology',
    location: 'Dubai, UAE',
    description:
        'Menampilkan berbagai inovasi teknologi dari bidang AI, robotika, transportasi masa depan, hingga arsitektur futuristik. Setiap eksibisi di dalamnya menawarkan pengalaman interaktif menggunakan AR dan VR.',
    openDays: 'Open Monday - Sunday',
    openTime: '10:00 - 18:00',
    ticketPrice: 'Rp 15000',
    imageAsset: 'assets/1.png',
    imageUrls: [
      'assets/2.png',
      'assets/3.png',
      'assets/4.png',
    ],
    rating: 4.8,
  ),
  FutureMuseum(
    name: 'Museum Nasional Indonesia',
    location: 'Jakarta, Indonesia',
    description:
        'Museum Nasional Indonesia, juga dikenal sebagai Museum Gajah, adalah salah satu museum terbesar dan tertua di Asia Tenggara. Museum ini menampilkan koleksi arkeologi, etnografi, geografi, dan sejarah Indonesia, termasuk artefak kuno, seni tradisional, serta benda-benda prasejarah.',
    openDays: 'Open Tuesday - Sunday',
    openTime: '08:00 - 16:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/5.png',
    imageUrls: [
      'assets/6.png',
      'assets/7.png',
      'assets/8.png',
    ],
    rating: 4.5,
  ),
  FutureMuseum(
    name: 'Museum Wayang',
    location: 'Jakarta, Indonesia',
    description:
        'Museum Wayang merupakan tempat penyimpanan koleksi berbagai jenis wayang dari seluruh Nusantara. Di sini pengunjung dapat melihat beragam jenis wayang dari Wayang Kulit, Wayang Golek, Wayang Beber, hingga Wayang Motekar, lengkap dengan sejarah dan makna filosofisnya.',
    openDays: 'Open Monday - Sunday',
    openTime: '09:00 - 15:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'assets/9.png',
    imageUrls: [
      'assets/10.png',
      'assets/11.png',
      'assets/12.png',
    ],
    rating: 4.2,
  ),
  FutureMuseum(
    name: 'Museum Ullen Sentalu',
    location: 'Yogyakarta, Indonesia',
    description:
        'Museum Ullen Sentalu adalah museum seni dan budaya yang menampilkan berbagai koleksi seni dan artefak budaya Jawa, khususnya dari masa Kerajaan Mataram dan Dinasti Hamengkubuwono. Museum ini menawarkan pengalaman yang mendalam tentang budaya dan sejarah Jawa melalui pameran yang kaya akan informasi.',
    openDays: 'Open Monday - Sunday',
    openTime: '08:30 - 16:00',
    ticketPrice: 'Rp 50.000',
    imageAsset: 'assets/13.png',
    imageUrls: [
      'assets/14.png',
      'assets/15.png',
      'assets/16.png',
    ],
    rating: 4.7,
  ),
  FutureMuseum(
    name: 'Museum Angkut',
    location: 'Batu, Jawa Timur, Indonesia',
    description:
        'Museum Angkut adalah museum transportasi pertama di Asia Tenggara yang menampilkan beragam kendaraan transportasi dari seluruh dunia. Pengunjung dapat melihat koleksi mobil antik, kereta, sepeda motor, pesawat terbang, dan moda transportasi lainnya dari masa lalu hingga masa kini.',
    openDays: 'Open Monday - Sunday',
    openTime: '12:00 - 20:00',
    ticketPrice: 'Rp 100.000',
    imageAsset: 'assets/17.png',
    imageUrls: [
      'assets/18.png',
      'assets/19.png',
      'assets/20.png',
    ],
    rating: 4.6,
  ),
  FutureMuseum(
    name: 'Museum Kereta Api Ambarawa',
    location: 'Ambarawa, Jawa Tengah, Indonesia',
    description:
        'Museum Kereta Api Ambarawa adalah museum transportasi yang menampilkan koleksi kereta api antik dari masa kolonial Belanda. Museum ini terkenal dengan kereta api uap dan jalur rel bergerigi yang masih bisa dinaiki oleh pengunjung untuk merasakan sensasi perjalanan dengan kereta api klasik.',
    openDays: 'Open Tuesday - Sunday',
    openTime: '09:00 - 17:00',
    ticketPrice: 'Rp 30.000',
    imageAsset: 'assets/21.png',
    imageUrls: [
      'assets/22.png',
      'assets/23.png',
      'assets/24.png',
    ],
    rating: 4.3,
  ),
];
