workflow "hello" {
  on = "repository_dispatch"
  resolves = ["world"]
}

action "world" {
  uses = "docker://alpine"
  runs = "sh"
  args = [ "-c", "cat /github/workflow/event.json" ]
}
