# set path to app that will be used to configure unicorn, 
# note the trailing slash in this example
@dir = Dir.getwd

worker_processes 32
working_directory @dir

timeout 10

# Specify path to socket unicorn listens to, 
# we will use this in our nginx.conf later
listen "/tmp/unicorn.sock", :backlog => 64

# Set process id path
pid "#{@dir}/tmp/pids/unicorn.pid"

# Set log file paths
stderr_path "#{@dir}/log/unicorn.stderr.log"
stdout_path "#{@dir}/log/unicorn.stdout.log"
