-- This information tells other players more about the mod
name = "Wall Health Regen"
description = "You can craft a lot of things that you like!"
author = "Jupiter Su"
version = "1.1.1"
forumthread = ""
api_version = 10

all_clients_require_mod = false
client_only_mod = false
dst_compatible = true

icon_atlas = "modicon.xml"
icon = "modicon.tex"

----------------------
-- General settings --
----------------------

configuration_options =
{
	{
		name = "health_enhance",
		label = "More Health",
		hover = "Configure whether you want more health for walls or not.",
		options =	{
						{description = "Yes", data = 1, hover = ""},
						{description = "No", data = 0, hover = ""},
					},
		default = 1,
	},
	{
		name = "health_regen",
		label = "Health Regen",
		hover = "Configure whether you want the walls to heal themselves or not.",
		options =	{
						{description = "Yes", data = 1, hover = ""},
						{description = "No", data = 0, hover = ""},
					},
		default = 1,
	},
	{
		name = "regen_value",
		label = "Health Regen Value",
		hover = "Configure how much you want the walls to heal themselves every 5 seconds",
		options =	{
						{description = "10", data = 10, hover = ""},
						{description = "20", data = 20, hover = ""},
						{description = "30", data = 30, hover = ""},
						{description = "40", data = 40, hover = ""},
						{description = "50", data = 50, hover = ""},
						{description = "60", data = 60, hover = ""},
						{description = "70", data = 70, hover = ""},
						{description = "80", data = 80, hover = ""},
						{description = "90", data = 90, hover = ""},
						{description = "100", data = 100, hover = ""},
					},
		default = 50,
	},
	{
		name = "wall_undeployable",
		label = "Undeploy",
		hover = "Undeploy your wall with right click.",
		options =	{
						{description = "Yes", data = 1, hover = ""},
						{description = "No", data = 0, hover = ""},
					},
		default = 0,
	},
}