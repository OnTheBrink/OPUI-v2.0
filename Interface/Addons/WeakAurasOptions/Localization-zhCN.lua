﻿if not(GetLocale() == "zhCN") then
    return;
end

local L = WeakAuras.L

-- Options translation
L["1 Match"] = "1符合"
L["Actions"] = "动作"
L["Activate when the given aura(s) |cFFFF0000can't|r be found"] = "当指定光环 |cFFFF0000无法|r找到时启动"
L["Add a new display"] = "新增图示"
L["Add Dynamic Text"] = "新增动态文字"
L["Addon"] = "插件"
L["Addons"] = "插件"
L["Add to group %s"] = "新增到群组%s"
L["Add to new Dynamic Group"] = "新增动态群组"
L["Add to new Group"] = "新增群组"
L["Add Trigger"] = "新增触发器"
L["A group that dynamically controls the positioning of its children"] = "一个可以动态控制子成员的位置的群组"
L["Align"] = "对齐"
L["Allow Full Rotation"] = "允许完全旋转"
L["Alpha"] = "透明度"
L["Anchor"] = "锚点"
L["Anchor Point"] = "锚点指向"
L["Angle"] = "角度"
L["Animate"] = "动画"
L["Animated Expand and Collapse"] = "动态展开和折叠"
L["Animation relative duration description"] = [=[动画的相对持续时间，表示为 分数(1/2)，百分比(50％)，或数字(0.5)。
|cFFFF0000注意：|r 如果没有进度(没有时间事件的触发器,没有持续时间的光环,或其他)，动画将不会播放。
|cFF4444FF举例：|r
如果动画的持续时间设定为 |cFF00CC0010%|r，然后触发的增益时间为20秒，入场动画会播放2秒。
如果动画的持续时间设定为 |cFF00CC0010%|r，然后触发的增益没有持续时间，将不会播放开始动画.]=]
L["Animations"] = "动画"
L["Animation Sequence"] = "动画序列"
L["Aquatic"] = "水形态"
L["Aura (Paladin)"] = "光环"
L["Aura(s)"] = "光环"
L["Auto"] = "自动"
L["Auto-cloning enabled"] = "自动复制启用"
L["Automatic Icon"] = "自动显示图标"
L["Backdrop Color"] = "背景颜色" -- Needs review
L["Backdrop Style"] = "背景图案类型 " -- Needs review
L["Background"] = "背景"
L["Background Color"] = "背景色"
L["Background Inset"] = "背景内嵌"
L["Background Offset"] = "背景偏移"
L["Background Texture"] = "背景材质"
L["Bar Alpha"] = "条透明度"
L["Bar Color"] = "条颜色"
L["Bar Color Settings"] = "图标条颜色设置" -- Needs review
-- L["Bar in Front"] = ""
L["Bar Texture"] = "条材质"
L["Battle"] = "战斗姿态"
L["Bear"] = "熊形态"
L["Berserker"] = "狂暴姿态"
L["Blend Mode"] = "混合模式"
L["Blood"] = "鲜血"
L["Border"] = "边框"
L["Border Color"] = "边框颜色" -- Needs review
L["Border Inset"] = "插入边框" -- Needs review
L["Border Offset"] = "边框偏移"
L["Border Settings"] = "边框设置" -- Needs review
L["Border Size"] = "边框大小 " -- Needs review
-- L["Border Style"] = ""
L["Bottom Text"] = "底部文字"
L["Button Glow"] = "按钮发光"
L["Can be a name or a UID (e.g., party1). Only works on friendly players in your group."] = "可以是名字或是单位ID(例如，party1)。只作用于你当前队伍/团队中的玩家."
L["Cancel"] = "取消"
L["Cat"] = "豹形态"
L["Change the name of this display"] = "更改图示的名称"
L["Channel Number"] = "频道索引"
L["Check On..."] = "检查..."
L["Choose"] = "选择"
L["Choose Trigger"] = "选择触发器"
L["Choose whether the displayed icon is automatic or defined manually"] = "选择显示的图示是自动显示还是手动定义"
L["Clone option enabled dialog"] = [=[
你已经启用|cFFFF0000自动复制|r。
|cFFFF0000自动复制|r 会让一个图示自动重复来显示多目标的讯息。
直到你把这个图示放在一个|cFF22AA22动态群组|r里，所有被复制的图示都会显示在其它图示的顶端.
你想要让它被放到新的|cFF22AA22动态群组|r的吗？]=]
L["Close"] = "关闭"
L["Collapse"] = "折叠"
L["Collapse all loaded displays"] = "折叠所有载入的图示"
L["Collapse all non-loaded displays"] = "折叠所有未载入的图示"
L["Color"] = "颜色"
L["Compress"] = "压缩"
L["Concentration"] = "专注"
L["Constant Factor"] = "常数因子"
L["Control-click to select multiple displays"] = "Ctrl+点击 选择多个图示"
L["Controls the positioning and configuration of multiple displays at the same time"] = "同时控制多个图示的位置和设定"
L["Convert to..."] = "转换成"
L["Cooldown"] = "冷却"
L["Copy"] = "复制"
L["Copy settings from..."] = "复制设置从..."
L["Copy settings from another display"] = "从其它图示复制设定"
L["Copy settings from %s"] = "从 %s 复制配置"
L["Count"] = "计数 "
L["Creating buttons: "] = "创建按钮:"
L["Creating options: "] = "创建配置:"
L["Crop X"] = "裁剪X"
L["Crop Y"] = "裁剪Y"
L["Crusader"] = "十字军"
L["Custom Code"] = "自定义代码"
L["Custom Trigger"] = "自定义生效触发器"
L["Custom trigger event tooltip"] = [=[选择用于检查自订触发的事件。
如果有多个事件,可以用逗号或空白分隔。

|cFF4444FF例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
L["Custom trigger status tooltip"] = [=[选择用于检查自订触发的事件。
因为这一个是状态触发器, 指定的事件 可以被 WeakAuras 调用, 而不需指定参数.
如果有多个事件,可以用逗号或空白分隔。

|cFF4444FF例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
L["Custom Untrigger"] = "自定义失效触发器"
L["Custom untrigger event tooltip"] = [=[选择用于检查自订未触发的事件。
这里可以使用不事件, 不必与生效触发器相同.
如果有多个事件,可以用逗号或空白分隔。

|cFF4444FF例：|r
UNIT_POWER, UNIT_AURA PLAYER_TARGET_CHANGED]=]
L["Death"] = "死亡"
L["Death Rune"] = "死亡符文"
L["Debuff Type"] = "减益类型"
L["Defensive"] = "防御姿态"
L["Delete"] = "删除"
L["Delete all"] = "删除所有"
L["Delete children and group"] = "删除群组和成员"
L["Deletes this display - |cFF8080FFShift|r must be held down while clicking"] = "删除 - 必须按下|cFF8080FFShift|r同时点击"
L["Delete Trigger"] = "删除触发器"
L["Desaturate"] = "褪色"
L["Devotion"] = "虔诚"
L["Disabled"] = "禁用"
L["Discrete Rotation"] = "离散旋转"
L["Display"] = "图示"
L["Display Icon"] = "图示图标"
L["Display Text"] = "图示文字"
L["Distribute Horizontally"] = "横向分布"
L["Distribute Vertically"] = "纵向分布"
L["Do not copy any settings"] = "不复制任何设置"
L["Do not group this display"] = "不组织这个图示"
L["Duplicate"] = "复制"
L["Duration Info"] = "持续时间讯息"
L["Duration (s)"] = "持续时间"
L["Dynamic Group"] = "动态群组"
L["Dynamic text tooltip"] = [=[这里有几个特别的编码允许文字动态显示：

|cFFFF0000%p|r - 进度 - 剩余持续时间或非时间值
|cFFFF0000%t|r - 总共 - 总持续时间或最大的非时间值
|cFFFF0000%n|r - 名称 - 图示名称(通常是光环名称)或是没有动态名称图示的编号
|cFFFF0000%i|r - 图标 - 图示关连的显标
|cFFFF0000%s|r - 堆叠 - 光环堆叠数量(通常)
|cFFFF0000%c|r - 自定义 - 允许你自定义一个Lua函数并返回一个用于显示的字符串]=]
L["Enabled"] = "启用"
L["Enter an aura name, partial aura name, or spell id"] = "键入一个法术名，或者法术ID"
L["Event Type"] = "事件类型"
L["Expand"] = "展开"
L["Expand all loaded displays"] = "展开所有载入的图示"
L["Expand all non-loaded displays"] = "展开所有未载入的图示"
L["Expand Text Editor"] = "展开本文编辑器"
L["Expansion is disabled because this group has no children"] = "群组无法在没有成员的情况下展开."
L["Export"] = "导出"
L["Export to Lua table..."] = "导出为Lua表"
L["Export to string..."] = "导出成字串"
L["Fade"] = "淡化"
L["Finish"] = "结束"
L["Fire Resistance"] = "火抗"
L["Flight(Non-Feral)"] = "迅捷飞行形态"
L["Font"] = "字体"
-- L["Font Flags"] = ""
L["Font Size"] = "字体大小" -- Needs review
L["Font Type"] = "字体类型" -- Needs review
L["Foreground Color"] = "前景色"
L["Foreground Texture"] = "前景材质"
L["Form (Druid)"] = "形态"
L["Form (Priest)"] = "形态"
L["Form (Shaman)"] = "形态"
L["Form (Warlock)"] = "形态"
L["Frame"] = "框架"
L["Frame Strata"] = "框架层级"
L["Frost"] = "冰霜"
L["Frost Resistance"] = "冰抗"
L["Full Scan"] = "完整扫描"
L["Ghost Wolf"] = "幽灵狼形态"
L["Glow Action"] = "发光动作"
L["Group aura count description"] = [=[
所输入的队伍或团队成员的数量必须给定一个或多个光环作为显示触发的条件。
如果输入的数字是一个整数(如5)，受影响的团队成员数量将与输入的数字相同。
如果输入的数字是一个小数(如0.5)，分数(例如1/ 2)，或百分比(例如50%%)，那么多比例的队伍或团队成员的必须受到影响。
|cFF4444FF举例：|r
|cFF00CC00大于 0|r  会在任意一人受影响时触发
|cFF00CC00等于 100%%|r 会在所有人受影响时触发
|cFF00CC00不等于 2|r 会在2人受影响之外时触发
|cFF00CC00小于等于 0.8|r 会在小于80%%的人受影响时触发
|cFF00CC00大于 1/2|r 会在超过一半以上的人受影响时触发
|cFF00CC00大于等于 0|r 总是触发.]=]
L["Group Member Count"] = "队伍或团队成员数"
L["Group (verb)"] = "组织"
L["Height"] = "高度"
L["Hide this group's children"] = "隐藏这个子成员"
L["Hide When Not In Group"] = "不在队伍时隐藏"
L["Horizontal Align"] = "水平对齐"
L["Icon Info"] = "图标信息"
L["Ignored"] = "被忽略"
L["Ignore GCD"] = "忽略公共CD(GCD)"
L["%i Matches"] = "%i 符合"
L["Import"] = "导入"
L["Import a display from an encoded string"] = "从字串导入一个图示"
L["Justify"] = "对齐"
L["Left Text"] = "左边文字"
L["Load"] = "载入"
L["Loaded"] = "已载入"
L["Main"] = "主要的"
L["Main Trigger"] = "主触发"
L["Mana (%)"] = "法力值百分比(%%)"
L["Manage displays defined by Addons"] = "由插件管理已定义的图示"
L["Message Prefix"] = "聊天讯息前缀"
L["Message Suffix"] = "聊天讯息后缀"
L["Metamorphosis"] = "变形"
L["Mirror"] = "镜像"
L["Model"] = "模型"
L["Moonkin/Tree/Flight(Feral)"] = "枭兽/生命之树/迅捷飞行 形态"
L["Move Down"] = "向下移"
L["Move this display down in its group's order"] = "在群组中向下移动"
L["Move this display up in its group's order"] = "在群组中向上移动"
L["Move Up"] = "向上移动"
L["Multiple Displays"] = "多个图示"
L["Multiple Triggers"] = "多触发器"
L["Multiselect ignored tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777单个|r - |cFF777777多个|r
当图示应该载入时这项设定不应该使用]=]
L["Multiselect multiple tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777单个|r - |cFF777777多个|r
任何相匹配的值的值可以提取]=]
L["Multiselect single tooltip"] = [=[|cFFFF0000忽略|r - |cFF777777单个|r - |cFF777777多个|r
只有一个单一的匹配值可以提取]=]
L["Must be spelled correctly!"] = "必须拼写正确！"
L["Name Info"] = "名称讯息"
L["Negator"] = "不"
L["New"] = "新增"
L["Next"] = "下一个"
L["No"] = "不"
L["No Children"] = "没有子成员"
L["Not all children have the same value for this option"] = "不是所有的子成员都拥有相同的此选项的值"
L["Not Loaded"] = "未载入"
L["No tooltip text"] = "没有提示文字"
L["% of Progress"] = "% 进度"
L["Okay"] = "好"
L["On Hide"] = "图示隐藏时触发"
L["Only match auras cast by people other than the player"] = "只匹配其它玩家施放的光环"
L["Only match auras cast by the player"] = "只匹配玩家自己施放的光环"
L["On Show"] = "图示显示时触发"
L["Operator"] = "运算符"
L["or"] = "或"
L["Orientation"] = "方向"
L["Other"] = "其它"
L["Outline"] = "轮廓"
L["Own Only"] = "只来源于自己"
L["Player Character"] = "玩家角色"
L["Play Sound"] = "播放声音"
L["Presence (DK)"] = "灵气"
L["Presence (Rogue)"] = "姿态"
L["Prevents duration information from decreasing when an aura refreshes. May cause problems if used with multiple auras with different durations."] = "阻止刷新光环时持续时间讯息的变动。如果使用了多个光环并且具有不同持续时间那么可能会造成问题。"
L["Primary"] = "主天赋"
L["Progress Bar"] = "进度条"
L["Progress Texture"] = "进度条材质"
L["Put this display in a group"] = "把这个图示放入一个群组中"
L["Ready For Use"] = "准备好"
L["Re-center X"] = "到中心 X 偏移"
L["Re-center Y"] = "到中心 Y 偏移"
L["Remaining Time Precision"] = "剩余时间精度"
L["Remove this display from its group"] = "从群组中移除这个图示"
L["Rename"] = "重命名"
L["Requesting display information"] = "从 %s 接收图示信息"
L["Required For Activation"] = "需要启动"
L["Retribution"] = "惩戒"
L["Right-click for more options"] = "右键点击获得更多选项"
L["Right Text"] = "右边文字"
L["Rotate"] = "旋转"
L["Rotate In"] = "旋转进入"
L["Rotate Out"] = "旋转退出"
L["Rotate Text"] = "旋转文字"
L["Rotation"] = "旋转"
L["Same"] = "相同"
L["Search"] = "搜索"
L["Secondary"] = "副天赋"
L["Send To"] = "发送给"
L["Set tooltip description"] = "设置提示描述"
L["Shadow Dance"] = "灵魂行者的恩赐"
L["Shadowform"] = "暗影形态"
L["Shadow Resistance"] = "暗抗"
L["Shift-click to create chat link"] = "Shift+左键 创建 一个 |cFF8800FF[聊天链接]"
L["Show all matches (Auto-clone)"] = "列出所有符合的(自动复制)"
L["Show players that are |cFFFF0000not affected"] = "显示|cFFFF0000未被影响|r的玩家"
L["Shows a 3D model from the game files"] = "显示游戏文件中的3D模形"
L["Shows a custom texture"] = "显示自定义材质"
L["Shows a progress bar with name, timer, and icon"] = "显示一个进度条组件, 它拥有 名称, 时间 和 图标"
L["Shows a spell icon with an optional a cooldown overlay"] = "显示可选的法术图示有冷却时间重叠"
L["Shows a texture that changes based on duration"] = "显示一个随持续时间而变的材质"
L["Shows one or more lines of text, which can include dynamic information such as progress or stacks"] = "显示一行或多行文字, 它们包换动态信息, 如进度和叠加层数"
L["Shows the remaining or expended time for an aura or timed event"] = "显示光环或是时间事件的剩余或是用掉的时间"
L["Show this group's children"] = "显示这个群组的子元素"
L["Size"] = "大小"
L["Slide"] = "滑动"
L["Slide In"] = "滑动"
L["Slide Out"] = "滑出"
L["Sort"] = "排序"
L["Sound"] = "声音"
L["Sound Channel"] = "声道"
L["Sound File Path"] = "声音文件路径"
L["Space"] = "间隙"
L["Space Horizontally"] = "横向间隙"
L["Space Vertically"] = "纵向间隙"
L["Spell ID"] = "法术ID"
L["Spell ID dialog"] = [=[你已经指定一个|cFFFF0000法术ID|r。

默认地，|cFF8800FFWeakAuras|r 无法区分|cFFFF0000法术编号|r不同但法术名称相同的法术。 
当然，如果你启用完整扫描，|cFF8800FFWeakAuras|r可以搜寻指定的|cFFFF0000法术编号|r的法术。

你想要启用完整扫描来匹配这个|cFFFF0000法术编号|r吗？]=]
L["Stack Count"] = "堆叠数"
L["Stack Count Position"] = "堆叠数位置"
L["Stack Info"] = "堆叠信息"
-- L["Stacks Settings"] = ""
L["Stagger"] = "交错"
L["Stance (Warrior)"] = "姿态"
L["Start"] = "开始"
L["Stealable"] = "可偷取"
L["Stealthed"] = "潜行"
L["Sticky Duration"] = "持续时间置顶"
L["Temporary Group"] = "模板群组"
L["Text"] = "文字"
L["Text Color"] = "文字颜色"
L["Text Position"] = "文字位置"
L["Text Settings"] = "文字设置" -- Needs review
L["Texture"] = "材质"
L["The children of this group have different display types, so their display options cannot be set as a group."] = "群组中含有类型不同图示，所以它们的显示选项无法统一成一个群组."
L["The duration of the animation in seconds."] = "动画持续秒数"
L["The type of trigger"] = "触发器类型"
L["This condition will not be tested"] = "此条件不会被测试"
L["This display is currently loaded"] = "当前图示已载入"
L["This display is not currently loaded"] = "当前图示未载入"
L["This display will only show when |cFF00FF00%s"] = "当前图示只有在|cFF00FF00%s| 才会显示"
L["This display will only show when |cFFFF0000 Not %s"] = "当前图示只有不在|cFF00FF00%s| 才会显示"
L["This region of type \"%s\" has no configuration options."] = "没有地区类型为 \"%s\" 的相应的配置."
L["Time in"] = "时间"
L["Timer"] = "计时器"
L["Timer Settings"] = "计时器设置" -- Needs review
L["Toggle the visibility of all loaded displays"] = "切换当前已载入图示的可见状态"
L["Toggle the visibility of all non-loaded displays"] = "切换当前未载入图示的可见状态"
L["Toggle the visibility of this display"] = "切换当前图示的可见状态"
L["to group's"] = "到群组"
L["Tooltip"] = "提示"
L["Tooltip on Mouseover"] = "鼠标提示"
L["Top Text"] = "顶部文字"
L["to screen's"] = "到屏幕"
L["Total Time Precision"] = "总的时间精度"
L["Tracking"] = "追踪"
L["Travel"] = "旅行形态"
L["Trigger"] = "触发"
L["Trigger %d"] = "触发器 %d"
L["Triggers"] = "触发器"
L["Type"] = "类型"
L["Ungroup"] = "移出群组"
L["Unholy"] = "邪恶"
L["Unit Exists"] = "单位存在"
L["Unlike the start or finish animations, the main animation will loop over and over until the display is hidden."] = "不同于开始或结束动画，主动画将不停循环，直到图示被隐藏。"
L["Unstealthed"] = "非潜行"
L["Update Custom Text On..."] = "更新自定义文字于"
L["Use Full Scan (High CPU)"] = "使用完整扫描(高CPU)"
L["Use tooltip \"size\" instead of stacks"] = "使用\\\"大小\\\"提示,而不是\\\"堆叠\\\""
L["Vertical Align"] = "垂直对齐"
L["View"] = "查看"
L["Width"] = "宽度"
L["X Offset"] = "X 偏移"
L["X Scale"] = "宽度比例"
L["Yes"] = "是"
L["Y Offset"] = "Y 偏移"
L["Y Scale"] = "长度比例"
L["Z Offset"] = "深度 偏移"
L["Zoom"] = "缩放"
L["Zoom In"] = "放大"
L["Zoom Out"] = "缩小"



