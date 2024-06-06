set -Ux QT_QPA_PLATFORM "wayland"
set -Ux OBSIDIAN_USE_WAYLAND 1

# Automatically start Sway on virtual terminal 1 if not already under Wayland
if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
  exec sway
end

if test -n "$GNOME_KEYRING_CONTROL"
    set -x SSH_AUTH_SOCK "$GNOME_KEYRING_CONTROL/ssh"
end
