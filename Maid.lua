--> Made by kkeyy with lua <--
--> Variables <--
local Maid = {}
Maid.ClassName = "Maid"
Maid.__index = Maid


--> Create maid <--
function Maid.new()
    local self = {}
    self._tasks = {}
    return setmetatable(self, Maid)
end


--> Destroy maid <--
function Maid.Destroy()
    self:CleanUp()
    setmetatable(self, nil)
end


--> Create task <--
function Maid:GiveTask(Task)
    assert(Task, "[NORDHOOK.CC] Task is required to proceed")
    local TaskID = #self._tasks + 1
    self._tasks[TaskID] = Task

    if typeof(Task) == "table" and (not Task.Destroy) then
        return error("[NORDHOOK.CC] Maid.GiveTask Error, function or RBXScriptConnection expected, got table")
    end

    return TaskID
end


--> Clean single task <--
function Maid:CleanTask(Index, Task)
    assert(Task, "[NORDHOOK.CC] Task is required to proceed")
    local TaskType = typeof(Task)

    if TaskType == "RBXScriptConnection" then
        self._tasks[Index] = nil
        Task:Disconnect()
    end

    if self._tasks[Index] ~= nil then
        self._tasks[Index] = nil
        if TaskType == "function" then
            Task()
        elseif TaskType == "RBXScriptConnection" then
            Task:Disconnect()
        elseif TaskType == "thread" then
            task.cancel(Task)
        elseif Task.Destroy then
            Task:Destroy()
        end
    end
end


--> Clean tasks <--
function Maid:CleanUp()
    for I, V in ipairs(self._tasks) do
        self:CleanTask(I, V)
    end
end


--> Returning the maid <--
return Maid
