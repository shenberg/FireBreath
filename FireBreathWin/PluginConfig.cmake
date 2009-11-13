
set(PLUGIN_NAME "FireBreathTest")
set(PLUGIN_PREFIX "FBT")

if (NOT GEN_DIR)
    get_filename_component (GEN_DIR "${CMAKE_CURRENT_BINARY_DIR}/../gen" ABSOLUTE)
    message("Found plugin config at ${GEN_DIR}")
endif()

# ActiveX constants:
set(FBTYPELIB_NAME FireBreathWinLib)
set(FBTYPELIB_DESC "FireBreathWin 1.0 Type Library")
set(IFBControl_DESC "IFBControl Interface")
set(FBControl_DESC "FBControl Class")
set(IFBComJavascriptObject_DESC "IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "ComJavascriptObject Class")
set(IFBComEventSource_DESC "IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID 47B5B4C0-35DA-49D8-8047-29C335EC9809)
set(IFBControl_GUID 752A6E50-C459-44AD-ADC0-75209C089CD6)
set(FBControl_GUID 94C9767F-1529-4903-B92F-86B0F32E5DFA)
set(IFBComJavascriptObject_GUID F0DFBA10-7686-4387-A0B5-AA7E3A6131C4)
set(FBComJavascriptObject_GUID EAB1E8C4-6B1F-443c-86AE-3CDF4DC05AF4)
set(IFBComEventSource_GUID 85E70F4D-FCBA-4b2c-A9B0-407F3C57B663)

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "FireBreath.WinPlugin")
set(MOZILLA_PLUGINID "@firebreath.googlecode.com/Firebreath Win Plugin")

# strings
set(FBSTRING_CompanyName "No particular company")
set(FBSTRING_FileDescription "Plugin demonstrating the use of the Firebreath plugin framework")
set(FBSTRING_PLUGIN_VERSION "1.0.0")
set(FBSTRING_LegalCopyright "Copyright 2009 Firebreath development team")
set(FBSTRING_PluginFileName "npFireBreath.dll")
set(FBSTRING_ProductName "FireBreath Demo Plugin")
set(FBSTRING_FileExtents "")
set(FBSTRING_PluginName "FireBreath Demo Plugin")
set(FBSTRING_MIMEType "application/x-vnd.FirebreathPlugin")

if (NOT EXISTS ${GEN_DIR}/PluginConfig.cmake)
    get_filename_component(TEMPLATE_DIR "${FB_ROOT_DIR}/gen_templates" ABSOLUTE)
    get_filename_component(TEMPLATE_DEST_DIR "${GEN_DIR}/gen" ABSOLUTE)
    message("Generating plugin configuration files in ${TEMPLATE_DEST_DIR}")

    configure_file(PluginConfig.cmake ${GEN_DIR}/PluginConfig.cmake COPYONLY)

    configure_file(${TEMPLATE_DIR}/COM_config.h ${TEMPLATE_DEST_DIR}/COM_config.h)
    configure_file(${TEMPLATE_DIR}/win_common.h ${TEMPLATE_DEST_DIR}/win_common.h)
    configure_file(${TEMPLATE_DIR}/config.h ${TEMPLATE_DEST_DIR}/config.h)
    configure_file(${TEMPLATE_DIR}/targetver.h ${TEMPLATE_DEST_DIR}/targetver.h)
    configure_file(${TEMPLATE_DIR}/resource.h ${TEMPLATE_DEST_DIR}/resource.h)
    configure_file(${TEMPLATE_DIR}/FBControl.htm ${TEMPLATE_DEST_DIR}/FBControl.htm)
    configure_file(${TEMPLATE_DIR}/FBControl.rgs ${TEMPLATE_DEST_DIR}/FBControl.rgs)
    configure_file(${TEMPLATE_DIR}/FireBreathWin.rgs ${TEMPLATE_DEST_DIR}/FireBreathWin.rgs)
    configure_file(${TEMPLATE_DIR}/FireBreathWin.idl ${TEMPLATE_DEST_DIR}/FireBreathWin.idl)
    configure_file(${TEMPLATE_DIR}/FireBreathWin.def ${TEMPLATE_DEST_DIR}/FireBreathWin.def)
    configure_file(${TEMPLATE_DIR}/firebreathWin.rc ${TEMPLATE_DEST_DIR}/firebreathWin.rc)
endif()

