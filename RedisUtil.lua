--
-- Created by IntelliJ IDEA.
-- User: lisubin
-- Date: 2017/6/21
-- Time: 13:20
-- To change this template use File | Settings | File Templates.
--

local redis = require 'redis'
local client = redis.connect('172.16.2.146', 6379)
local response = client:ping()            --true

client:set('lee2', "add11")





