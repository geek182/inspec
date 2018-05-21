# Example InSpec Profile

This example shows the implementation of an InSpec profile.

#Example of loop with a resource with depends of a lest 01 arguments :

control 'verify-folders-1.0' do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title 'Verify a list of directory'             # A human-readable title
  desc 'necessary folders to app run'
   required_folders.each do |required_folders|
    describe file(required_folders) do    # The actual test
        its('type') { should eq :directory }
   end
  end
end

