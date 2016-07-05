unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files.unshift(Dir.glob(File.join(lib_dir_path, "rubymotion/**/*.rb")))
  app.files.unshift(Dir.glob(File.join(lib_dir_path, "timestamps/**/*.rb")))
end

module DroidMotion
  class LinearLayout
    def text_view(opts)
    end
  end

  class RelativeLayout
  end

  def linear_layout(opts, &block)
    layout = ::DroidMotion::LinearLayout.new
    layout.instance_eval(&block)

    layout
  end

  def relative_layout(opts, &block)
  end
end
