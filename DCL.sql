USE contract_sisfo;

# Buat user baru
CREATE USER 'DosenSisfo'@'localhost' IDENTIFIED BY 'dosensisfo.id';

# Beri hak akses ke user 
GRANT CREATE, DROP, SELECT, INSERT, DELETE, UPDATE 
ON contract_sisfo
TO 'DosenSisfo'@'localhost';

# Hapus hak akses user
REVOKE CREATE, DROP 
ON contract_sisfo
TO 'DosenSisfo'@'localhost';