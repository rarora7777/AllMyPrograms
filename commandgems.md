### Compress PDF using Ghostscript (tested on bash only)

```
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
```

### `ffmpeg` Simple Compression

```
ffmpeg.exe -i input.mp4 -c:v libx264 -crf 20 output.mp4
```

### Video to High-quality GIF

```
choco install gifski -y
gifski --fps 10 --width 320 -o output.gif input.mp4
```
