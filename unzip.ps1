$files = Get-ChildItem -Filter *.zip;
   ForEach ($file in $files)
	{
	$folder = New-Item -type directory -name ($file.BaseName -replace "_.*");
	Expand-Archive -LiteralPath "./$file" -DestinationPath "$folder" -Force;
	}

