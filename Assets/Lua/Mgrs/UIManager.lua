---
--- UIManager UI管理器
---

local GUICollections = require("Game.Main.GUICollections")
local UIManager = Class("UIManager")

UIManager._instance = nil

function UIManager:initialize()
    self.uiList = {}  -- 存储打开的UI列表
    self.outTouchList = {} -- 用于存储参与点击其他地方关闭面板管理的UI的列表
    self.removeList = {} -- 存储要进行统一关闭面板的列表
    self.recordList = {} -- 存储统一隐藏/恢复显示的UI列表
end

function UIManager:Instance()
    if nil == UIManager._instance then
        UIManager._instance = UIManager:new()
    end
    return UIManager._instance
end

-- 注册事件
function UIManager:RegisterEvent()
    -- 创建界面
    EventMgr:Instance():RegisterEvent(Modules.moduleId.Common,Modules.notifyId.Common.CREATE_PANEL,function(UIEnum)
        self:Open(UIEnum)
    end)
    -- 销毁界面
    EventMgr:Instance():RegisterEvent(Modules.moduleId.Common,Modules.notifyId.Common.DESTROY_PANEL,function(UIEnum)
        self:Close(UIEnum)
    end)
end

-- 设置一个UI界面参与点击其他地方关闭面板管理
function UIManager:SetOutTouchDisappear(ui)

end

-- 分发处理点击其他地方关闭面板
function UIManager:NotifyDisappear(panelName)

end

-- 打开一个UI
function UIManager:Open(UIEnum)
    if GUICollections and GUICollections[UIEnum] then
        GUICollections[UIEnum].Instance():Open()
    end
end

-- 关闭一个UI
function UIManager:Close(UIEnum)
    if GUICollections and GUICollections[UIEnum] then
        GUICollections[UIEnum].Instance():Close()
    end
end

-- 根据UI枚举获得UI界面实例
function UIManager:GetViewByType(UIEnum)

end

-- 打开界面，带有返回值
function UIManager:OpenUIWithReturn(UIEnum)

end

-- 恢复显示之前记录下来的隐藏UI
function UIManager:PopAndShowAllUI()

end

-- 记录并隐藏除了指定类型的当前显示的所有UI
function UIManager:StashAndHideAllUI(extUITypes)

end

-- 统一关闭属于某一UI层
function UIManager:CloseUIByLevel(level)

end

-- 显示UI背景模糊
function UIManager:ShowUIBlur(ui)

end

-- 创建UI背景模糊
function UIManager:CreateUIBlur(ui,blurName)

end

-- 设置背景模糊RawImage
function UIManager:SetBlurRawImage(rawImage)

end

--  获取UI排序管理器
function UIManager:GetUISorterMgr()

end

return