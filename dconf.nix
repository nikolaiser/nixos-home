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

    "org/gnome/desktop/calendar" = {
      show-weekdate = false;
    };

    "org/gnome/desktop/input-sources" = {
      per-window = false;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "ru" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" "grp:alt_shift_toggle" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = false;
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

    "org/gnome/desktop/notifications/application/telegramdesktop" = {
      application-id = "telegramdesktop.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      disable-microphone = false;
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

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      maximized = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Primary><Alt>t";
      command = "kitty";
      name = "teminal";
    };

    "org/gnome/shell" = {
      command-history = [ "r" ];
      disable-user-extensions = false;
      disabled-extensions = [ "dash-to-dock@micxgx.gmail.com" ];
      enabled-extensions = [ "dash-to-dock@micxgx.gmail.com" "dash-to-panel@jderose9.github.com" ];
      favorite-apps = [ "firefox.desktop" ];
      welcome-dialog-last-shown-version = "41.1";
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      apply-custom-theme = false;
      background-opacity = 0.8;
      custom-theme-shrink = false;
      dash-max-icon-size = 48;
      dock-fixed = false;
      dock-position = "BOTTOM";
      extend-height = true;
      height-fraction = 0.9;
      icon-size-fixed = false;
      multi-monitor = true;
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      animate-appicon-hover-animation-extent = "\"{'RIPPLE': 4, 'PLANK': 4, 'SIMPLE': 1}\"";
      appicon-margin = 8;
      appicon-padding = 4;
      available-monitors = [ 0 1 ];
      hotkeys-overlay-combo = "TEMPORARILY";
      intellihide = true;
      leftbox-padding = -1;
      panel-anchors = "\"'{\"0\":\"MIDDLE\",\"1\":\"MIDDLE\"}'\"";
      panel-lengths = "\"'{\"0\":100,\"1\":100}'\"";
      panel-sizes = "\"'{\"0\":48,\"1\":48}'\"";
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
      audible-bell = false;
      custom-command = "fish";
      font = "FiraCode Nerd Font Mono 11";
      login-shell = false;
      palette = [ "rgb(23,20,33)" "rgb(192,28,40)" "rgb(38,162,105)" "rgb(162,115,76)" "rgb(18,72,139)" "rgb(163,71,186)" "rgb(42,161,179)" "rgb(208,207,204)" "rgb(94,92,100)" "rgb(246,97,81)" "rgb(51,209,122)" "rgb(233,173,12)" "rgb(42,123,222)" "rgb(192,97,203)" "rgb(51,199,222)" "rgb(255,255,255)" ];
      use-custom-command = true;
      use-system-font = false;
      use-theme-colors = true;
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
