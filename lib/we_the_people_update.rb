$:.unshift(File.dirname(__FILE__))

require 'json'
require 'rest_client'
require 'active_support/inflector'
require 'active_support/core_ext/hash'
require 'active_support/core_ext/module/delegation'

require 'we_the_people_update/config'
require 'we_the_people_update/resource'
require 'we_the_people_update/embedded_resource'
require 'we_the_people_update/association_proxy'
require 'we_the_people_update/collection'

require 'we_the_people_update/resources/petition'
require 'we_the_people_update/resources/issue'
require 'we_the_people_update/resources/response'
require 'we_the_people_update/resources/signature'
require 'we_the_people_update/resources/location'
require 'we_the_people_update/resources/user'

if defined?(Motion::Project::Config)
  Motion::Project::App.setup do |app|
    # Borrowed from the teacup gem
    insert_point = 0
    app.files.each_index do |index|
      file = app.files[index]
      if file =~ /^(?:\.\/)?app\//
        # found app/, so stop looking
        break
      end
      insert_point = index + 1
    end

    Dir.glob(File.join(File.dirname(__FILE__), 'we_the_people_update/**/*.rb')).reverse.each do |file|
      app.files.insert(insert_point, file)
    end
  end
end

module WeThePeopleUpdate
  VERSION = '0.0.1'
end