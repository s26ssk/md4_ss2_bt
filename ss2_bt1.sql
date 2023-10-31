CREATE DATABASE ss2_BT1;
USE ss2_BT1;

CREATE TABLE vat_tu(
    id_vt INT NOT NULL AUTO_INCREMENT,
    ten_vt VARCHAR(40) NOT NULL,
    PRIMARY KEY (id_vt)
);

CREATE TABLE phieu_xuat(
    id_px INT  NOT NULL AUTO_INCREMENT,
    ngay_xuat DATE NOT NULL,
    PRIMARY KEY (id_px)
);

CREATE TABLE vat_tu_phieu_xuat(
    id INT NOT NULL AUTO_INCREMENT,
    id_vt INT,
    id_px INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_vt) REFERENCES vat_tu (id_vt),
    FOREIGN KEY (id_px) REFERENCES phieu_xuat (id_px)
);

CREATE TABLE phieu_nhap(
    id_pn INT NOT NULL AUTO_INCREMENT,
    ngay_nhap DATE NOT NULL,
    PRIMARY KEY (id_pn)
);

CREATE TABLE vat_tu_phieu_nhap(
    id INT NOT NULL AUTO_INCREMENT,
    id_vt INT,
    id_pn INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_vt) REFERENCES vat_tu (id_vt),
    FOREIGN KEY (id_pn) REFERENCES phieu_nhap (id_pn)
);

CREATE TABLE nha_cung_cap(
    id_ncc INT NOT NULL AUTO_INCREMENT,
    ten_ncc VARCHAR(40) NOT NULL,
    dia_chi TEXT NOT NULL,
    sdt VARCHAR(11),
    PRIMARY KEY (id_ncc)
);

CREATE TABLE don_dat_hang(
    id_dh INT NOT NULL AUTO_INCREMENT,
    ngay_dh DATE NOT NULL,
    id_ncc INT,
    PRIMARY KEY (id_dh),
    FOREIGN KEY (id_ncc) REFERENCES nha_cung_cap (id_ncc)
);

CREATE TABLE vat_tu_don_dat_hang(
    id INT NOT NULL AUTO_INCREMENT,
    id_vt INT,
    id_dh INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_vt) REFERENCES vat_tu (id_vt),
    FOREIGN KEY (id_dh) REFERENCES don_dat_hang (id_dh)
);
