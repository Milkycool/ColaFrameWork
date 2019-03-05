---
--- UI界面的统一注册
---

local GUICollections = {
    [ECEnumType.UIEnum.Login] = require("Modules.Login.Views.UILogin"),
    [ECEnumType.UIEnum.Loading] = require("Modules.Common.Views.UILoading"),
    [ECEnumType.UIEnum.DebugPanel] = require("Modules.Common.Views.UIDebugPanel"),
}

return GUICollections