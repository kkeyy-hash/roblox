local Maid = {}
Maid.ClassName = "Maid"

function Maid.new()
    local self = {}
    self._tasks = {}

    return setmetatable(self, Maid)
end

function Maid.Destroy()
    self:CleanUp()
    setmetatable(self, nil)
end

function Maid:GiveTask(Task)
    print("Received task")
    assert(Task, "[CLEARDD] Task is required to proceed")
    local TaskID = #self._tasks + 1
    self[TaskID] = Task

    if type(task) == "table" and (not task.Destroy) then
        return error("[CLEARDD] Maid.GiveTask Error, function or RBXScriptConnection expected, got table")
    end

    return TaskID
end

function Maid:CleanUp()
    for I, V in ipairs(self._tasks) do
        self._tasks[I] = nil
		if typeof(V) == "RBXScriptConnection" then
			V:Disconnect()
        elseif type(V) == "function" then
            V()
        elseif V.Destroy then
            V:Destroy()
		end
	end
end

return Maid
