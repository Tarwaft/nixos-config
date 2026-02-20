{pkgs,...}:
{
    home.packages = (with pkgs; [
        #jdk
        jdk25_headless
        stockfish 
        cutechess 
        protontricks 
        wget 
        wget2 
        git-filter-repo 
        python315
        godot
        lua 
        libgcc 
        gcc 
        pkg-config 
        gdb 
        cmake 
        gnumake 
        mariadb
        mosquitto
        mqttx
        nodejs_25
        nodePackages.node-red
        
        #libffi_3_3
        openssl
        pkg-config

        cargo
        rustc
        rust-analyzer
        clippy
        rustfmt
        lua-language-server
        arduino-language-server
        clang-tools # Provides clangd for the LSP

        qt6.qtdeclarative

        rustPlatform.rustLibSrc

        rustlings
        wayland
        wayland-protocols
        alsa-lib
        # Cross Platform 3D Graphics API
        vulkan-loader
        # For debugging around vulkan
        vulkan-tools
        # Other dependencies
        libudev-zero
        libX11
        libXcursor
        libXi
        libXrandr
        libxkbcommon

        arduino-cli
        lazygit
        platformio
        python3Packages.packaging
        picocom
    ]);

    home.sessionVariables = {
    RUST_SRC_PATH =
      "${pkgs.rustPlatform.rustLibSrc}/lib/rustlib/src/rust/library";
  };
}
