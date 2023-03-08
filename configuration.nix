{ pkgs, ... }: {
  console = {
    packages = [ pkgs.terminus_font ];
    font = "ter-v16b";
    useXkbConfig = true;
    earlySetup = true;
  };
  time.timeZone = "Europe/Berlin";
  services.xserver = {
    layout = "de";
    xkbOptions = "eurosign:e";
    xkbVariant = "nodeadkeys";
  };
  nix = {
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
    settings = { auto-optimise-store = true; };
  };
}
