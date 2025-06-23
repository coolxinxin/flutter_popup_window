#include "include/flutter_popup_window/flutter_popup_window_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_popup_window_plugin.h"

void FlutterPopupWindowPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_popup_window::FlutterPopupWindowPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
