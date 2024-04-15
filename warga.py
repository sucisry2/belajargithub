class Warga():
    def __init__(self, NIK):
        self.nik = NIK

    def nyoblos(self, pilihan):
        self.pilihan = pilihan
        print(f'{self.nik} memilih {pilihan}')

print('hello world')