include iup

Handle: cover from Ihandle* {
    new: static extern(IupCreate) func(CString) -> Handle
    new: static extern(IupCreatev) func ~withParams (CString, Pointer*) -> Handle
    new: static extern(IupCreatep) func ~withVaArgs (CString, Pointer, ...) -> Handle

    fill: static extern(IupFill) func -> Handle
    radio: static extern(IupRadio) func(Handle) -> Handle

    vbox: static extern(IupVBox) func(Handle, ...) -> Handle
    vbox: static extern(IupVBoxv) func ~array (Handle*) -> Handle
    zbox: static extern(IupZBox) func(Handle, ...) -> Handle
    zbox: static extern(IupZBoxv) func ~array (Handle*) -> Handle
    hbox: static extern(IupHBox) func(Handle, ...) -> Handle
    hbox: static extern(IupHBoxv) func ~array (Handle*) -> Handle
    cbox: static extern(IupCBox) func(Handle, ...) -> Handle
    cbox: static extern(IupCBoxv) func ~array (Handle*) -> Handle
    sbox: static extern(IupSBox) func(Handle) -> Handle
    normalizer: static extern(IupNormalizer) func(Handle, ...) -> Handle
    normalizer: static extern(IupNormalizerv) func ~array (Handle*) -> Handle
    split: static extern(IupSplit) func(Handle, Handle) -> Handle
    scrollBox: static extern(IupScrollBox) func(Handle) -> Handle
    gridBox: static extern(IupGridBox) func(Handle, ...) -> Handle
    gridBox: static extern(IupGridBoxv) func ~array (Handle*) -> Handle
    expander: static extern(IupExpander) func(Handle) -> Handle
    frame: static extern(IupFrame) func(Handle) -> Handle
    image: static extern(IupImage) func(Int, Int, CString) -> Handle
    imageRGB: static extern(IupImageRGB) func(Int, Int, CString) -> Handle
    imageRGBA: static extern(IupImageRGBA) func(Int, Int, CString) -> Handle
    item: static extern(IupItem) func(CString, CString) -> Handle
    submenu: static extern(IupSubmenu) func(CString, Handle) -> Handle
    separator: static extern(IupSeparator) func -> Handle
    menu: static extern(IupMenu) func(Handle, ...) -> Handle
    menu: static extern(IupMenuv) func ~array (Handle*) -> Handle
    button: static extern(IupButton) func(CString, CString) -> Handle
    canvas: static extern(IupCanvas) func(CString) -> Handle
    dialog: static extern(IupDialog) func(Handle) -> Handle
    user: static extern(IupUser) func -> Handle
    label: static extern(IupLabel) func(CString) -> Handle
    list: static extern(IupList) func(CString) -> Handle
    text: static extern(IupText) func(CString) -> Handle
    multiLine: static extern(IupMultiLine) func(CString) -> Handle
    toggle: static extern(IupToggle) func(CString, CString) -> Handle
    timer: static extern(IupTimer) func -> Handle
    clipboard: static extern(IupClipboard) func -> Handle
    progressBar: static extern(IupProgressBar) func -> Handle
    val: static extern(IupVal) func(CString) -> Handle
    tabs: static extern(IupTabs) func(Handle, ...) -> Handle
    tabs: static extern(IupTabsv) func ~array (Handle*) -> Handle
    tree: static extern(IupTree) func -> Handle
    link: static extern(IupLink) func(CString, CString) -> Handle
    spin: static extern(IupSpin) func -> Handle
    spinbox: static extern(IupSpinbox) func(Handle) -> Handle
    fileDialog: static extern(IupFileDlg) func -> Handle
    messageDialog: static extern(IupMessageDlg) func -> Handle
    colorDialog: static extern(IupColorDlg) func -> Handle
    fontDialog: static extern(IupFontDlg) func -> Handle
    layoutDialog: static extern(IupLayoutDialog) func(Handle) -> Handle
    elementPropertiesDialog: static extern(IupElementPropertiesDialog) func(Handle) -> Handle

    // Controls
    colorbar: static extern(IupColorBar) func -> Handle
    cells: static extern(IupCells) func -> Handle
    colorBrowser: static extern(IupColorBrowser) func -> Handle
    gauge: static extern(IupGauge) func -> Handle
    dial: static extern(IupDial) func(CString) -> Handle
    matrix: static extern(IupMatrix) func(CString) -> Handle

    update: extern(IupUpdate) func
    updateChildren: extern(IupUpdateChildren) func

    redraw: extern(IupRedraw) func(Int)
    refresh: extern(IupRefresh) func
    refreshChildren: extern(IupRefreshChildren) func

    destroy: extern(IupDestroy) func
    detach: extern(IupDetach) func

    append: extern(IupAppend) func(Handle) -> Handle
    insert: extern(IupInsert) func(Handle, Handle) -> Handle

    getChild: extern(IupGetChild) func(Int) -> Handle
    getChildPos: extern(IupGetChildPos) func(Handle) -> Int
    getChildCount: extern(IupGetChildCount) func -> Int
    getNextChild: extern(IupGetNextChild) func(Handle) -> Handle
    getBrother: extern(IupGetBrother) func -> Handle
    getParent: extern(IupGetParent) func -> Handle
    getDialog: extern(IupGetDialog) func -> Handle
    getDialogChild: extern(IupGetDialogChild) func(CString) -> Handle
    reparent: extern(IupReparent) func(Handle, Handle) -> Int

    popup: extern(IupPopup) func(Int, Int) -> Int
    show: extern(IupShow) func -> Int
    showXY: extern(IupShowXY) func(Int, Int) -> Int
    hide: extern(IupHide) func -> Int
    map: extern(IupMap) func -> Int
    unmap: extern(IupUnmap) func

    setAttribute: extern(IupSetAttribute) func(CString, CString)
    storeAttribute: extern(IupStoreAttribute) func(CString, CString)
    setAttributes: extern(IupSetAttributes) func(CString) -> Handle
    getAttribute: extern(IupGetAttribute) func(CString) -> CString
    getAttributes: extern(IupGetAttributes) func -> CString
    getInt: extern(IupGetInt) func(CString) -> Int
    getInt2: extern(IupGetInt2) func(CString) -> Int
    getIntInt: extern(IupGetIntInt) func(CString) -> (Int, Int)
    getFloat: extern(IupGetFloat) func(CString) -> Float
    setfAttribute: extern(IupSetfAttribute) func(CString, CString, ...)
    resetAttribute: extern(IupResetAttribute) func(CString)
    getAllAttributes: extern(IupGetAllAttributes) func(CString*, Int) -> Int

    setAttributeId: extern(IupSetAttributeId) func(CString, Int, CString)
    storeAttributeId: extern(IupStoreAttributeId) func(CString, Int, CString)
    getAttributeId: extern(IupGetAttributeId) func(CString, Int) -> CString
    getFloatId: extern(IupGetFloatId) func(CString, Int) -> Float
    getIntId: extern(IupGetIntId) func(CString, Int) -> Int
    setfAttributeId: extern(IupSetfAttributeId) func(CString, Int, CString, ...)

    setAttributeId2: extern(IupSetAttributeId2) func(CString, Int, CString)
    storeAttributeId2: extern(IupStoreAttributeId2) func(CString, Int, CString)
    getAttributeId2: extern(IupGetAttributeId2) func(CString, Int) -> CString
    getFloatId2: extern(IupGetFloatId2) func(CString, Int) -> Float
    getIntId2: extern(IupGetIntId2) func(CString, Int) -> Int
    setfAttributeId2: extern(IupSetfAttributeId2) func(CString, Int, CString, ...)

    setFocus: extern(IupSetFocus) func -> Handle
    previousField: extern(IupPreviousField) func -> Handle
    nextField: extern(IupNextField) func -> Handle

    getCallback: extern(IupGetCallback) func(CString) -> Func(Handle) -> Int
    setCallback: extern(IupSetCallback) func(CString, Func(Handle) -> Int) -> Func(Handle) -> Int
    setCallbacks: extern(IupSetCallbacks) func(CString, Func(Handle) -> Int, ...) -> Handle

    getName: extern(IupGetName) func -> CString

    setAttributeHandle: extern(IupSetAttributeHandle) func(CString, Handle)
    getAttributeHandle: extern(IupGetAttributeHandle) func(CString) -> Handle

    getClassName: extern(IupGetClassName) func -> CString
    getClassType: extern(IupGetClassType) func -> CString

    saveClassAttributes: extern(IupSaveClassAttributes) func
    copyClassAttributes: extern(IupCopyClassAttributes) func(Handle)

    classMatch: extern(IupClassMatch) func(CString) -> Bool

    saveImageAsText: extern(IupSaveImageAsText) func(CString, CString, CString) -> Int
    convertLinColToPos: extern(IupTextConvertLinColToPos) func(Int, Int, Int*)
    convertPosToLinCol: extern(IupTextConvertPosToLinCol) func(Int) -> (Int, Int)
    convertXYToPos: extern(IupConvertXYToPos) func(Int, Int) -> Int
    setUserId: extern(IupTreeSetUserId) func(Int, Pointer) -> Int
    getUserId: extern(IupTreeGetUserId) func(Int) -> Pointer
    getId: extern(IupTreeGetId) func(Pointer) -> Int
}

