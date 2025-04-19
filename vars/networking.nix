{lib}: rec {
  # mainGateway = "192.168.5.1"; # main router
  # use suzi as the default gateway
  # it's a subrouter with a transparent proxy
  # defaultGateway = "192.168.5.178";
  nameservers = [
    "9.9.9.9"
    "2620:fe::fe"
    "1.1.1.1"
    "8.8.8.8"
  ];
  prefixLength = 24;

  # hostsAddr = {
    # ============================================
    # Other VMs and Physical Machines
    # ============================================
    # ai = {
    #   # Desktop PC
    #   iface = "enp5s0";
    #   ipv4 = "192.168.5.100";
    # };

    
  # };
  # COMMENT OUT
  # hostsInterface =
  #   lib.attrsets.mapAttrs
  #   (
  #     key: val: {
  #       interfaces."${val.iface}" = {
  #         useDHCP = false;
  #         ipv4.addresses = [
  #           {
  #             inherit prefixLength;
  #             address = val.ipv4;
  #           }
  #         ];
  #       };
  #     }
  #   )
  #   hostsAddr;

  # ssh = {
    # define the host alias for remote builders
    # this config will be written to /etc/ssh/ssh_config
    # ''
    #   Host ruby
    #     HostName 192.168.5.102
    #     Port 22
    #
    #   Host kana
    #     HostName 192.168.5.103
    #     Port 22
    #   ...
    # '';

    # COMMENT OUT
    # extraConfig =
    #   lib.attrsets.foldlAttrs
    #   (acc: host: val:
    #     acc
    #     + ''
    #       Host ${host}
    #         HostName ${val.ipv4}
    #         Port 22
    #     '')
    #   ""
    #   hostsAddr;

    # define the host key for remote builders so that nix can verify all the remote builders
    # this config will be written to /etc/ssh/ssh_known_hosts
    # knownHosts =
      # Update only the values of the given attribute set.
      #
      #   mapAttrs
      #   (name: value: ("bar-" + value))
      #   { x = "a"; y = "b"; }
      #     => { x = "bar-a"; y = "bar-b"; }
      # COMMENT OUT
      # lib.attrsets.mapAttrs
      # (host: value: {
      #   hostNames = [host hostsAddr.${host}.ipv4];
      #   publicKey = value.publicKey;
      # })
      # {
      #   aquamarine.publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEOXFhFu9Duzp6ZBE288gDZ6VLrNaeWL4kDrFUh9Neic root@aquamarine";
      #   # ruby.publicKey = "";
      #   # kana.publicKey = "";
      # };

  # };
}
