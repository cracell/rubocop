# encoding: utf-8

module RuboCop
  module Cop
    module Rails
      # This cop checks for default_scope calls
      class AvoidDefaultScope < Cop
        MSG = 'Avoid the use of `default_scope`'

        def on_send(node)
          return unless command?(:default_scope, node)

          add_offense(node, :expression)
        end
      end
    end
  end
end
