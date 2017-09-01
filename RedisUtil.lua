--
-- Created by IntelliJ IDEA.
-- User: lisubin
-- Date: 2017/6/21
-- Time: 13:20
-- To change this template use File | Settings | File Templates.
--

function getClient()
    local redis = require 'redis'
    local client = redis.connect('172.16.2.146', 6379)
    local response = client:ping()            --true
    return client
end


function setValue(key, value)
    client = getClient()
    client:set(key, value)
end

function getValue(key)
    client = getClient()
    local result = client:get(key)
    print("result:", result)
    return result
end


setValue('global1', 'value111')
print(getValue("global1"))