IUP: class {
    open: static extern(IupOpen) func(Int*, CString[]*) -> Int
    close: static extern(IupClose) func
    imageLibOpen: static extern(IupImageLibOpen) func

    mainLoop: static extern(IupMainLoop) func -> Int
    loopStep: static extern(IupLoopStep) func -> Int
    loopStepWait: static extern(IupLoopStepWait) func -> Int
    mainLoopLevel: static extern(IupMainLoopLeveL) func -> Int
    flush: static extern(IupFlush) func
    exitLoop: static extern(IupExitLoop) func

    recordInput: static extern(IupRecordInput) func(CString, Int) -> Int
    playInput: static extern(IupPlayInput) func(CString) -> Int

    mapFont: static extern(IupMapFont) func(CString) -> CString
    unMapFont: static extern(IupUnManFont) func(CString) -> CString
    help: static extern(IupHelp) func(CString) -> Int
    load: static extern(IupLoad) func(CString) -> CString
    loadBuffer: static extern(IupLoadBuffer) func(CString) -> CString

    version: static extern(IupVersion) func -> CString
    versionDate: static extern(IupVersionDate) func -> CString
    versionNumber: static extern(IupVersionNumber) func -> Int

    setLanguage: static extern(IupSetLanguage) func(CString)
    getLanguage: static extern(IupGetLanguage) func -> CString

    setAtt: static extern(IupSetAtt) func(CString, Handle, CString, ...) -> Handle

    setGlobal: static extern(IupSetGlobal) func(CString, CString)
    storeGlobal: static extern(IupStoreGlobal) func(CString, CString)
    getGlobal: static extern(IupGetGlobal) func(CString) -> CString

    getFocus: static extern(IupGetFocus) func -> Handle

    getFunction: static extern(IupGetFunction) func(CString) -> Func(Handle) -> Int
    setFunction: static extern(IupSetFunction) func(CString, Func(Handle) -> Int) -> Func(Handle) -> Int
    getActionName: static extern(IupGetActionName) func -> CString

    getHandle: static extern(IupGetHandle) func(CString) -> Handle
    setHandle: static extern(IupSetHandle) func(CString, Handle) -> Handle

    getAllNames: static extern(IupGetAllNames) func(CString*, Int) -> Int
    getAllDialogs: static extern(IupGetAllDialogs) func(CString*, Int) -> Int

    getAllClasses: static extern(IupGetAllClasses) func(CString*, Int) -> Int
    getClassAttributes: static extern(IupGetClassAttributes) func(CString, CString*, Int) -> Int
    getClassCallbacks: static extern(IupGetClassCallbacks) func(CString, CString*, Int) -> Int
    setClassDefaultAttribute: static extern(IupSetClassDefaultAttribute) func(CString, CString, CString)

    getFile: static extern(IupGetFile) func(CString) -> Int
    message: static extern(IupMessage) func(CString, CString)
    message: static extern(IupMessagef) func ~format (CString, CString, ...)
    alarm: static extern(IupAlarm) func(CString, CString, CString, CString, CString) -> Int
    scanf: static extern(IupScanf) func(CString, ...) -> Int
    listDialog: static extern(IupListDialog) func(Int, CString, Int, CString*, Int, Int, Int, Int*) -> Int
    getText: static extern(IupGetText) func(CString, CString) -> Int
    getColor: static extern(IupGetColor) func(Int, Int, UChar*, UChar*, UChar*) -> Int
    getParam: static extern(IupGetParam) func(CString, Pointer, Pointer, CString, ...) -> Int
    getParam: static func ~closure (a: CString, b: Func(Handle, Int) -> Int, c: CString, ...) -> Int {
        va: VaList
        va_start(va, c)
        res := getParam(a, b as Closure thunk, b as Closure context, c, va)
        va_end(va)
        res
    }
    getParam: static extern(IupGetParamv) func ~array (CString, Pointer, Pointer, CString, Int, Int, Pointer*) -> Int
    getParam: static func ~closureArrat (a: CString, b: Func(Handle, Int) -> Int, c: CString, d: Int, e: Int, f: Pointer*) -> Int {
        getParam~array(a, b as Closure thunk, b as Closure context, c, d, e, f)
    }

    controlsOpen: static extern(IupControlsOpen) func -> Int
}
