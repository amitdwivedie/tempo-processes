require "rubygems"
require "buildr"

# Keep this structure to allow the build system to update version numbers.
VERSION_NUMBER = "6.0.3"

repositories.release_to[:username] ||= "release"
repositories.release_to[:url] ||= "sftp://www.intalio.org/var/www-org/public/maven2"
repositories.release_to[:permissions] ||= 0664

desc "Workflow Processes"
define "tempo-processes" do
  project.version = VERSION_NUMBER
  project.group = "org.intalio.tempo"

  define "xpath-extensions" do
    package :jar
  end

  define "AbsenceRequest" do
    package :jar
  end

  define "TaskManager" do
    package :jar
  end
end