module Plugins
  module LoomioCommentPreview
    class Plugin < Plugins::Base
      setup! :loomio_comment_preview do |plugin|
        plugin.enabled = true
        plugin.use_translations :locales
        plugin.use_component :comment_preview_button, outlet: :after_comment_post
        plugin.use_component :comment_preview_form
      end
    end
  end
end
