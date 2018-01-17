dep 'tools' do
  requires 'unrar'
  requires 'git-crypt'
  requires 'ag'
  requires 'vim'
  requires 'z-jump'
  requires 'giffy'
  requires 'lorem'
end

dep 'unrar', :template => 'bin' do
  installs {
    via :brew, 'unrar'
  }
end

dep 'git-crypt', :template => 'bin' do
  installs {
    via :brew, 'git-crypt'
  }
end

dep 'ag', :template => 'bin' do
  installs {
    via :brew, 'ag'
  }
end

dep 'z-jump' do
  met? {
    '~/tools/z'.p.directory?
  }

  meet {
    shell('git clone https://github.com/rupa/z.git ~/tools/z')
  }
end

dep 'giffy' do
  met? {
	'~/tools/giffy'.p.directory?
  }

  meet {
	shell('git clone https://github.com/pedrovereza/giffy.git ~/tools/giffy')
  }
end

dep 'lorem' do
  met? {
    '~/tools/lorem'.p.directory?
  }

  meet {
    shell('git clone https://github.com/pedrovereza/lorem.git ~/tools/lorem')
  }
end

dep 'vim' do
  requires 'vim-install'
  requires 'vimfiles'
end

dep 'vim-install' do
  met? {
    '/usr/local/Cellar/vim'.p.directory?
  }

  meet {
    shell('brew install vim')
  }
end

dep 'vimfiles' do
  met? {
    '~/.vim'.p.directory?
  }

  meet {
    shell('git clone https://github.com/pedrovereza/vimfiles.git ~/.vim')
    shell('ln -s ~/.vim/vimrc ~/.vimrc')
    shell('vim -S <(echo -e "BundleInstall \n q \n q")')
    shell('open Monaco-Powerline.otf')
  }
end
