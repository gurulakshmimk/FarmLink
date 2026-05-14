$source = "C:\Users\gurul\.gemini\antigravity\brain\d261ab94-3a40-42f8-9bcf-8233b6dd8569\.tempmediaStorage"
$dest = "c:\Users\gurul\OneDrive\Desktop\WEB\farmlink\frontend\public"
Copy-Item "$source\media_d261ab94-3a40-42f8-9bcf-8233b6dd8569_1778239308078.png" "$dest\test1.png"
Copy-Item "$source\media_d261ab94-3a40-42f8-9bcf-8233b6dd8569_1778239337350.png" "$dest\test2.png"
Copy-Item "$source\media_d261ab94-3a40-42f8-9bcf-8233b6dd8569_1778239369856.png" "$dest\test3.png"
Copy-Item "$source\media_d261ab94-3a40-42f8-9bcf-8233b6dd8569_1778239392637.png" "$dest\test4.png"
Copy-Item "$source\media_d261ab94-3a40-42f8-9bcf-8233b6dd8569_1778239403327.png" "$dest\test5.png"

# Let's also check for newer files just in case!
$files = Get-ChildItem "$source\media_*.png" | Sort-Object LastWriteTime -Descending | Select-Object -First 5
$i = 6
foreach ($f in $files) {
    Copy-Item $f.FullName "$dest\test$i.png"
    $i++
}
