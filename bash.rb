include Babushka::ShellHelpers

dep "env" do
  requires 'z-jump'
  requires 'dotfiles'
end

dep "z-jump" do
  met? {
	'~/tools/z'.p.directory?
  }

  meet {
	shell('git clone https://github.com/rupa/z.git ~/tools/z')
  }
end

dep "dotfiles" do
  met? {
	'~/dotfiles'.p.directory?
  }
  
  meet {
	shell('git clone https://github.com/pedrovereza/dotfiles.git ~/dotfiles')
	shell('sh ~/dotfiles/install.sh')
  }
end
