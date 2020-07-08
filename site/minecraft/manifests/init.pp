class minecraft {
file {'/opt/minecraft':
      ensure => directory, 
      }
    
file {'/opt/minecraft/minecraft_server.jar':
      ensure => file,
      source => 'https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar' ,
      }
      
 package {'java':
          ensure => present , 
          }
          
 file {'/opt/minecraft/eula.txt':
       ensure => present , 
       content => 'eula=true', 
      }
 
 file {'/etc/systemd/system/minecraft.service':
       ensure => present , 
       source => 'puppet:///module/minecraft/minecraft.service', 
      }
      
  service{'minecraft':
          ensure => running , 
          enable => true , 
  
          }
          
}
