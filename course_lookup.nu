# HOW TO USE
# 1. install nushell
# 2. type `nu` in the terminal and start nushell
# 3. in this directory, run `source course_lookup.nu`
# you can search with `mts [search term]` and `vpl [search term]`
# all courses in mts can be used for the cs masters.
# vpl is a list of courses offered Summer 2025.
# mts is a list of courses that can be used for the CS masters.
# search vpl and see if it can be used for cs in mts.
let vpl = open $'($env.FILE_PWD)/vpl.csv'
let mts = open $'($env.FILE_PWD)/mts.csv'

def mts [term: string] {
    $mts | where ($it.name | str downcase | str contains $term)
}

def vpl [term: string] {
    $vpl | where ($it.name | str downcase | str contains $term)
}