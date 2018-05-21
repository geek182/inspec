# inspec
i used this link to begin :) 
http://www.anniehedgie.com/inspec-basics-1

#RUN on docker

sudo inspec exec hello_spec.rb -t docker://a2b831014081

#RUN inspec shell to a remote target
inspec shell -t ssh://root:password@target

