ALTER PROCEDURE get_gaji_dan_peringkat
@departement varchar(100)
AS
BEGIN
	SELECT nama, departemen, gaji,
	RANK() OVER (PARTITION BY departemen ORDER BY gaji DESC) AS peringkat_gaji
	FROM pegawai
	where departemen = @departement;
END
GO

exec get_gaji_dan_peringkat'Marketing';

CREATE INDEX idx_gaji ON pegawai(gaji);