dep 'tools' do
  requires 'unrar'
  requires 'git-crypt'
  requires 'ag'
  requires 'vim'
  requires 'z-jump'
  requires 'giffy'
end

dep 'unrar', :template => 'bin' do
  installs {
    via :brew, "unrar"
  }
end

dep 'git-crypt', :template => 'bin' do
  installs {
    via :brew, "git-crypt"
  }
end

dep 'ag', :template => 'bin' do
  installs {
    via :brew, "ag"
  }
end

dep 'vim', :template => 'bin' do
  installs {
    via :brew, "vim"
  }
end

dep "z-jump" do
  met? {
    '~/tools/z'.p.directory?
  }

  meet {
    shell('git clone https://github.com/rupa/z.git ~/tools/z')
  }
end

dep "giffy" do
  met? {
	'~/tools/giffy'.p.directory?
  }

  meet {
	shell('git clone https://github.com/pedrovereza/giffy.git ~/tools/giffy')
  }
end
