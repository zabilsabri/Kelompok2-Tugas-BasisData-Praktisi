# Buat user baru
CREATE USER 'DosenSisfo'@'localhost' IDENTIFIED BY 'dosensisfo.id';

# Beri hak akses ke user 
GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE, ALTER  
ON contract_sisfo
TO 'DosenSisfo'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'DosenSisfo'@'localhost';

# Hapus hak akses user
REVOKE CREATE, DROP, ALTER 
ON contract_sisfo
FROM 'DosenSisfo'@'localhost';
