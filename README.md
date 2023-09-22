# Documentação
## 📰 Proposta

O objetivo desta documentação é simular a configuração de um ambiente de laboratório de administração de redes com três máquinas virtuais criadas e configuradas usando o Vagrant.
### As três VMs devem ser configuradas da seguinte forma:

####   VM1 - Servidor Web (Privado)
- Sistema Operacional: Ubuntu Server 20.04 LTS
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.10)
- Função: Servidor Web (instalar o Apache)
- Pasta Compartilhada: `/var/www/html` na máquina host deve ser compartilhada com
`/var/www/html` na *vm1*.

#### VM2 - Servidor de Banco de Dados (Privado)
- Sistema Operacional: Ubuntu Server 20.04 LTS
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.11)
- Função: Servidor de Banco de Dados (instalar o MySQL ou PostgreSQL)

#### VM3 - Gateway (Privado DHCP e Pública)
- Sistema Operacional: Ubuntu Server 20.04 LTS
- Interface de Rede 1 (eth0): IP Privado Estático (192.168.50.12)
- Interface de Rede 2 (eth1): IP Público DHCP
- Função: Gateway de Rede
- Deve fornecer acesso à Internet para as *vm1* e *vm2*.

## 📎 Pré requisitos para sistema operacional Linux
* Instalar o [Virtual Box](https://virtualbox.org/) (Opte pela [versão 6.1](https://www.virtualbox.org/wiki/Download_Old_Builds_6_1) ou mais antiga) 
  
* Instalar o [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)
    
## 🔑 Criação e acesso as máquinas
1) Faça o clone do repositório do github para sua máquina.
   - Use o seguinte comando no diretório escolhido: `git clone https://github.com/Gabriel-Victor03/Criando-redes-via-Vagrant.git`
2) Acesse o repositório clonado.
3) Dê o comando `vagrant up` para executar o arquivo Vagrantfile e subir as máquinas virtuais
4) Após encerrado o processo de criação das máquinas virtuais, acesse as máquinas usando o comando `vagrant ssh <nome_da_máquina>`
   - Nesse caso,para identificar cada máquina, use `vm1`, `vm2` e `vm3`
> Lembrando que é possível acessar todas as máquinas ao mesmo tempo, para isso, abra uma nova aba do termninal no local do respositório e dê o comando de acesso.
    
## 📶 Teste
#### Teste dos serviços das vm
1) Após acessar as máquinas virtuais *vm1* e *vm2*, dê o comando `ping 8.8.8.8` e verifique se elas estão conectadas à internet
2) Na *vm1*, verifique se o serviço apache está funcionando executando o comando `service apache2 status`
3) Na *vm2*, verifique se o servidor mysql está funcionando executando o comando `service mysql status` 
#### Teste da conexão de internet via Vm3
1) Para verificar se a conexão das vms é via *vm3*, digite o comando `ip route` nas duas vm e verifique se a rota padrão de IP de ambas é **192.168.50.12**
