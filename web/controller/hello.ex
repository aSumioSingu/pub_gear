defmodule PubGear.Controller.Hello do
  use Antikythera.Controller

  def hello(conn) do
    PubGear.Gettext.put_locale(conn.request.query_params["locale"] || "en")
    Conn.render(conn, 200, "hello", [gear_name: :pub_gear])
  end
end
