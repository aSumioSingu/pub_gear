defmodule PubGear.Router do
  use Antikythera.Router

  get "/hello", Hello, :hello
  get "/books", Hello, :books
end
