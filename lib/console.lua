local fg_colors = {
    black = 30,
    red = 31,
    green = 32,
    yellow = 33,
    blue = 34,
    magenta = 35,
    cyan = 36,
    light_gray = 37
}
local reset_color = 0

function _get_message_color(fg_color, message)
    message = message or ''
    local msg = "\27[" .. fg_color .. "m" .. message .. "\27[" .. reset_color .. "m"
    return msg
end

-- Messages with format color
function getWarning(message)
    return (_get_message_color(fg_colors['yellow'], message))
end
function getSuccess(message)
    return (_get_message_color(fg_colors['green'], message))
end
function getInfo(message)
    return (_get_message_color(fg_colors['blue'], message))
end
function getError(message)
    return (_get_message_color(fg_colors['red'], message))
end

-- Prints
function warning(message)
    return print(getWarning(message))
end
function success(message)
    return print(getSuccess(message))
end
function info(message)
    return print(getInfo(message))
end
function error(message)
    return print(getError(message))
end

-- General
function sleep(n)
    os.execute("sleep " .. tonumber(n))
end

return {
    success = success,
    warning = warning,
    info = info,
    error = error,
    getSuccess = getSuccess,
    getWarning = getWarning,
    getInfo = getInfo,
    getError = getError,
    sleep = sleep
}
