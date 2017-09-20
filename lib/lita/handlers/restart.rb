module Lita
  #
  module Handlers
    # Die handler
    class Die < Handler
      desc = 'recycle this robot.'
      route(
        /^bounce|restart|si+t|stay|roll over$/i, :restart,
        command: true, restrict_to: :admins,
        help: {
          'bounce' => desc,
          'restart' => desc,
          'sit' => desc,
          'stay' => desc,
          'roll over' => desc,
        })

      def restart(response)
        response.reply(render_template('restart'))
        robot.shut_down
      end
    end

    Lita.register_handler(Die)
  end
end
