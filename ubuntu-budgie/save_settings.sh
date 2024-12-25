#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
target_config_path="$parent_path/.config"

cp -r ~/.config/budgie-control-center $target_config_path
cp -r ~/.config/budgie-desktop $target_config_path
cp -r ~/.config/budgie-extras $target_config_path
cp -r ~/.config/plank $target_config_path
cp -r ~/.config/ibus $target_config_path
