CREATE TABLE Province (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    name_eng VARCHAR(100)
);

CREATE TABLE Ward ( 
    id INT PRIMARY KEY, 
    province_id INT NOT NULL, 
    name VARCHAR(100) NOT NULL, 
    name_eng VARCHAR(100), 
    
    CONSTRAINT fk_ward_province 
    FOREIGN KEY (province_id) 
    REFERENCES Province(id)
);

INSERT INTO province (id, name, name_eng)
VALUES
(1, 'Hà Nội', 'Ha Noi'),
(2, 'Hồ Chí Minh', 'Ho Chi Minh City'),
(3, 'Hải Phòng', 'Hai Phong'),
(4, 'Đà Nẵng', 'Da Nang'),
(5, 'Cần Thơ', 'Can Tho'),
(6, 'Huế', 'Hue'),
(7, 'An Giang', 'An Giang'),
(8, 'Bắc Ninh', 'Bac Ninh'),
(9, 'Cà Mau', 'Ca Mau'),
(10, 'Cao Bằng', 'Cao Bang'),
(11, 'Đắk Lắk', 'Dak Lak'),
(12, 'Điện Biên', 'Dien Bien'),
(13, 'Đồng Nai', 'Dong Nai'),
(14, 'Đồng Tháp', 'Dong Thap'),
(15, 'Gia Lai', 'Gia Lai'),
(16, 'Hà Tĩnh', 'Ha Tinh'),
(17, 'Hưng Yên', 'Hung Yen'),
(18, 'Khánh Hòa', 'Khanh Hoa'),
(19, 'Lai Châu', 'Lai Chau'),
(20, 'Lâm Đồng', 'Lam Dong'),
(21, 'Lạng Sơn', 'Lang Son'),
(22, 'Lào Cai', 'Lao Cai'),
(23, 'Nghệ An', 'Nghe An'),
(24, 'Ninh Bình', 'Ninh Binh'),
(25, 'Phú Thọ', 'Phu Tho'),
(26, 'Quảng Ngãi', 'Quang Ngai'),
(27, 'Quảng Ninh', 'Quang Ninh'),
(28, 'Quảng Trị', 'Quang Tri'),
(29, 'Sơn La', 'Son La'),
(30, 'Tây Ninh', 'Tay Ninh'),
(31, 'Thái Nguyên', 'Thai Nguyen'),
(32, 'Thanh Hóa', 'Thanh Hoa'),
(33, 'Tuyên Quang', 'Tuyen Quang'),
(34, 'Vĩnh Long', 'Vinh Long');

INSERT INTO ward (id, province_id, name, name_eng)
VALUES
(1, 1, 'Bách Khoa', 'Bach Khoa'),
(2, 1, 'Đồng Tâm', 'Dong Tam'),
(3, 1, 'Cầu Giấy', 'Cau Giay'),

(4, 2, 'Bến Nghé', 'Ben Nghe'),
(5, 2, 'Bến Thành', 'Ben Thanh'),
(6, 2, 'Tân Định', 'Tan Dinh'),

(7, 3, 'Hồng Bàng', 'Hong Bang'),
(8, 3, 'Lê Chân', 'Le Chan'),

(9, 4, 'Hải Châu', 'Hai Chau'),
(10, 4, 'Thanh Khê', 'Thanh Khe'),

(11, 5, 'Ninh Kiều', 'Ninh Kieu'),
(12, 5, 'Cái Răng', 'Cai Rang'),

(13, 6, 'Phú Hội', 'Phu Hoi'),
(14, 6, 'Thuận Hòa', 'Thuan Hoa');

UPDATE province
SET
    name = 'Thủ đô Hà Nội',
    name_eng = 'Capital City of Ha Noi'
WHERE id = 1;

UPDATE ward
SET
    name = 'Phường Bách Khoa',
    name_eng = 'Bach Khoa Ward'
WHERE id = 1;

DELETE FROM province
WHERE id = 30;

DELETE FROM ward
WHERE province_id = 3;

DELETE FROM province
WHERE id = 3;

SELECT * FROM Province
