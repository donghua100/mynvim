local status_ok, ter = pcall(require, "toggleterm")
if not status_ok then
  return
end

ter.setup()

