hook global InsertChar j %{ try %{
    exec -draft hH <a-k>jj<ret> d
    exec <esc>
}}

map global insert <tab> '<a-;><gt>'
map global insert <s-tab> '<a-;><lt>'
