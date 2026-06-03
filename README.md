# 📈 EasyBond-project

เว็บแอปพลิเคชันระดับองค์กรที่พัฒนาขึ้นเพื่อจัดการและตรวจสอบข้อมูลผู้ค้าตราสารหนี้ โดยมุ่งเน้นระบบการควบคุมสิทธิ์การเข้าใช้งานที่ปลอดภัย (Role-Based Access Control) การบริหารจัดการหลักสูตรอบรม และการตรวจสอบสถานะใบอนุญาตตามเกณฑ์ข้อบังคับ

## 🚀 Tech Stack & Core Focus
* **Frontend Framework:** Next.js (React)
* **Language:** JavaScript
* **Styling:** Bootstrap
* **System Analyst Focus:** Role-Based Access Control (RBAC), Compliance Logic, and Workflow Management

---

## 🔄 System Workflow (RBAC Logic)
แผนผังแสดงขั้นตอนการทำงานของระบบ ตั้งแต่กระบวนการตรวจสอบสิทธิ์การเข้าใช้งาน (Login) การแยกฟังก์ชันตามบทบาทของเจ้าหน้าที่ (Admin) และผู้ค้าตราสารหนี้ (Trader) ไปจนถึงขั้นตอนการเช็กชื่อและออกใบประกาศนียบัตร

![Bond Trader System Workflow](image/EasyBond.png)
*(คำแนะนำ: ส่งออกไฟล์จาก draw.io เป็นไฟล์ภาพและนำมาวางแทนที่พาท assets/bond-trader-workflow.png)*

---

## 🗄️ Database Schema (Normalized Relational Design)

โครงสร้างฐานข้อมูลที่ผ่านการวิเคราะห์และจัดระบบตาม User Requirement ของผู้ดูแลระบบ (Admin) และผู้ค้าตราสารหนี้ (Trader) รองรับทั้งระบบจัดการหลักสูตร การเช็กชื่อเข้าอบรม และการออกใบประกาศนียบัตร

### 🔹 1. Users Table (ระบบเข้าสู่ระบบและการแบ่งสิทธิ์)
| Column Name | Data Type | Key | Description (คำอธิบาย) |
| :--- | :--- | :--- | :--- |
| `user_id` | uuid | PK | รหัสประจำตัวผู้ใช้งาน (ระบบสร้างให้อัตโนมัติ) |
| `email` | varchar | | อีเมลสำหรับใช้เข้าสู่ระบบ (ทั้ง Admin และ Trader) |
| `password_hash` | varchar | | รหัสผ่านที่เข้ารหัสลับ (ผู้ค้าใช้เลขบัตรประชาชนในการเข้าสู่ระบบครั้งแรก) |
| `role` | varchar | | ระดับสิทธิ์การเข้าใช้งานระบบ (ค่าเป็น 'admin' หรือ 'trader') |
| `created_at` | timestamp | | วันเวลาที่บัญชีผู้ใช้งานถูกสร้างขึ้น |

### 🔹 2. Traders Table (ข้อมูลรายละเอียดและสถานะของผู้ค้าตราสารหนี้)
| Column Name | Data Type | Key | Description (คำอธิบาย) |
| :--- | :--- | :--- | :--- |
| `trader_id` | uuid | PK | รหัสประจำตัวผู้ค้าตราสารหนี้ |
| `user_id` | uuid | FK | เชื่อมโยงไปยังบัญชีผู้ใช้ `users.user_id` |
| `citizen_id` | varchar(13) | | หมายเลขประจำตัวประชาชน 13 หลัก |
| `full_name` | varchar | | ชื่อ - นามสกุล ของผู้ค้าตราสารหนี้ |
| `license_no` | varchar | | หมายเลขเลขทะเบียนผู้ค้าตราสารหนี้ |
| `status` | varchar | | สถานะของผู้ค้า (เช่น Active, Expiring, Expired) |
| `expired_date` | date | | วันหมดอายุสถานะ (ใช้สำหรับระบบแจ้งเตือนก่อนหมดอายุ) |

### 🔹 3. Courses Table (การจัดการหลักสูตรอบรม)
| Column Name | Data Type | Key | Description (คำอธิบาย) |
| :--- | :--- | :--- | :--- |
| `course_id` | uuid | PK | รหัสประจำตัวหลักสูตรอบรม |
| `course_name` | varchar | | ชื่อหลักสูตรอบรมผู้ค้าตราสารหนี้ |
| `description` | text | | รายละเอียดและเนื้อหาของหลักสูตร |
| `is_approved` | boolean | | สถานะการอนุมัติหลักสูตร (จัดการและอนุมัติโดย Admin) |
| `created_by` | uuid | FK | เชื่อมโยงไปยัง `users.user_id` (ระบุ Admin คนที่เป็นคนเพิ่มหลักสูตร) |

### 🔹 4. Course_Enrollments Table (การสมัครเรียนและการตรวจสอบการเข้าอบรมจริง)
| Column Name | Data Type | Key | Description (คำอธิบาย) |
| :--- | :--- | :--- | :--- |
| `enrollment_id` | uuid | PK | รหัสการสมัครเข้าร่วมหลักสูตร |
| `trader_id` | uuid | FK | เชื่อมโยงไปยังข้อมูลผู้ค้า `traders.trader_id` (ผู้ค้าที่สมัคร) |
| `course_id` | uuid | FK | เชื่อมโยงไปยังหลักสูตร `courses.course_id` (หลักสูตรที่เลือกเรียน) |
| `enroll_date` | timestamp | | วันเวลาที่กดสมัครเข้าร่วมอบรม |
| `attendance_status`| boolean | | สถานะการเข้ารับการอบรมจริง (True = เข้าอบรมแล้ว / False = ยังไม่เข้า) |

### 🔹 5. Certificates Table (ระบบออกใบประกาศนียบัตร)
| Column Name | Data Type | Key | Description (คำอธิบาย) |
| :--- | :--- | :--- | :--- |
| `certificate_id`| uuid | PK | รหัสประจำตัวใบประกาศนียบัตร |
| `trader_id` | uuid | FK | เชื่อมโยงไปยัง `traders.trader_id` (ผู้ค้าที่ผ่านการอบรม) |
| `course_id` | uuid | FK | เชื่อมโยงไปยัง `courses.course_id` (หลักสูตรที่เรียนผ่าน) |
| `certificate_no`| varchar | | หมายเลขเลขที่ใบประกาศนียบัตรอย่างเป็นทางการ |
| `issued_date` | date | | วันที่ระบบทำการออกใบประกาศนียบัตร |
| `file_url` | varchar | | ลิงก์สำหรับดาวน์โหลดไฟล์ใบ Certificate บนระบบ Cloud Storage |
