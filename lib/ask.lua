local console = require('lib.console')

function _info_question(message)
    local emoticon = console.getInfo('[?]')
    return emoticon .. " " .. message .. ": ";
end

function _sample_question(message)
    local emoticon = console.getSuccess('[*]')
    return emoticon .. " " .. message .. ": ";
end

-- Public

function firstname()
    local message = "What is your firstname?" 
    io.stdout:write(_sample_question(message))

    return io.stdin:read()
end

function lastname()
    local message = "What is your lastname?" 
    io.stdout:write(_sample_question(message))

    return io.stdin:read()
end

function yearsOld()
    local message = "How old are you?" 
    io.stdout:write(_sample_question(message))

    return io.stdin:read()
end

return {
    firstname = firstname,
    lastname = lastname,
    yearsOld = yearsOld,
}