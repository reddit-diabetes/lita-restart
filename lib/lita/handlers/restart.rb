module Lita
  #
  module Handlers
    # Die handler
    class Die < Handler
      route(
        /^restart$/, :restart,
        command: true, restrict_to: :admins,
        help: {
          'restart' => 'recycle this robot.'
        })

      def restart(response)
        response.reply(render_template('restart'))
        robot.shut_down
      end
    end

    Lita.register_handler(Die)
  end
end
