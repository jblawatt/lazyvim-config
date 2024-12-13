if true then
  return {}
end

return {
  "yetone/avante.nvim",
  enabled = true,
  opts = {
    -- provider = "azure",
    -- azure = {
    --   endpoint = "https://s5q-aks-prod-openai.openai.azure.com",
    --   deployment = "gpt-4o",
    -- },
    provider = "openai",
    -- openai = {
    --   -- ["local"] = true,
    --   endpoint = "127.0.0.1:11434/v1",
    --   -- model = "mixtral",
    --   model = "phind-codellama:34b",
    -- },
    openai = {
      api_key_name = "",
      endpoint = "http://127.0.0.1:11434/v1",
      -- model = "phind-codellama:34b",
      model = "llama3.1:b8",
      parse_curl_args = function(opts, code_opts)
        return {
          url = opts.endpoint .. "/chat/completions",
          headers = {
            ["Accept"] = "application/json",
            ["Content-Type"] = "application/json",
          },
          body = {
            model = opts.model,
            messages = require("avante.providers").copilot.parse_message(code_opts), -- you can make your own message, but this is very advanced
            max_tokens = 2048,
            stream = true,
          },
        }
      end,
      parse_response_data = function(data_stream, event_state, opts)
        require("avante.providers").openai.parse_response(data_stream, event_state, opts)
      end,
    },
  },
}
