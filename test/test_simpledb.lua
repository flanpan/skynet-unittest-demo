local lu = require "luaunit"
local skynet = require "skynet"

skynet.init(function ()
    skynet.newservice('simpledb')
end)


local t = {}

function t:test_setget()
    skynet.call('SIMPLEDB', 'lua', 'set', 'aaa', 111)
    local r = skynet.call('SIMPLEDB', 'lua', 'get', 'aaa')
    lu.assertEquals(r, 111)
end

_G.testSimpledb = t

