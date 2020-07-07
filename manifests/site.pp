node default {

}
node 'master.puppet.wm' {
    include role::master_server
}
