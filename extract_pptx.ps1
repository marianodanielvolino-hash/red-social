
$ppFileName = "c:\Users\Mariano Volino\OneDrive\Escritorio\PROYECTO FITO ANTIGRAVITY\RED SOCIAL WEB SITE\RED SOCIAL DOSSIER PRESENTACION.pptx"
try {
    $ppt = New-Object -ComObject PowerPoint.Application -ErrorAction Stop
    $pres = $ppt.Presentations.Open($ppFileName, [Microsoft.Office.Core.MsoTriState]::msoTrue, [Microsoft.Office.Core.MsoTriState]::msoFalse, [Microsoft.Office.Core.MsoTriState]::msoFalse)
    $output = ""
    foreach ($slide in $pres.Slides) {
        $output += "--- Slide $($slide.SlideNumber) ---`r`n"
        foreach ($shape in $slide.Shapes) {
            if ($shape.HasTextFrame) {
                $output += $shape.TextFrame.TextRange.Text + "`r`n"
            }
        }
    }
    $pres.Close()
    $ppt.Quit()
    $output | Out-File -FilePath "c:\Users\Mariano Volino\OneDrive\Escritorio\PROYECTO FITO ANTIGRAVITY\RED SOCIAL WEB SITE\pptx_text.txt" -Encoding UTF8
    Write-Host "Success! Text extracted to pptx_text.txt"
} catch {
    Write-Error "Failed to extract PPTX: $_"
}
