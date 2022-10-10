# Buat user baru
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'DosenSisfo'@'localhost' IDENTIFIED BY 'dosensisfo.id';
CREATE USER 'mahasiswa'@'localhost' IDENTIFIED BY 'mahasiswa';

# Beri hak akses ke user 
GRANT ALL   
ON contract_sisfo
TO 'admin'@'localhost';

GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE, ALTER  
ON contract_sisfo
TO 'DosenSisfo'@'localhost';

GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE, ALTER  
ON contract_sisfo
TO 'mahasiswa'@'localhost';


# Cek status hak akses user
SHOW GRANTS FOR 'DosenSisfo'@'localhost';

# Hapus hak akses user
REVOKE CREATE, DROP, ALTER 
ON contract_sisfo
FROM 'DosenSisfo'@'localhost';

REVOKE CREATE, DROP, ALTER 
ON contract_sisfo
FROM 'mahasiswa'@'localhost';

