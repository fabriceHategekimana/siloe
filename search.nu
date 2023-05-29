#!/home/fabrice/.cargo/bin/nu



def main [...words] {
	let concat = { |acc, x| $acc + $x }
	alias mysplit = ($in | split row "\n" | drop)

	$words | each { |x| /home/fabrice/sh/synonymo $x } | reduce $concat | mysplit | each { |x| rg -l $x paroles/* } | reduce $concat | mysplit | sort | uniq 
}
