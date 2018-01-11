
-- En provenance de https://github.com/bluebird75/luaunit/blob/4d1db2a3ab84acb56ac37ea3357913882e15019a/luaunit.lua#L220
-- luaunit

local function strsplit(delimiter, text)
-- Split text into a list consisting of the strings in text, separated
-- by strings matching delimiter (which may _NOT_ be a pattern).
-- Example: strsplit(", ", "Anna, Bob, Charlie, Dolores")
    if delimiter == "" then -- this would result in endless loops
        error("delimiter matches empty string!")
    end
    local list, pos, first, last = {}, 1
    while true do
        first, last = text:find(delimiter, pos, true)
        if first then -- found?
            table.insert(list, text:sub(pos, first - 1))
            pos = last + 1
        else
            table.insert(list, text:sub(pos))
            break
        end
    end
    return list
end
M.private.strsplit = strsplit


-- Version sans les commentaires


local function strsplit(delimiter, text)
    if delimiter == "" then
        error("delimiter matches empty string!")
    end
    local list, pos, first, last = {}, 1
    while true do
        first, last = text:find(delimiter, pos, true)
        if first then -- found?
            table.insert(list, text:sub(pos, first - 1))
            pos = last + 1
        else
            table.insert(list, text:sub(pos))
            break
        end
    end
    return list
end
M.private.strsplit = strsplit

