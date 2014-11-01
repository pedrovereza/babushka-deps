dep 'unrar', :template => 'bin' do
  installs {
	via :brew, "unrar"
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
