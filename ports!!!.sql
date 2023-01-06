SELECT tbl_meaning.meaning, tbl_meaning.mid, 
tbl_port.port,
tbl_abk.abk,
tbl_name.NAME

FROM tbl_meaning
INNER JOIN tbl_port 
ON tbl_meaning.mid=tbl_port.mid

INNER JOIN tbl_abk 
ON tbl_meaning.mid = tbl_abk.mid

INNER JOIN tbl_name 
ON tbl_meaning.mid = tbl_name.mid;

CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

#SELECT* FROM users;