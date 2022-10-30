local status, icons = pcall(require, 'nvim-web-devicons')

if (not status) then return end

icons.setup {
  override = {
    astro = {
      icon = "",
      color = "#FFFFFF",
      name = "astro",
    }
  },
  color_icons = true,
  default = true
}
