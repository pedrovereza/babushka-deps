dep 'unrar', :template => 'bin' do
  installs {
	via :brew, "unrar"
  }

  provides []
end

dep "z-jump" do
  met? {
	'~/tools/z'.p.directory?
  }

  meet {
	shell('git clone https://github.com/rupa/z.git ~/tools/z')
  }
end
