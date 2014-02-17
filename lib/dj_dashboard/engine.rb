require 'rails'

module DjDashboard
  class Engine < ::Rails::Engine
    isolate_namespace DjDashboard

    initializer 'DjDashboard precompile hook', group: :all do |app|
      app.config.assets.precompile += %w[
        dj_dashboard/dj_dashboard.css
      ]
    end
  end
end