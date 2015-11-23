defmodule GdnWifi.HotspotsController do
  use GdnWifi.Web, :controller

  def index(conn, _params) do
    render conn, :index, hotspots: GdnWifi.Hotspots.ResultStream.new |> Enum.into([])
  end
end
