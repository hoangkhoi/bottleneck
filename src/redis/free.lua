local settings_key = KEYS[1]
local running_key = KEYS[2]
local executing_key = KEYS[3]

local index = ARGV[1]
local now = tonumber(ARGV[2])

redis.call('zadd', executing_key, 0, index)

return refresh_capacity(executing_key, running_key, settings_key, now, false)[2]
