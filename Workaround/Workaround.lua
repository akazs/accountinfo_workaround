-- overwrites C_BattleNet.GetFriendGameAccountInfo
local originalFunc = C_BattleNet.GetFriendGameAccountInfo
C_BattleNet.GetFriendGameAccountInfo = function(friendIndex, accountIndex)
	local gameAccountInfo = originalFunc(friendIndex, accountIndex)
	if (gameAccountInfo["regionID"] == GetCurrentRegion()) then
		gameAccountInfo.isInCurrentRegion = true
	end
	return gameAccountInfo;
end
