#!/bin/bash
#
# functions for setting up app backend


#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_extract_ura() {
  print_banner
  printf "${WHITE} 💻 Extraindo os arquivos da URA..."
  printf "\n\n"
  sleep 2
  
  sleep 2

}

#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_copy_ura() {
  print_banner
  printf "${WHITE} 💻 Descompactando os arquivos da URA..."
  printf "\n\n"

  sleep 2
  
  cp -r /root/ISSABEL-PBX/agi-bin/cron_fat_mensal.php /var/lib/asterisk/agi-bin
  cp -r /root/ISSABEL-PBX/agi-bin/ura_consulta.php /var/lib/asterisk/agi-bin
  cp -r /root/ISSABEL-PBX/sounds/* /var/lib/asterisk/en/
  cp -r /root/ISSABEL-PBX/conf /etc/asterisk/




  sleep 2
}

#######################################
# sets environment variable for backend.
# Arguments:
#   None
#######################################
backend_copy_send_bol_pdf() {
  print_banner
  printf "${WHITE} 💻 Reiniciando Serviço (Asterisk)..."
  printf "\n\n"

  sleep 2
  service asterisk restart
  sleep 2
}
