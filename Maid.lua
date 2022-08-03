local Maid = {}
Maid.ClassName = "Maid"


function Maid.new()
	local self = {}

	self._tasks = {}

	return setmetatable(self, Maid)
end

function Maid:GiveTask(task)
	assert(task)
	local taskId = #self._tasks+1
	self[taskId] = task

	if type(task) == "table" and (not task.Destroy) then
		warn("[Maid.GiveTask] - Gave table task without .Destroy\n\n" .. debug.traceback())
	end

	return taskId
end

function Maid:DoCleaning()
	local tasks = self._tasks

	for index, task in pairs(tasks) do
		if typeof(task) == "RBXScriptConnection" then
			tasks[index] = nil
			task:Disconnect()
		end
	end

	local index, task = next(tasks)
	while task ~= nil do
		tasks[index] = nil
		if type(task) == "function" then
			task()
		elseif typeof(task) == "RBXScriptConnection" then
			task:Disconnect()
		elseif task.Destroy then
			task:Destroy()
		end
		index, task = next(tasks)
	end
end

Maid.Destroy = Maid.DoCleaning
return Maid
