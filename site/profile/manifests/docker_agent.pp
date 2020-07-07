class profile::docker_agent {
include dockeragent
dockeragent::node {'web.puppet.vm': }
dockeragent::node {'db.puppet.vm': }

}
