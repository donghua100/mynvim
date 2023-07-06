local status_ok, ter = pcall(require, "nvim-autopairs")
if not status_ok then
  return
end

ter.setup()

