CREATE DATABASE IF NOT EXISTS praktikum2_kelompok_mahruf;
USE praktikum2_kelompok_mahruf;

-- BAGIAN A
DROP PROCEDURE IF EXISTS bagian_a;
DELIMITER $$
CREATE PROCEDURE bagian_a()
BEGIN
    DECLARE v_nama VARCHAR(100) DEFAULT 'Muhammad Mahruf';
    DECLARE v_nim VARCHAR(15) DEFAULT 'IK2411061';
    DECLARE v_semester INT DEFAULT 4;
    DECLARE v_prodi VARCHAR(50) DEFAULT 'Informatika';
    DECLARE v_kampus VARCHAR(100) DEFAULT 'Universitas Mega Buana Palopo';

    SELECT CONCAT(
        'Mahasiswa ', v_nama, ' (', v_nim, ') dari Program Studi ',
        v_prodi, ' terdaftar di ', v_kampus,
        ' pada semester ', v_semester, '.'
    ) AS identitas;
END $$
DELIMITER ;

-- BAGIAN B
DROP PROCEDURE IF EXISTS bagian_b;
DELIMITER $$
CREATE PROCEDURE bagian_b()
BEGIN
    DECLARE v_sks INT DEFAULT 18;
    DECLARE v_ipk DECIMAL(3,2) DEFAULT 3.40;
    DECLARE v_semester INT DEFAULT 4;
    DECLARE v_status VARCHAR(10) DEFAULT 'LUNAS';

    DECLARE v_valid VARCHAR(20);
    DECLARE v_beban VARCHAR(20);
    DECLARE v_performa VARCHAR(30);

    IF v_status = 'LUNAS' AND v_semester > 0 AND v_sks > 0 THEN
        SET v_valid = 'Valid';
    ELSE
        SET v_valid = 'Tidak Valid';
    END IF;

    IF v_sks BETWEEN 1 AND 12 THEN
        SET v_beban = 'Ringan';
    ELSEIF v_sks BETWEEN 13 AND 18 THEN
        SET v_beban = 'Sedang';
    ELSE
        SET v_beban = 'Padat';
    END IF;

    IF v_ipk >= 3.50 THEN
        SET v_performa = 'Sangat Baik';
    ELSEIF v_ipk >= 3.00 THEN
        SET v_performa = 'Baik';
    ELSEIF v_ipk >= 2.50 THEN
        SET v_performa = 'Cukup';
    ELSE
        SET v_performa = 'Perlu Pembinaan';
    END IF;

    SELECT v_valid AS status_data,
           v_beban AS beban_studi,
           v_performa AS performa_akademik;
END $$
DELIMITER ;

-- BAGIAN C
DROP PROCEDURE IF EXISTS bagian_c;
DELIMITER $$
CREATE PROCEDURE bagian_c()
BEGIN
    DECLARE v_nama VARCHAR(100) DEFAULT 'Muhammad Mahruf';
    DECLARE v_nim VARCHAR(15) DEFAULT 'IK2411061';
    DECLARE v_semester INT DEFAULT 4;
    DECLARE v_sks INT DEFAULT 18;
    DECLARE v_ipk DECIMAL(3,2) DEFAULT 3.40;
    DECLARE v_status VARCHAR(10) DEFAULT 'LUNAS';

    DECLARE v_kelayakan VARCHAR(20);
    DECLARE v_beban VARCHAR(20);
    DECLARE v_performa VARCHAR(30);

    IF v_status = 'LUNAS' AND v_semester > 0 AND v_sks > 0 THEN
        SET v_kelayakan = 'Layak';
    ELSE
        SET v_kelayakan = 'Tidak Layak';
    END IF;

    IF v_sks BETWEEN 1 AND 12 THEN
        SET v_beban = 'Ringan';
    ELSEIF v_sks BETWEEN 13 AND 18 THEN
        SET v_beban = 'Sedang';
    ELSE
        SET v_beban = 'Padat';
    END IF;

    IF v_ipk >= 3.50 THEN
        SET v_performa = 'Sangat Baik';
    ELSEIF v_ipk >= 3.00 THEN
        SET v_performa = 'Baik';
    ELSEIF v_ipk >= 2.50 THEN
        SET v_performa = 'Cukup';
    ELSE
        SET v_performa = 'Perlu Pembinaan';
    END IF;

    SELECT CONCAT(
        'Mahasiswa ', v_nama, ' dengan NIM ', v_nim,
        ' dinyatakan ', v_kelayakan, ' mengambil KRS. ',
        'Beban studi ', v_beban, ' dengan performa ', v_performa, '.'
    ) AS hasil;
END $$
DELIMITER ;

-- BAGIAN D
DROP PROCEDURE IF EXISTS bagian_d;
DELIMITER $$
CREATE PROCEDURE bagian_d()
BEGIN
    DECLARE namaA VARCHAR(100) DEFAULT 'Muhammad Mahruf';
    DECLARE ipkA DECIMAL(3,2) DEFAULT 3.40;
    DECLARE sksA INT DEFAULT 18;

    DECLARE namaB VARCHAR(100) DEFAULT 'Fauzan Azima';
    DECLARE ipkB DECIMAL(3,2) DEFAULT 3.60;
    DECLARE sksB INT DEFAULT 20;

    DECLARE hasil VARCHAR(200);

    IF ipkA > ipkB THEN
        SET hasil = CONCAT(namaA, ' lebih unggul');
    ELSEIF ipkB > ipkA THEN
        SET hasil = CONCAT(namaB, ' lebih unggul');
    ELSE
        IF sksA > sksB THEN
            SET hasil = CONCAT(namaA, ' lebih unggul');
        ELSE
            SET hasil = CONCAT(namaB, ' lebih unggul');
        END IF;
    END IF;

    SELECT hasil AS kesimpulan;
END $$
DELIMITER ;
