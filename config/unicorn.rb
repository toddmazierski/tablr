root_path = File.expand_path("../", File.dirname(__FILE__))
temp_path = File.join(root_path, "tmp")
log_path  = File.join(root_path, "log")

worker_processes  1
working_directory root_path
timeout           30
listen            File.join(temp_path, "sockets/unicorn.sock"), :backlog => 64
pid               File.join(temp_path, "pids/unicorn.pid")
stderr_path       File.join(log_path, "unicorn.stderr.log")
stdout_path       File.join(log_path, "unicorn.stdout.log")
