# 📈 EasyBond-project

เว็บแอปพลิเคชันระดับองค์กรที่พัฒนาขึ้นเพื่อจัดการและตรวจสอบข้อมูลผู้ค้าตราสารหนี้ โดยมุ่งเน้นระบบการควบคุมสิทธิ์การเข้าใช้งานที่ปลอดภัย (Role-Based Access Control) การบริหารจัดการหลักสูตรอบรม และการตรวจสอบสถานะใบอนุญาตตามเกณฑ์ข้อบังคับ

## 🚀 Tech Stack & Core Focus
* **Frontend Framework:** Next.js (React)
* **Language:** JavaScript
* **Styling:** Bootstrap
* **System Analyst Focus:** Role-Based Access Control (RBAC), Compliance Logic, and Workflow Management

---

## 🔄 System Workflow (RBAC Logic)
แผนผังแสดงขั้นตอนการทำงานของระบบ ตั้งแต่กระบวนการตรวจสอบสิทธิ์การเข้าใช้งาน (Login) การแยกฟังก์ชันตามบทบาทของเจ้าหน้าที่ (Admin) และผู้ค้าตราสารหนี้ (Trader) ไปจนถึงขั้นตอนการสมัครอบรมและการตรวจสอบข้อมูล
[![System Workflow](https://img.shields.io/badge/View_Diagram-draw.io-orange)](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=EasyBond&dark=0#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Page-1%22%20id%3D%22-xPOI05U-NNI1j6XR6sI%22%3E5Vrbjts2EP0aAe1DAl0t6lGyvS3apCiyBbp5VCzG1kIWDZpe2%2F36UhYvImn5KllZ5MUgh%2BSIlzmHM0Nb3ni5%2Bw2nq8VnlMHCcu1sZ3kTy3Uj4NDfSrCvBYEX1II5zrNa5EjBc%2F4fZEKbSTd5BtdKR4JQQfKVKpyhsoQzoshSjNFW7fYdFepXV%2BkcGoLnWVqY0n%2FzjCxqKQhsKf8d5vMF%2F7Jjs5ZlyjszwXqRZmjbEHlTyxtjhEhdWu7GsKj2ju9LPe6ppVVMDMOSXDLgrz9eoz%2Bfvtovwcv46fNkTbLX4oPj12pgZmyD1MtEa7TBM3hKGetH9nz3KrXPrIowWaA5KtNiKqUJRpsyg9UUbVqTfT4htKJChwpfISF7ZhnphiAqWpBlwVrpLPH%2BpRr%2FMeDVr0zdoTLZKbU9q31HJWFKnWogs60UzyE5sUZXnBy1eIiWkOqk4zAsUpK%2FqXuYMtubi37yeGiBndA1p9V%2BNnLP5Y5W27Nd5AQ%2Br9LDwW0pRNXdS%2FGMbULQvilvabFhyi13VBDWkZbnVdma2lYSWcA%2BFIAVe6yQ%2BLwJ8CaHFaKAN0VcEnHddGsU9fUcICZw11izeQaLBg5HDHRbiVknZDKmxfNZnTFTZPd1akGHGHN%2FAoyFQ2LM7Rxj50HFEDDmuIlUcNAChxSIddyAkI9yJZI0RAJXHyU6x7HxUWDgmOuJYllw7V8%2BoXle%2Fsphm%2BVvCiPQzzq6pngim1x7s4a4TJfQqm6up8Omr9dbhLMGEzS13kIEwCQCgXSmRfRhROD0xwSjDpkg%2FAmYAAzJBOFgTHAaecoN2gQXZwKJ4FjHnRguce%2FzJj48AmoTpYRxBfcvSTxuRXuTbQRHhU20f0HFAekao0XCAeDjdSI7xl9iQcKjSERTMCx9eE5v9OF2SB9gCPq4kQYc%2B%2FhJPcjr9t77tkvWVjhbUni3rO20AOsxxwUuou0FWn7brDugbE5r3lO7I3QnV8tCqEskV4Ydsl50ffTk%2B32xntul08S5%2BX14TZfibdCAybHbj6MvP%2BkfnGYQ32Tbo8C0bVe1bccNVNsO3I9BX9Yddmndg2TgLrTSelMHs9Luc2dnrTTOlnnZl5EG4IFGCro00ncVuF5KwfdGqoehMcbpvtFhhfKSrBua%2F64EDaLSbCC0tScArb%2FvnuxPC%2FUMpKWIpdyBvP7j6LTI5yWtzOgH6LVwBIofeORJPSVfjxivDS%2FPpOuoQl%2BXJOITjq4nMUNi0xUUeri7CCaGBxgccUAb6zYnJbTGiVTGc3GtuyU6yxXwNcnFxfqoIy6wmZMQTU6bM3tqgbHIO4hNCtW10%2FmIRKqrT0M64I6xLl%2Bd4YWp1VsW2FGOQrssQhX3QW8ZTrfT98SBg%2BV%2BbopoUDfosui4l%2BeNREeByG4KxImw2GTZWLwYtjFoA3ECuZGRnRSEJhjp6uziY%2FKIYW8RdW2CP%2BY7spmZPnphiT5AP1bz0clMogszkxlmcdCNHPyw79Eg7I2kow5JmruUj485H%2B1tj%2Fweve3zo3U6qG8aNkqziA7cdv75H8Ntv9DjSlRcq31ce5Kuv6EUZw2f8aQze9qfBvoIk4MS40Wv40f%2Bs6%2F017rRzZtyahBx4388SpzQuJVZobkusS1GdCGv%2Bdhoao99TAdd3OXiNfP%2BKOWGCOSuPP%2Fp2PDk46rSREeFxnlNOotb9OVof%2FY62Gq%2Fsc1IS4Q59wc3tCr%2FiFkzqPw3qzf9Hw%3D%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E)


---

## 🗄️ Database Schema (Normalized Relational Design)

โครงสร้างฐานข้อมูลที่ผ่านการวิเคราะห์และจัดระบบตาม User Requirement ของผู้ดูแลระบบ (Admin) และผู้ค้าตราสารหนี้ (Trader) รองรับระบบจัดการหลักสูตร และการเช็กชื่อเข้าอบรมจริง

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
