# inspec
i used this link to begin :) \
http://www.anniehedgie.com/inspec-basics-1 \

#RUN on docker \
sudo inspec exec hello_spec.rb -t docker://a2b831014081

#RUN inspec shell to a remote target \
inspec shell -t ssh://root:password@target

#RUN exec to a remote target from a profile \
inspec exec /root/my_nginx -t ssh://root:password@target

#my_nginx is a example of profile \
to execute on docker container \
inspec exec my_nginx/ -t docker://a2b831014082 

