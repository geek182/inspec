# encoding: utf-8
# copyright: 2018, The Authors

#expect to be profile/files/params.yml
directory_params = yaml(content: inspec.profile.file('params.yml')).params

required_folders = directory_params['folders']

title 'Require Folders'

# you add controls here
control 'tmp-1.0' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'Create /tmp directory'             # A human-readable title
  desc 'An optional description...'
   required_folders.each do |required_folders|
    describe file(required_folders) do	  # The actual test
#	its('type') { should eq :directory }	
	it('type') { should exist }	
   end
  end
end

#my_services.each do |s|
#  describe service(s['service_name']) do
#    it { should be_running }
#  end
