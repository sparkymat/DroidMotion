require "DroidMotion/version"

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
