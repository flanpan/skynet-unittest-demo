local skynet = require "skynet"
local lu = require "luaunit"

--------tests script--------
require "test_simpledb"

----------------------------

skynet.start(function()
    lu.LuaUnit.run('-v', '-o','junit', '-n', 'reqport.xml')
    os.exit(0)
end)