CREATE TABLE Province (
    id INT PRIMARY KEY,
    name text NOT NULL,
    name_eng text,
    created_at timestamptz default now(),
    created_by bigint,
    updated_at timestamptz,
    updated_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    is_active boolean default true
);

CREATE TABLE Ward ( 
    id INT PRIMARY KEY, 
    province_id INT NOT NULL, 
    name text NOT NULL, 
    name_eng text,
    created_at timestamptz default now(),
    created_by bigint,
    updated_at timestamptz,
    updated_by bigint,
    deleted_at timestamptz,
    deleted_by bigint,
    is_active boolean default true,
    
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
(8, 'Bắc Ninh', 'Bac Ninh');

INSERT INTO ward (id, province_id, name, name_eng)
VALUES
(1, 1, 'Bách Khoa', 'Bach Khoa'),
(2, 1, 'Đồng Tâm', 'Dong Tam'),
(3, 1, 'Cầu Giấy', 'Cau Giay'),

(4, 2, 'Bến Nghé', 'Ben Nghe'),
(5, 2, 'Bến Thành', 'Ben Thanh'),
(6, 2, 'Tân Định', 'Tan Dinh'),

(7, 3, 'Hồng Bàng', 'Hong Bang'),
(8, 3, 'Lê Chân', 'Le Chan');



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

UPDATE province
SET is_active = false, deleted_at = now()
WHERE id = 8;

UPDATE ward
SET is_active = false, deleted_at = now()
WHERE province_id = 3;

UPDATE province
SET is_active = false, deleted_at = now()
WHERE id = 3;

SELECT * FROM Province

DROP TABLE IF EXISTS province;

DROP TABLE IF EXISTS ward;
