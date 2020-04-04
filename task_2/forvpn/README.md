#***************************************************************************************
#***************************************************************************************

1 - Öncelikle yapmanız gereken kendinize ait kullanıcı adı, şifre ve TRUBA-genel.ovpn dosyasının yerini text dosyasına yerleştirin.
                        kullaniciadi
                        şifre
                        (/home/host_name/TRUBA-genel.ovpn gibi)

2 - Expect dosyası (.exp) bu text dosyasından verileri satır satır alıp şifre kullanıcı adı vs. sorduğunda yerleştirecek.

3 - Terminaldeyken home'a gidin ve ./.bashrc dosyasını aliasvpn.txt dosyasında yazan scripti kopyalayarak düzenleyin (vim ./.bashrc).

Final - :wq yapıp bashrc dosyasından çıkıp source ~/.bashrc komutunu girerek alias komutunu kaydedebiliriz. Daha sonra komut satırına trubavpn yazdığımızda vpn ile girecektir.

Not - aliasvpn ile çalıştırdığınız terminali açık bırakıp başka terminal açın.
# **************************************************************************************
# **************************************************************************************
