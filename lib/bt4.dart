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
      title: 'Bài tập 04',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GroupDetailScreen(),
    );
  }
}

class GroupDetailScreen extends StatelessWidget {
  const GroupDetailScreen({super.key});

  
  final List<Map<String, String>> members = const [
    {
      'msv': '2001221234',
      'name': 'Nguyễn Văn A',
      'role': 'Nhóm trưởng',
      'avatar': 'assets/images/hieuthuhai.jpg',
    },
    {
      'msv': '2001221235',
      'name': 'Trần Thị A',
      'role': 'Thành viên',
      'avatar': 'assets/images/teacher.jpg',
    },
    {
      'msv': '2001221236',
      'name': 'Lê Hoàng C',
      'role': 'Thành viên',
      'avatar': 'assets/images/hieuthuhai.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFF004494),
        leading: const Icon(Icons.groups, color: Colors.white),
        title: const Text(
          'Thông tin nhóm',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
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
                          color: const Color(0xFF004494).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Mã nhóm: N01-CNTT',
                          style: TextStyle(
                            color: Color(0xFF004494),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Nhóm Lập Trình Di Động Flutter',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF222222),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          Icon(Icons.person_outline,
                              size: 20, color: Colors.grey),
                          SizedBox(width: 8),
                          Text(
                            'Số lượng thành viên: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            '03 sinh viên',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xFF004494),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              
              const Text(
                'Danh sách thành viên (03 người)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF004494),
                ),
              ),
              const SizedBox(height: 10),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: members.length,
                itemBuilder: (context, index) {
                  final member = members[index];
                  final isLeader = member['role'] == 'Nhóm trưởng';

                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(member['avatar']!),
                      ),
                      title: Text(
                        member['name']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: Text(
                        'MSSV: ${member['msv']}',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      trailing: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: isLeader
                              ? Colors.amber.shade100
                              : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          member['role']!,
                          style: TextStyle(
                            color: isLeader
                                ? Colors.amber.shade900
                                : Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}