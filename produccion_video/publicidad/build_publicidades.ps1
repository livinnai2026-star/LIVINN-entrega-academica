$ErrorActionPreference = 'Stop'

$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$ffmpeg = Join-Path $projectRoot '.video_tools\imageio_ffmpeg\binaries\ffmpeg-win-x86_64-v7.1.exe'

if (-not (Test-Path -LiteralPath $ffmpeg)) {
  throw 'No se encontro FFmpeg local. Instalar imageio-ffmpeg dentro de .video_tools antes de exportar.'
}

$originals = Join-Path $PSScriptRoot 'originales'
$subtitles = Join-Path $PSScriptRoot 'textos'
$exports = Join-Path $PSScriptRoot 'finales'
New-Item -ItemType Directory -Path $exports -Force | Out-Null

$ads = @(
  @{
    Input = Join-Path $originals '01_escapada_original.mp4'
    Subtitle = Join-Path $subtitles '01_escapada.ass'
    Output = Join-Path $exports 'livinn_ad_01_escapada_9x16.mp4'
    Title = 'LIVINN - Escapada'
  },
  @{
    Input = Join-Path $originals '02_tu_proxima_escapada_original.mp4'
    Subtitle = Join-Path $subtitles '02_tu_proxima_escapada.ass'
    Output = Join-Path $exports 'livinn_ad_02_consulta_9x16.mp4'
    Title = 'LIVINN - Consulta tus fechas'
  },
  @{
    Input = Join-Path $originals '03_un_refugio_para_cada_plan_original.mp4'
    Subtitle = Join-Path $subtitles '03_un_refugio_para_cada_plan.ass'
    Output = Join-Path $exports 'livinn_ad_03_refugios_9x16.mp4'
    Title = 'LIVINN - Un refugio para cada plan'
  }
)

foreach ($ad in $ads) {
  $assPath = (Resolve-Path $ad.Subtitle).Path.Replace('\', '/').Replace(':', '\:')
  $videoFilter = "scale=1080:1920:flags=lanczos,fade=t=in:st=0:d=0.20,fade=t=out:st=7.70:d=0.30,ass='$assPath'"
  $audioFilter = 'loudnorm=I=-14:TP=-1.5:LRA=11,afade=t=in:st=0:d=0.20,afade=t=out:st=7.50:d=0.50,alimiter=limit=0.79:level=false'

  & $ffmpeg -y -hide_banner -loglevel warning `
    -i $ad.Input `
    -vf $videoFilter `
    -af $audioFilter `
    -c:v libx264 -preset slow -crf 19 -pix_fmt yuv420p -r 24 `
    -c:a aac -b:a 160k -ar 48000 `
    -movflags +faststart `
    -metadata "title=$($ad.Title)" `
    $ad.Output

  if ($LASTEXITCODE -ne 0) {
    throw "Fallo la exportacion de $($ad.Output)"
  }
}

Write-Host 'Publicidades exportadas correctamente:'
Get-ChildItem -LiteralPath $exports -Filter '*.mp4' | Select-Object Name, Length
