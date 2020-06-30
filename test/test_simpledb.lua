local lu = require "luaunit"
local skynet = require "skynet"
require "skynet.manager"

local sdb
local t = {}

function t.setup()
    sdb = skynet.newservice('simpledb')
end

function t.teardown()
    skynet.kill(sdb)
end

function t.test_setget()
    skynet.call(sdb, 'lua', 'set', 'aaa', 111)
    local r = skynet.call(sdb, 'lua', 'get', 'aaa')
    lu.assertEquals(r, 111)
end

_G.testSimpledb = t

