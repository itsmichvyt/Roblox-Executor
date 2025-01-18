local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/itsmichvyt/Roblox_Scripts/refs/heads/main/functions.lua"))();
local v1 = game:GetService("Debris");
local v2 = game.Players.LocalPlayer;
local v3 = v2:GetMouse();
local v4 = game:GetObjects("rbxassetid://13602301356")[1];
local v5 = v4:WaitForChild("Boom");
local v6 = v4:WaitForChild("Swoosh");
local v7 = Instance.new("Part");
do
	v7.Name = "Rocket";
	v7.FormFactor = Enum.FormFactor.Custom;
	v7.Size = Vector3.new(1.2 - 0, 514.2 - (232 + 281), 3.27 + 0);
	v7.CanCollide = false;
	local v16 = Instance.new("SpecialMesh", v7);
	v16.MeshId = "rbxassetid://2251534";
	v16.Scale = Vector3.new(1253.35 - (976 + 277), 0.35, 1138.25 - (116 + 1022));
	local v19 = Instance.new("Fire", v7);
        v19.Heat = 15
        v19.Size = 12
	local v22 = Instance.new("BodyForce", v7);
	v22.Force = Vector3.new(0 - 0, v7:GetMass() * workspace.Gravity, 0 - 0);
end
v4.Parent = v2.Backpack;
v4.Activated:Connect(function()
	local v24 = v6:Clone();
	v24.Parent = game:GetService("ReplicatedStorage");
	local v26 = v5:Clone();
	v26.Parent = game:GetService("ReplicatedStorage");
	local v28 = v3.Hit.p;
	local v29 = v7:Clone();
	v29.BrickColor = BrickColor.Gray();
	v1:AddItem(v29, 18 - 8);
	v24:Play();
	local v31 = (v4.Handle.CFrame * CFrame.new(5, 350 - (87 + 263), 180 - (67 + 113))).p;
	v29.CFrame = CFrame.new(v31, v28);
	v29.Velocity = v29.CFrame.lookVector * (919 - (814 + 45));
	v29.Parent = workspace;
	task.spawn(function()
		local v37 = 0 + 0;
		while true do
			if (v37 == (1 + 0)) then
				v24:Stop();
				v24:Destroy();
				v37 = 4 - 2;
			end
			if (v37 == (2 + 0)) then
				if not v26.isPlaying then
					v26:Stop();
					v26:Destroy();
				end
				break;
			end
			if (v37 == (0 - 0)) then
				repeat
					task.wait();
				until not v29:IsDescendantOf(workspace) or (v29 == nil) 
				v24.Volume = 952 - (802 + 150);
				v37 = 2 - 1;
			end
		end
	end);
	v29.Touched:Connect(function()
		local v38 = v29.CFrame;
		local v39 = v29.Position;
		v29:Destroy();
		task.spawn(function()
			local v49 = 1423 - (630 + 793);
			while true do
				if (v49 == (3 - 1)) then
					v26.Ended:Wait();
					v26.Volume = 0;
					v49 = 3 + 0;
				end
				if (v49 == (997 - (915 + 82))) then
					v24.Volume = 0 - 0;
					v24:Stop();
					v49 = 1 + 0;
				end
				if (v49 == (1 - 0)) then
					v24:Destroy();
					v26:Play();
					v49 = 2;
				end
				if (v49 == (1190 - (1069 + 118))) then
					v26:Stop();
					v26:Destroy();
					break;
				end
			end
		end);
		local v40 = Instance.new("Explosion");
		v40.BlastPressure = 0 - 0;
		v40.BlastRadius = 17 - 9;
		v40.ExplosionType = Enum.ExplosionType.NoCraters;
		v40.Position = v39;
		v40.Parent = workspace;
		local v47 = workspace:GetPartBoundsInBox(v38, Vector3.new(15, 15, 15));
		local v48 = {};
		for v50, v51 in ipairs(v47) do
			local v52 = 791 - (368 + 423);
			local v53;
			while true do
				if (v52 == 2) then
					table.insert(v48, v53);
					v51.CFrame = v51.CFrame * CFrame.new(math.random(3 - 2, 23 - (10 + 8)), 0 - 0, math.random(443 - (416 + 26), 19 - 14));
					break;
				end
				if ((0 - 0) == v52) then
					if (string.find(v51.Name, "Wall") or string.find(v51.Name, "Floor")) then
						continue;
					end
					v51.Anchored = false;
					v52 = 1;
				end
				if (v52 == (1 + 0)) then
					v53 = Instance.new("BodyVelocity", v51);
					v53.Velocity = ((26 - 11) - (v51.Position - v39).Magnitude) * (538 - (145 + 293)) * (v51.Position - v39).Unit;
					v52 = 432 - (44 + 386);
				end
			end
		end
		task.wait(0.25);
		for v54, v55 in pairs(v48) do
			v55:Destroy();
		end
	end);
end);
local function v10(v35)
	local v36 = v35:WaitForChild("Assets", 1488 - (998 + 488));
	if v36 then
		for v56, v57 in ipairs(v36:GetChildren()) do
			if (string.match(v57.Name, "Painting") or string.match(v57.Name, "painting")) then
				for v64, v65 in ipairs(v57:GetDescendants()) do
					if (v65:IsA("BasePart") or v65:IsA("Part") or v65:IsA("MeshPart")) then
						v65.CanTouch = true;
					end
				end
			end
		end
	end
end
task.spawn(function()
	repeat
		task.wait();
	until (v4 == nil) or not (v4:IsDescendantOf(v2.Character) or v4:IsDescendantOf(v2.Backpack)) 
	addconnect:Disconnect();
	v7:Destroy();
end);
