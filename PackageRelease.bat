mkdir Release
copy "*.dll" "Release\*.dll"
copy "LICENSE" "Release\LICENSE"
copy "readme.txt" "Release\readme.txt"
copy "decoherence_desktop.exe" "Release\decoherence.exe"
xcopy /s "data" "Release\data"
