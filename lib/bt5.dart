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
      title: 'Bài tập 05',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MajorIntroScreen(),
    );
  }
}

class MajorIntroScreen extends StatelessWidget {
  const MajorIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F6F9),
        appBar: AppBar(
          backgroundColor: const Color(0xFF004494),
          leading: const Icon(Icons.school, color: Colors.white),
          title: const Text(
            'Khoa CNTT - ĐH Công Thương',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            indicatorWeight: 3,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(
                icon: Icon(Icons.computer),
                text: 'Ngành CNTT',
              ),
              Tab(
                icon: Icon(Icons.security),
                text: 'Ngành ATTT',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            
            MajorDetailView(
              majorName: 'Công nghệ Thông tin',
              majorCode: '7480201',
              bannerImage: 'assets/images/lap1.jpg',
              description:
                  'Ngành Công nghệ Thông tin đào tạo cử nhân/kỹ sư có khả năng nghiên cứu, phát triển và ứng dụng các công nghệ phần mềm, trí tuệ nhân tạo, xử lý dữ liệu lớn và quản trị hệ thống thông tin nhằm đáp ứng nhu cầu chuyển đổi số toàn cầu.',
              careers: [
                'Lập trình viên Phần mềm (Web, Mobile, Desktop)',
                'Kỹ sư Kiểm thử phần mềm (Tester/QA)',
                'Chuyên viên Quản trị Cơ sở dữ liệu',
                'Kỹ sư Trí tuệ nhân tạo & Khoa học dữ liệu',
              ],
            ),

            
            MajorDetailView(
              majorName: 'An toàn Thông tin',
              majorCode: '7480202',
              bannerImage: 'assets/images/teacher.jpg',
              description:
                  'Ngành An toàn Thông tin trang bị cho sinh viên kiến thức chuyên sâu về bảo mật mạng, mật mã học, phát hiện và phòng chống các cuộc tấn công mạng, bảo vệ tài sản số cho các doanh nghiệp, tổ chức tài chính và cơ quan nhà nước.',
              careers: [
                'Chuyên viên Bảo mật hệ thống & Mạng',
                'Chuyên viên Kiểm thử xâm nhập (Penetration Tester)',
                'Kỹ sư Bán hàng giải pháp An toàn thông tin',
                'Chuyên viên Phân tích và Phản ứng sự cố an ninh mạng',
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class MajorDetailView extends StatelessWidget {
  final String majorName;
  final String majorCode;
  final String bannerImage;
  final String description;
  final List<String> careers;

  const MajorDetailView({
    super.key,
    required this.majorName,
    required this.majorCode,
    required this.bannerImage,
    required this.description,
    required this.careers,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              bannerImage,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  majorName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF004494),
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Mã ngành: $majorCode',
                  style: const TextStyle(
                    color: Color(0xFF004494),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          const Text(
            'Khoa Công nghệ Thông tin - Trường ĐH Công Thương TP.HCM',
            style: TextStyle(
              fontSize: 13,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
          const Divider(height: 24),

          
          const Text(
            'Giới thiệu chung',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),

         
          const Text(
            'Cơ hội việc làm sau khi tốt nghiệp',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF222222),
            ),
          ),
          const SizedBox(height: 10),

          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: careers
                    .map(
                      (item) => ListTile(
                        leading: const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 20,
                        ),
                        title: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}