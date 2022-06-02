echo "raheen here welcome to my recon project"
echo 
echo "enter any domain name"
read a
#i am using  KHAADI as my domain
#checkin ips
echo "--------IP RESOLUTION------------------"
nslookup $a 
#using whois to get basic info
echo "----------WHOIS------------------"
whois $a -H  
#using dig command for zone transfer
echo "---------------DIG--------------------"
dig $a  >> domains.txt
cat domains.txt
#using sublist3r for domains
echo "----------------SUBLIST3R------------------"
sublist3r  -d $a -o domains.txt
#domain.txt for saving domains in file
#using theharvester for  fining email address
echo "---------------THEHARVESTER----------------"
theHarvester  -d $a -l 500 -b all -f domains.txt
#using nmap for open ports state 
echo "--------------NMAP-----------------"
nmap $a >> domains.txt
cat domains.txt


