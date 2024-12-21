local icon_ok, dev_icons = pcall(require, 'nvim-web-devicons')

dev_icons.setup({
  override = {
    text = {
      icon = '',
      name = 'Text',
    }
  }
})
