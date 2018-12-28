use ExGuard.Config

guard("mix test", run_on_start: true)
|> command("mix test --color")
# only run related phoenix test when a file changes
|> watch(
  {~r{lib/(?<lib_dir>.+_web)/(?<dir>.+)/(?<file>.+).ex$}i,
   fn m -> "test/#{m["lib_dir"]}/#{m["dir"]}/#{m["file"]}_test.exs" end}
)
|> watch(
  {~r{test/(?<test_dir>.+)/(?<dir>.+)/(?<file>.+)_test.exs$}i,
   fn m -> "test/#{m["test_dir"]}/#{m["dir"]}/#{m["file"]}_test.exs" end}
)
# only if the above pattern doesn't match try to match all elixir/erlang source
|> watch(~r{\.(erl|ex|exs|eex|xrl|yrl)\z}i)
|> ignore(~r{deps})
|> notification(:off)
