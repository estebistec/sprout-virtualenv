#python = node['sprout']['sprout-virtualenv']['python'] || 'python'
pip = node['sprout']['sprout-virtualenv']['pip'] || 'pip'
virtualenv_version = node['sprout']['sprout-virtualenv']['virtualenv_version']
virtualenvwrapper_version = node['sprout']['sprout-virtualenv']['virtualenvwrapper_version']

install_virtualenv_command = "#{pip} install virtualenv"
install_virtualenv_command << "==#{virtualenv_version}" if virtualenv_version

execute "Install virtualenv" do
  command install_virtualenv_command
end


install_virtualenvwrapper_command = "#{pip} install virtualenvwrapper"
install_virtualenvwrapper_command << "==#{virtualenvwrapper_version}" if virtualenvwrapper_version

execute "Install virtualenvwrapper" do
  command install_virtualenvwrapper_command
end

# TODO add source virtualenvwrapper.sh to .bashrc / .zshrc
