local autopairs_status, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_status then
  print("autopairs failed to load")
  return
end

autopaits.setup({
  check_ts = true
  ts_config = {
    lua = {"string"},
    javascript = {"template_string"},
    java = false,
  },
})
