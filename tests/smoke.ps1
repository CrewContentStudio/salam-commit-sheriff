$ErrorActionPreference = "Stop"
salam build main.salam --output=sheriff
$good = & ./sheriff "feat: add deterministic checks"
$bad = & ./sheriff "WIP"
if ($good -notmatch "^PASS") { throw "Expected PASS for good fixture" }
if ($bad -notmatch "^FAIL") { throw "Expected FAIL for bad fixture" }
Write-Output "smoke: PASS"