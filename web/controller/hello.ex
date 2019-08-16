defmodule PubGear.Controller.Hello do
  use Antikythera.Controller

  def hello(conn) do
    PubGear.Gettext.put_locale(conn.request.query_params["locale"] || "en")
    Conn.render(conn, 200, "hello", [gear_name: :pub_gear])
  end

  def books(conn) do
    client = Dodai.Client.new(:dev, "a_lkBQLPMI")
    req = Dodai.RetrieveDedicatedDataEntityListRequest.new("g_nfWybD4y", "book", "rkey_PISH6syKAXNUyxM")
    res = Dodai.Client.send(client, req)
    Conn.json(conn, 200, res.body)
  end
end
