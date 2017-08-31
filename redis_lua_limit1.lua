--
-- Created by IntelliJ IDEA.
-- User: lisubin
-- Date: 2017/8/31
-- Time: 19:30
-- To change this template use File | Settings | File Templates.
--
function getClient()
    local redis = require 'redis'
    local client = redis.connect('172.16.2.146', 6379)
    local response = client:ping()            --true
    print(response)
    return client
end

key = "road"
value = "look"
client = getClient()

local times = client:incr(key) --设置key(KEY[1])并加1

if times == 1 then
    client:expire(key, value) --设置超时时间
end

print(client:get(key))
if times > tonumber(5) then --限流大小
return 0
end

return 1


