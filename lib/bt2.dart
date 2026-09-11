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
      title: 'Bài tập 02',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ThesisDetailScreen(),
    );
  }
}

class ThesisDetailScreen extends StatelessWidget {
  const ThesisDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004494),
        leading: const Icon(Icons.assignment, color: Colors.white),
        title: const Text(
          'Thông tin đề tài đồ án',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF004494).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Mã đề tài: DT001',
                          style: TextStyle(
                            color: Color(0xFF004494),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                     
                      const Text(
                        'Xây dựng ứng dụng di động quản lý đào tạo trường ĐH Công Thương',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF333333),
                          height: 1.3,
                        ),
                      ),
                      const Divider(height: 30, thickness: 1),

                      
                      _buildInfoRow(
                        icon: Icons.school,
                        label: 'Chuyên ngành',
                        value: 'Công nghệ phần mềm',
                      ),
                      const SizedBox(height: 12),
                      _buildInfoRow(
                        icon: Icons.person,
                        label: 'Giảng viên HD',
                        value: 'ThS. Trần Thị A',
                      ),
                      const SizedBox(height: 12),
                      _buildInfoRow(
                        icon: Icons.group,
                        label: 'Số SV tối đa',
                        value: '02 sinh viên',
                      ),
                      const SizedBox(height: 20),

                
                      const Text(
                        'Yêu cầu đề tài:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF004494),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: const Text(
                          '- Sử dụng Flutter framework để thiết kế giao diện di động.\n'
                          '- Kết nối API quản lý sinh viên và điểm số.\n'
                          '- Đảm bảo thiết kế chuẩn Responsive, giao diện thân thiện với người dùng.',
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.5,
                            color: Colors.black87,
                          ),
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

 
  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, size: 20, color: const Color(0xFF004494)),
        const SizedBox(width: 10),
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}