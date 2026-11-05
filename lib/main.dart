import 'package:flutter/material.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Wisata Alam'),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color(0xFFF3E8D8),
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1519681393784-d120267933ba',
                        width: 130,
                        height: 145,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DESTINASI PILIHAN',
                            style: TextStyle(
                              color: Colors.brown,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Stone Garden',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.brown,
                                size: 17,
                              ),
                              SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  'Padalarang, Bandung',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 19,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '4.5 / 5.0',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(16, 22, 16, 10),
                child: Text(
                  'Pesona Alam',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Stone Garden merupakan destinasi wisata alam '
                  'yang menawarkan pemandangan bebatuan unik '
                  'di kawasan perbukitan. Pengunjung dapat '
                  'menikmati suasana alam dan mengambil foto '
                  'dengan latar pemandangan yang menarik.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                color: const Color(0xFFF8F5F0),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Informasi Kunjungan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 18),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.brown),
                        SizedBox(width: 12),
                        Text('Jam Operasional'),
                        Spacer(),
                        Text(
                          '06.00 - 17.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(
                          Icons.confirmation_num,
                          color: Colors.brown,
                        ),
                        SizedBox(width: 12),
                        Text('Harga Tiket'),
                        Spacer(),
                        Text(
                          'Rp30.000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(height: 28),
                    Row(
                      children: [
                        Icon(Icons.landscape, color: Colors.brown),
                        SizedBox(width: 12),
                        Text('Kategori'),
                        Spacer(),
                        Text(
                          'Wisata Alam',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.brown,
                      side: const BorderSide(color: Colors.brown),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const Text('Lihat Informasi Lengkap'),
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}