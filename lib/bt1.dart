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
      title: 'Bài tập 01',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StudentInfoScreen(),
    );
  }
}

class StudentInfoScreen extends StatelessWidget {
  const StudentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF004494),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text(
          'Thông tin sinh viên',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/hieuthuhai.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, height: 1.8),
                  children: [
                    TextSpan(
                      text: 'Họ và tên: ',
                      style: TextStyle(
                        color: Color(0xFF330099),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: 'Nguyễn Văn A\n',
                      style: TextStyle(
                        color: Color(0xFF330099),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: 'MSSV: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '2001221234\n',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Lớp: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '13DHTH02\n',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Khóa: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '13 Đại học\n',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Ngành: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Công nghệ thông tin\n',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Trường: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Đại học Công Thương\nThành phố Hồ Chí Minh',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2EBF9),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LecturerInfoScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Trở về',
                    style: TextStyle(color: Colors.purple, fontSize: 14),
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

class LecturerInfoScreen extends StatelessWidget {
  const LecturerInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF004494),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text(
          'Thông tin giảng viên',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/teacher.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Giảng viên Trần Thị A',
                style: TextStyle(
                  color: Color(0xFF330099),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, height: 1.8),
                  children: [
                    TextSpan(
                      text: 'Khoa: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Công nghệ Thông tin\n',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Học hàm: ',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Thạc sỹ\n',
                      style: TextStyle(
                        color: Color(0xFFA52A2A),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Chuyên ngành: ',
                      style: TextStyle(
                        color: Color(0xFF00B050),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'CNPM\n',
                      style: TextStyle(
                        color: Color(0xFF00B050),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Giảng dạy: ',
                      style: TextStyle(
                        color: Color(0xFF0070C0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          'Nhập môn lập trình,\nLập trình windows, Lập trình we...',
                      style: TextStyle(
                        color: Color(0xFF0070C0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF2EBF9),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 10),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Trở về',
                  style: TextStyle(color: Colors.purple, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}