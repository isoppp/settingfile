set config_dir (realpath (dirname (status --current-filename)))
set config_files $config_dir/configs/**/*.fish

for file in $config_files;
  # ls -al $file
  source $file;
end

set -e config_dir
set -e config_files
