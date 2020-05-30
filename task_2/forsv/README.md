#***************************************************************************************
#***************************************************************************************

1 - Öncelikle yapmanız gereken kendinize ait kullanıcı adı, şifre ve server isimlerini bir text dosyasına yerleştirin.
			kullaniciadi
			şifre
			serverismi (levrek1.ulakbim.gov.tr gibi)

2 - Expect dosyası (.exp) bu text dosyasından verileri satır satır alıp şifre kullanıcı adı vs. sorduğunda yerleştirecek.

3 - Terminaldeyken home'a gidin ve ./.bashrc dosyasını aliasv.txt dosyasında yazan scripti kopyalayarak düzenleyin (vim ./.bashrc). 

Final - :wq yapıp bashrc dosyasından çıkıp source ~/.bashrc komutunu girerek alias komutunu kaydedebiliriz. Daha sonra komut satırına trubasv yazdığımızda servera girecektir.
# **************************************************************************************
# **************************************************************************************
