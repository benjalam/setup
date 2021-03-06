#!/usr/bin/env ruby -wU

OSX = %w(intro osx_command_line_tools github homebrew osx_sublime_text osx_oh_my_zsh github_rsa dotfiles ssh_osx rbenv_osx rbenv_ruby osx_postgresql osx_security checkup alumni_platform osx_slack osx_preferences)
UBUNTU = %w(intro github ubuntu_sublime_text ubuntu_git ubuntu_oh_my_zsh github_rsa dotfiles rbenv_ubuntu rbenv_ruby ubuntu_postgresql ubuntu_extra checkup alumni_platform ubuntu_slack)

{ 'OSX.md' => OSX, 'UBUNTU.md' => UBUNTU }.each do |filename, partials|
  File.open(filename.to_s, 'w') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"))
      f << "\n\n"
    end
  end
end
