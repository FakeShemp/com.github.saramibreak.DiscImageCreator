#!/bin/sh
flatpak-builder --repo=dic --force-clean builds com.github.saramibreak.DiscImageCreator.yaml
flatpak --user remote-add --no-gpg-verify --if-not-exists dic dic
flatpak install dic com.github.saramibreak.DiscImageCreator
flatpak update com.github.saramibreak.DiscImageCreator
