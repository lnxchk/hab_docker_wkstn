user "velocity" do
  comment 'Velocity London 2017'
  home '/home/velocity'
  password "$6$jXHGzPI3$JplXrqB1t/i3TIxg.2abFj9SKjSBODwV7gnAs86YrDvalWp2dev6xSzaVZymRh/UsZFOs648uiSyTUL26NfOq." 
  manage_home true
end

cookbook_file '/etc/sudoers.d/90-velocity' do
  source '90-velocity_sudoers'
  owner 'root'
  group 'root'
  mode '0440'
  action :create
end
