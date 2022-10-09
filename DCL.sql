# Buat user baru
CREATE USER 'DosenSisfo'@'localhost' IDENTIFIED BY 'dosensisfo.id';

# Beri hak akses ke user 
GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE 
ON contract_sisfo
TO 'DosenSisfo'@'localhost';

# Beri akses tertentu (misal akses SELECT) kepada semua user
GRANT SELECT 
ON contract_sisfo
TO '*'@'localhost';

# Cek status hak akses user
SHOW GRANTS FOR 'DosenSisfo'@'localhost';

# Hapus hak akses user
REVOKE CREATE, DROP 
ON contract_sisfo
TO 'DosenSisfo'@'localhost';

# Hapus akses tertentu (misal akses DROP) kepada semua user
REVOKE DROP  
ON contract_sisfo
TO '*'@'localhost';