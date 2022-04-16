local allah = 0

for i = 1,9 do
    allah = allah + 1
    game:GetService('ReplicatedStorage').Knit.Services.RewardService.RF.GiveRewardInBank:InvokeServer(tostring(allah))
end
