local access = require "kong.plugins.ldap-auth-plus.access"
local BasePlugin = require "kong.plugins.base_plugin"

local LdapAuthHandler = BasePlugin:extend()

function LdapAuthHandler:new()
  LdapAuthHandler.super.new(self, "ldap-auth-plus")
end

function LdapAuthHandler:access(conf)
  LdapAuthHandler.super.access(self)
  access.execute(conf)
end

LdapAuthHandler.PRIORITY = 999

return LdapAuthHandler
