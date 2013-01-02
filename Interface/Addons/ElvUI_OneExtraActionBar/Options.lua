local E, L, V, P, G, _ = unpack(ElvUI); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local AB = E:GetModule('ActionBars');

-- Options table
P["actionbar"]['bar6'] = {
	['enabled'] = true,
	['mouseover'] = false,
	['buttons'] = 12,
	['buttonsPerRow'] = 12,
	['point'] = 'BOTTOMLEFT',
	['backdrop'] = false,
	['heightMult'] = 1,
	['widthMult'] = 1,
	["buttonsize"] = 32,
	["buttonspacing"] = 2,
	['alpha'] = 1,
	['paging'] = {},
	['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
}

local points = {
	["TOPLEFT"] = "TOPLEFT",
	["TOPRIGHT"] = "TOPRIGHT",
	["BOTTOMLEFT"] = "BOTTOMLEFT",
	["BOTTOMRIGHT"] = "BOTTOMRIGHT",
}

-- Insert options into ElvUI ingame config
E.Options.args.actionbar.args.bar6 = {
	order = 6,
	name = L['Bar 6'],
	type = 'group',
	order = 200,
	guiInline = false,
	disabled = function() return not E.private.actionbar.enable end,
	get = function(info) return E.db.actionbar.bar6[ info[#info] ] end,
	set = function(info, value) E.db.actionbar.bar6[ info[#info] ] = value; AB:PositionAndSizeBar('bar6') end,
	args = {
		enabled = {
			order = 1,
			type = 'toggle',
			name = L['Enable'],
		},
		restorePosition = {
			order = 2,
			type = 'execute',
			name = L['Restore Bar'],
			desc = L['Restore the actionbars default settings'],
			func = function() E:CopyTable(E.db.actionbar.bar6, P.actionbar.bar6); E:ResetMovers('Bar 6'); AB:PositionAndSizeBar('bar6') end,
		},	
		point = {
			order = 3,
			type = 'select',
			name = L['Anchor Point'],
			desc = L['The first button anchors itself to this point on the bar.'],
			values = points,
		},				
		backdrop = {
			order = 4,
			type = "toggle",
			name = L['Backdrop'],
			desc = L['Toggles the display of the actionbars backdrop.'],
		},	
		mouseover = {
			order = 5,
			name = L['Mouse Over'],
			desc = L['The frame is not shown unless you mouse over the frame.'],
			type = "toggle",
		},
		buttons = {
			order = 6,
			type = 'range',
			name = L['Buttons'],
			desc = L['The amount of buttons to display.'],
			min = 1, max = NUM_ACTIONBAR_BUTTONS, step = 1,				
		},
		buttonsPerRow = {
			order = 7,
			type = 'range',
			name = L['Buttons Per Row'],
			desc = L['The amount of buttons to display per row.'],
			min = 1, max = NUM_ACTIONBAR_BUTTONS, step = 1,					
		},
		buttonsize = {
			type = 'range',
			name = L['Button Size'],
			desc = L['The size of the action buttons.'],
			min = 15, max = 60, step = 1,
			order = 8,
			disabled = function() return not E.private.actionbar.enable end,
		},
		buttonspacing = {
			type = 'range',
			name = L['Button Spacing'],
			desc = L['The spacing between buttons.'],
			min = 1, max = 10, step = 1,	
			order = 9, 
			disabled = function() return not E.private.actionbar.enable end,
		},				
		heightMult = {
			order = 10,
			type = 'range',
			name = L['Height Multiplier'],
			desc = L['Multiply the backdrops height or width by this value. This is usefull if you wish to have more than one bar behind a backdrop.'],
			min = 1, max = 5, step = 1,					
		},
		widthMult = {
			order = 11,
			type = 'range',
			name = L['Width Multiplier'],
			desc = L['Multiply the backdrops height or width by this value. This is usefull if you wish to have more than one bar behind a backdrop.'],
			min = 1, max = 5, step = 1,					
		},
		alpha = {
			order = 12,
			type = 'range',
			name = L['Alpha'],
			isPercent = true,
			min = 0, max = 1, step = 0.01,
		},
		paging = {
			type = 'input',
			order = 13,
			name = L['Action Paging'],
			desc = L["This works like a macro, you can run different situations to get the actionbar to page differently.\n Example: '[combat] 2;'"],
			width = 'full',
			multiline = true,
			get = function(info) return E.db.actionbar.bar6['paging'][E.myclass] end,
			set = function(info, value) 
				if not E.db.actionbar.bar6['paging'][E.myclass] then
					E.db.actionbar.bar6['paging'][E.myclass] = {}
				end
				
				E.db.actionbar.bar6['paging'][E.myclass] = value
				AB:UpdateButtonSettings() 
			end,
		},
		visibility = {
			type = 'input',
			order = 14,
			name = L['Visibility State'],
			desc = L["This works like a macro, you can run different situations to get the actionbar to show/hide differently.\n Example: '[combat] show;hide'"],
			width = 'full',
			multiline = true,
			set = function(info, value) 						
				E.db.actionbar.bar6['visibility'] = value; 
				AB:UpdateButtonSettings()
			end,
		},
	},
}