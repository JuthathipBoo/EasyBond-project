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
[![System Workflow](https://img.shields.io/badge/View_Diagram-draw.io-orange)](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=EasyBond&dark=auto#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Page-1%22%20id%3D%22-xPOI05U-NNI1j6XR6sI%22%3E5Vpbr6M2EP41SO3DrsBAgEfIpVW7W1V7KvXsIxu8CUcER4acJP31NcEXbIeEnEDYo32J7LE9%2BDLf55lxDHu6OfyG4%2B36M0pgZgAzORj2zAAg8C3yWwmOtcC13VqwwmlSiywheEr%2Fg1RoUukuTWAhdSwRysp0KwuXKM%2FhspRkMcZoL3f7jjL5q9t4BTXB0zLOdOm%2FaVKua6nvmkL%2BO0xXa%2FZly6Qtm5h1poJiHSdo3xDZc8OeYoTKurQ5TGFW7R3bl3rcoqWVTwzDvOwy4K8%2FXoI%2FF1%2FNZ%2Fd5uvg8K8rkJftgObUamGjbIPRSUYF2eAkvKaP9yiPbvUrtE60iXK7RCuVxNhfSCKNdnsBqiiapiT6fENoSoUWEL7Asj9Qy4l2JiGhdbjLaSmaJj8%2FV%2BI8uq36l6k6V2UGqHWntO8pLqtSqBlLbivEKlhfWCPjJEYuHaAOJTjIOwywu01d5D2NqeyveTxwPKdATuuW02s9G7LnY0Wp79uu0hE%2Fb%2BHRwewJRefdivKSb4LZvymuc7ahyA0yyknYk5VVVNuamEQWGb54KvhHatBA5rMlnTRYtBC5rCpgkYLrJ1kjq6zlAXMJDY836GawbOJxQ0O0FZi2PyqgW26F1ykyBOdSpuT1iDPwEGPPGxBjoHWPXQUURMGW4CWRwkAKDlB%2BquPE9NgoIJCmI9IE6incOQ%2B2jvoZjpicIRQGYv3xCqzT%2FlcE2SV8lRiCftVRN4Uw0AXNXQJzHG2hUN9fitOlFsUc4aTBBU%2BtbiMDXiYAjnWrhfSgRWMMxwaRHJvB%2BAibwx2QCbzQmuIw86QZtgosxgUBwqOKODxe4d1gTGx74chOhhGkF9y9ROG1Fe5NtOEd5TbR%2FQdkJ6QqjBdwBYONVIjvHX3xB3KOIeJM7Ln3Y1mD0AXqkD38M%2BngjDVjm%2BZN6kNdtv%2FdtF6wtcbag8H5Z22oB1mOOy%2B9E22u0%2BbYreqBsRmv2ot0RupOrRcFTJYIrvR5ZL7g9enKcoVgP9Ok0MW5%2BH15TV7yNGjBZZvtxDOUn%2FYPjBOI32fbE1W0byLZtAVe2bRd8dIeybq9P6x4lA9fRSutNHc1K%2B8%2BdXbXSMNmk%2BVBG6voPNFK%2FTyN9V4FrVwq%2BN1I9DQ0xjo%2BNDluU5mXR0Px3JWgQlWIDnqk8ASj9HXCxPynUMxCWwpdyB%2FKGj6PjLF3lpLIkHyDXwhkofmCRJ%2FGUHDVi1JNql8PLK%2Bk6otBRJRGPYC1VT6SHxLoryPUwd9GfaR6ge8YBbaxbnxTXGkZCGcvFte4W7yxWwNYkFheq8z3jAus5Cd5ktTmzlxYY8mPkm%2BTJayfz4YlUoE5DOOCWti5HnmHH1OpbFthTjkK5LDwZ9%2B5gGU7Q63viyMHyMDdFMKob1C06HuR5I1JRwLObHHE8LNZZNuQvhm0M2kAcR26gZSc5oXFGujm7%2BJg8ojdYRF2b4I%2F5jqxnps9eWPr9wo5Vf3TSk%2BjczESGmR90Iwc%2F7nu07w1G0kGPJM1cysfHnI%2F2tifOgN729dEqHdQ3DR2lWEQPbjv7%2FI%2Fhtnf0uCIZ13IfYM7i4huKcdLwGS86s5f9aV8doXNQpL3odXrkt9XZtz7yX32lv9WNbt6Uc42IG%2F%2FjkeKExq1MC8118W3RogtxzYdaU3vsozvo%2FC7nr5m3RSmBqkdi%2F84RyF15%2Fsux4cXHVamJjPK085r1Freoy1H%2B7HWy1WFjm4mSCLPuD25IVfwRs2ZQ8W9We%2F4%2F%3C%2Fdiagram%3E%3C%2Fmxfile%3E)


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
