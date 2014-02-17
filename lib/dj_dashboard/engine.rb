require 'rails'

module DjDashboard
  class Engine < ::Rails::Engine
    isolate_namespace DjDashboard

    initializer "dj_dashboard.assets.precompile" do |app|
      app.config.assets.precompile += %w(style.css)
    end
  end
end