import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài tập 03',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductDetailScreen(),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  
  final List<String> productImages = const [
    'assets/images/lap1.jpg',
    'assets/images/lap2.jpg',
    'assets/images/lap3.jpg', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004494),
        leading: const Icon(Icons.shopping_bag, color: Colors.white),
        title: const Text(
          'Thông tin sản phẩm',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              const Text(
                'Hình ảnh sản phẩm (03 ảnh)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF004494),
                ),
              ),
              const SizedBox(height: 10),

              
              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                        image: DecorationImage(
                          image: AssetImage(productImages[index]), // Dùng AssetImage ở đây
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),

              
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Mã SP: SP-2026-X1',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                     
                      const Text(
                        'Laptop Gaming High-End Pro 16',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 8),

                     
                      const Text(
                        '28.990.000 VNĐ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      const Divider(height: 24),

                      
                      Row(
                        children: const [
                          Icon(Icons.factory, size: 20, color: Colors.grey),
                          SizedBox(width: 8),
                          Text(
                            'Nhà sản xuất: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'Asus Tech Co.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF004494),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      
                      const Text(
                        'Mô tả sản phẩm:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF004494),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Laptop Gaming hiệu năng cao tích hợp vi xử lý đời mới, card đồ họa rời siêu mạnh mẽ. Màn hình 16 inch tần số quét 165Hz cho trải nghiệm mượt mà. Hệ thống tản nhiệt tối ưu thích hợp cho công việc lập trình và đồ họa nặng.',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}