include Babushka::ShellHelpers

dep "dotfiles" do
  met? {
	'~/dotfiles'.p.directory?
  }
  
  meet {
	shell('git clone https://github.com/pedrovereza/dotfiles.git ~/dotfiles')
	shell('sh ~/dotfiles/install.sh')
  }
end
