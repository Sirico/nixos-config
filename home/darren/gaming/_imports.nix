
# home/darren/gaming/_imports.nix

let
  dir = ./.;
  files = builtins.attrNames (builtins.readDir dir);
  nixFiles = builtins.filter (f:
    f != "_imports.nix" && builtins.match ".*\\.nix" f != null
  ) files;
in map (f: import (dir + ("/" + f))) nixFiles
