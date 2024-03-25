Basta executar estes comandos em uma instalação mínima nova do CentOS 7

1º Cole o codigo abaixo no terminal para Instalar o ISSABEL-PBX (Asterisk-13)

```bash
yum -y install wget
wget -O - http://repo.issabel.org/issabel4-netinstall.sh | bash
```
2º faça login no ISSABEL-PBX rode o Backup

3º Cole o codigo abaixo no terminal para subir as configurações da URA
```bash
yum update
yum -y install -y git nano && git clone https://github.com/skynetfibragithub/ISSABEL-PBX.git && sudo chmod -R 777 ISSABEL-PBX && cd ISSABEL-PBX && sudo ./install
./install
```

