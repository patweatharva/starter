local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("ccp", { -- trigger: type 'cc' and expand
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "int main(){",
      "    ios_base::sync_with_stdio(false);",
      "    cin.tie(nullptr);",
      "",
      "    "
    }),
    i(1), -- Cursor will be here
    t({ "", "}" }),
  }),
}

