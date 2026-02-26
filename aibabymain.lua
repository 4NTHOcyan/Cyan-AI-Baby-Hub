if game.PlaceId == 113555496748959 then

    local _Version = "Cyan-Baby-Hub"

    --// call Library
    local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local GUI = Mercury:Create{
        Name = _Version,
        Size = UDim2.fromOffset(600, 400),
        Theme = Mercury.Themes.Rust,
        Link = "http://xyz.ClimbIntoAIBaby.4NTHOcyan/github?ai-baby",
    }

    --// Local VAR
    local _player = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

    local _winpart_ = workspace["Winner Area"].Path:FindFirstChild("Part")

    local _AiBBstate = false

    --------------

    GUI:Notification{
	    Title = "Welcome!",
	    Text = "Thanks for using Cyan-Baby-Hub by 4NTHOcyan | Please do not hinder the progress of other players :)",
	    Duration = 10,
	    Callback = function() end
    }

    local babyTab = GUI:Tab{
	    Name = "Wins",
	    Icon = "rbxassetid://8569322835"
    }

    babyTab:Toggle{

        Name = "Infinite Wins!",
	    StartingState = false,
	    Description = "👶 Climb Into AI Baby every 13 seconds 👶",
	    Callback = function(state)
            
            _AiBBstate = state
            while _AiBBstate do  -- run infinite teleports to the win gate

                _player.CFrame = _winpart_.CFrame * CFrame.new(0,4,0)

                GUI:Notification{
	                Title = "Please wait...",
	                Text = "Processing win 👶",
	                Duration = 13,
	                Callback = function() end
                }

                task.wait(13)

                
            end

        end


    }


end