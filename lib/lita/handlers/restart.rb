module Lita
  #
  module Handlers
    # Die handler
    class Die < Handler
      desc = 'recycle this robot.'
      route(
        /^bounce|restart|si+t(down)?|stay|roll over|fuck off$/i, :restart,
        command: true, restrict_to: :admins,
        help: {
          'bounce' => desc,
          'restart' => desc,
          'sit' => desc,
          'sit down' => desc,
          'stay' => desc,
          'roll over' => desc,
          'fuck off' => desc
        })

      def restart(response)
        response.reply(render_template('restart'))
        robot.shut_down
      end
    end

    Lita.register_handler(Die)
  end
end
