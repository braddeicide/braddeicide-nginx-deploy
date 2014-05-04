node default {
  
  class {"nginx":
    listenport      => 8000,
    package_name    => "nginx",
    service_name    => "nginx",
    service_ensure  => "running",
    site_git_src    => "https://github.com/puppetlabs/exercise-webpage.git",
    site_folder_dst => "/usr/share/nginx/exercise/",

  }
}
