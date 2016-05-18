defmodule HC do

  File.stream!("schema/flat.csv") |> CSV.decode
end
