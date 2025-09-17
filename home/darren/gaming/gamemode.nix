# home/darren/gaming/gamemode.nix
{ pkgs, ... }:

{
  xdg.configFile."gamemode.ini".text = ''
    [general]
    renice=10

    [gpu]
    apply_gpu_optimisations=true
    gpu_device=0
    nv_powermizer_mode=1
    nv_prime_render_offload_enable=true
    nv_ignore_superseded=false
  '';
}
