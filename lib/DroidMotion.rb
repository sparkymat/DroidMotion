require "DroidMotion/version"

module DroidMotion
  class LinearLayout
  end

  class RelativeLayout
  end

  def linear_layout(opts, &block)
    layout = ::DroidMotion::LinearLayout.new
    layout.instance_eval(block)
  end

  def relative_layout(opts, &block)
  end
end
