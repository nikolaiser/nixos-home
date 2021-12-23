# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

let
  mkTuple = lib.hm.gvariant.mkTuple;
in
{
  dconf.settings = {
    "org/gnome/control-center" = {
      last-panel = "keyboard";
    };

    "org/gnome/desktop/input-sources" = {
      per-window = false;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "ru" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" "grp:alt_shift_toggle" ];
    };

    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      gtk-im-module = "gtk-im-context-simple";
      gtk-theme = "Adwaita-dark";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "firefox" ];
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
      network-monitor-gio-name = "";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      experimental-features = [ "scale-monitor-framebuffer" ];
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Primary><Alt>t";
      command = "gnome-terminal";
      name = "teminal";
    };

    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [ "dash-to-dock@micxgx.gmail.com" "dash-to-panel@jderose9.github.com" ];
      favorite-apps = [ "firefox.desktop" ];
      welcome-dialog-last-shown-version = "41.1";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      background-opacity = 0.8;
      dash-max-icon-size = 48;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      multi-monitor = true;
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      animate-appicon-hover-animation-extent = "{'RIPPLE': 4, 'PLANK': 4, 'SIMPLE': 1}";
      appicon-margin = 8;
      appicon-padding = 4;
      available-monitors = [ 0 1 ];
      hotkeys-overlay-combo = "TEMPORARILY";
      intellihide = true;
      leftbox-padding = -1;
      panel-anchors = "'{\"0\":\"MIDDLE\",\"1\":\"MIDDLE\"}'";
      panel-lengths = "'{\"0\":100,\"1\":100}'";
      panel-sizes = "'{\"0\":48,\"1\":48}'";
      status-icon-padding = -1;
      tray-padding = -1;
      window-preview-title-position = "TOP";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/terminal/legacy/profiles:" = {
      default = "86b6d822-f1b4-446d-83a9-2458f21d53d5";
      list = [ "b1dcc9dd-5262-4d8d-a863-c897e6d979b9" "86b6d822-f1b4-446d-83a9-2458f21d53d5" ];
    };

    "org/gnome/terminal/legacy/profiles:/:86b6d822-f1b4-446d-83a9-2458f21d53d5" = {
      custom-command = "fish";
      login-shell = false;
      use-custom-command = true;
      visible-name = "nikolaiser";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "system/locale" = {
      region = "en_GB.UTF-8";
    };

  };
}
