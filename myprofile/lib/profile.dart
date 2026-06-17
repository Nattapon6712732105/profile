import 'package:flutter/material.dart';

/// ============================================================
/// Profile Page - หน้าโปรไฟล์ส่วนตัว
/// ใช้ myface.jpeg เป็นพื้นหลังเต็มหน้าจอ
/// แสดง: ชื่อ, คำอธิบายตัวเอง, แถว Icon ลิงก์ต่างๆ
/// ============================================================
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // =====================================================
        // Background: รูป myface.jpeg เต็มหน้าจอ
        // =====================================================
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/myface.jpeg'), // รูปพื้นหลัง
            fit: BoxFit.cover, // ขยายเต็มหน้าจอ
            alignment: Alignment.center, // จุดศูนย์กลางของรูป
          ),
        ),
        child: Container(
          // =====================================================
          // Overlay: สีดำโปร่งแสงทับรูป เพื่อให้อ่านตัวหนังสือชัด
          // ปรับค่า opacity ได้ (0.0 = ใส, 1.0 = ดำทึบ)
          // =====================================================
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3), // ด้านบนจางๆ
                Colors.black.withOpacity(0.7), // ด้านล่างเข้มขึ้น ให้อ่านข้อความง่าย
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end, // เนื้อหาอยู่ด้านล่าง
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =====================================================
                      // ชื่อ-นามสกุล (Name)
                      // แก้ไขชื่อของคุณตรงนี้
                      // =====================================================
                      Text(
                        "Natthaphon Boonnara", // <-- ใส่ชื่อของคุณ
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),

                      // =====================================================
                      // คำอธิบายตัวเอง (Description / Bio)
                      // แก้ไขคำอธิบายสั้นๆ เกี่ยวกับตัวคุณตรงนี้
                      // =====================================================
                      Text(
                        "นักศึกษาสาขาวิทยาการคอมพิวเตอร์", // <-- ใส่คำอธิบายตัวเอง
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 24),

                      // =====================================================
                      // แถว Icon (Social / Contact Links)
                      // แต่ละ Icon แทนช่องทางติดต่อหรือลิงก์โซเชียล
                      // เพิ่ม/ลบ/แก้ไข Icon ได้ตามต้องการ
                      // =====================================================
                      Row(
                        children: [
                          // Icon 1: อีเมล (Email)
                          // TODO: ใส่ลิงก์อีเมลของคุณ
                          _buildIconButton(
                            icon: Icons.email, // ไอคอนอีเมล
                            label: "Email", // ข้อความกำกับ
                          ),
                          SizedBox(width: 16),

                          // Icon 2: โทรศัพท์ (Phone)
                          // TODO: ใส่เบอร์โทรของคุณ
                          _buildIconButton(
                            icon: Icons.phone, // ไอคอนโทรศัพท์
                            label: "Phone", // ข้อความกำกับ
                          ),
                          SizedBox(width: 16),

                          // Icon 3: GitHub
                          // TODO: ใส่ลิงก์ GitHub ของคุณ
                          _buildIconButton(
                            icon: Icons.code, // ไอคอน GitHub (ใช้ code แทน)
                            label: "GitHub", // ข้อความกำกับ
                          ),
                          SizedBox(width: 16),

                          // Icon 4: Facebook
                          // TODO: ใส่ลิงก์ Facebook ของคุณ
                          _buildIconButton(
                            icon: Icons.facebook, // ไอคอน Facebook
                            label: "Facebook", // ข้อความกำกับ
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40), // ระยะห่างจากขอบล่าง
              ],
            ),
          ),
        ),
      ),
    );
  }

  // =====================================================
  // Widget สำหรับสร้างปุ่ม Icon พร้อมข้อความกำกับ
  // icon: ไอคอนที่จะแสดง (จาก Icons.xxx)
  // label: ข้อความด้านล่างไอคอน
  // =====================================================
  Widget _buildIconButton({required IconData icon, required String label}) {
    return Column(
      children: [
        // วงกลมพื้นหลังของไอคอน
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2), // พื้นหลังโปร่งแสง
            shape: BoxShape.circle, // รูปทรงวงกลม
          ),
          child: Icon(
            icon,
            color: Colors.white, // สีไอคอน
            size: 24, // ขนาดไอคอน
          ),
        ),
        SizedBox(height: 6),
        // ข้อความกำกับใต้ไอคอน
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white70, // สีข้อความ
          ),
        ),
      ],
    );
  }
}
