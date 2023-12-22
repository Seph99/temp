$counter = 1

Get-ChildItem -Filter *.jpg | ForEach-Object {
    $newName = "$counter.jpg"
    Rename-Item $_.FullName -NewName $newName
    $counter++
}
