require 'rake'

# Useage: rake install | vim

# Install does the following
#   Link *.link ~/.*
#   Link *.dir  ~/*
#   Copy *.copy ~/*


task :install do
  install(".", ".link")
  install("", ".dir")
  copy(".", ".copy")
  puts "Now run this command from the prompt:"
  puts "\e[1;37m rake vim"
end

task :uninstall do
  uninstall(".", ".link")
  uninstall("", ".dir")
  puts "manually remove the copied folders"
end

task :vim do
    home = File.expand_path('~')
    `mkdir #{home}/.vim/bundle`
    `hub clone gmarik/vundle #{home}/.vim/bundle/vundle`
    puts "Now run this command from the prompt (ignore errors):"
    puts "\e[1;37m vim +BundleInstall +qall"
end

task :debug do
    debugPrint('link', '.', '.link')
    debugPrint('link', '', '.dir')
    debugPrint('copy', '.', '.copy')
end

task :default => :install

def copy(prefix, suffix)
  # globstr = '*/**{' + suffix + '}'    # recursive version
  globstr = '*{' + suffix + '}'
  linkables = Dir.glob(globstr, File::FNM_DOTMATCH)

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split('/').last.split(suffix).last
    target = "#{ENV["HOME"]}/" + prefix + "#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        when 's' then next
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `cp -r "$PWD/#{linkable}" "#{target}"`
    puts "copying " + "#{linkable} to #{target}"
  end
end

def install(prefix, suffix)
  # globstr = '*/**{' + suffix + '}'    # recursive version
  globstr = '*{' + suffix + '}'
  linkables = Dir.glob(globstr, File::FNM_DOTMATCH)

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    overwrite = false
    backup = false

    file = linkable.split('/').last.split(suffix).last
    target = "#{ENV["HOME"]}/" + prefix + "#{file}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        when 's' then next
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      `mv "$HOME/.#{file}" "$HOME/.#{file}.backup"` if backup || backup_all
    end
    `ln -sh "$PWD/#{linkable}" "#{target}"`
    puts "linking " + "#{linkable} to #{target}"
  end
end

def uninstall(prefix, suffix)
  globstr = '*{' + suffix + '}'

  Dir.glob(globstr).each do |linkable|
    file = linkable.split('/').last.split(suffix).last
    target = "#{ENV["HOME"]}/" + prefix + "#{file}"

    # Remove all symlinks created during installation
    if File.symlink?(target)
      FileUtils.rm(target)
    end
    
    # Replace any backups made during installation
    if File.exists?("#{ENV["HOME"]}/.#{file}.backup")
      `mv "$HOME/.#{file}.backup" "$HOME/.#{file}"` 
    end
  end
end

def debugPrint(command, prefix, suffix) 
  globstr = '*{' + suffix + '}'
  linkables = Dir.glob(globstr, File::FNM_DOTMATCH)

  linkables.each do |linkable|
    file = linkable.split('/').last.split(suffix).last
    target = "#{ENV["HOME"]}/" + prefix + "#{file}"
    puts "will #{command} #{linkable} -> #{target}"
  end
end


