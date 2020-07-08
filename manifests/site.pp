node default {

}
node 'master.puppet.vm' {
    include role::master_server
    
    file {'/root/README':
            ensure => file , 
            content=> "DNS : ${fqdn} \nMAC: ${macaddress}\n", 
    
    
        }
}

node /^web/ {
include role::app_server
}

node /^db/ {
include role::db_server
}

node 'minecraft.puppet.vm'{
include role::minecraft_server

}

