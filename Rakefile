SSH = 'ssh -A -i ~/git/cookbook/cookbook.pem -1 ubuntu'

desc "Run Puppet on ENV['CLIENT']"
task :apply do
	client = ENV['CLIENT']
	sh "git push"
	sh "#{SSH} #{client} pull-updates"
end
