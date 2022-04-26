replacement = config["replacement"]
selector = config["selector"]
regex = "^PS1&gt;|^&gt;$"
content = HTML.select(page, selector)

local i = 1
while content[i] do
  element = content[i]
  prompt = HTML.inner_html(element)

  if Regex.match(prompt, regex) then 
    newPrompt = Regex.replace(prompt, regex, replacement)
    HTML.replace_content(element, HTML.create_text(newPrompt))
    HTML.add_class(element, "prompt")
  end
  i = i + 1
end
