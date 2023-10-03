### Compress PDF using Ghostscript (tested on bash only)

```
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
```

### `ffmpeg` Simple Compression

```
ffmpeg -i input.mp4 -c:v libx264 -crf 20 output.mp4
```

### Video to High-quality GIF: Linux/Mac

```
gifski --fps 10 --width 320 -o output.gif input.mp4
```

### Video to High-quality GIF: Windows

```
choco install gifski -y
ffmpeg -i input.mp4 -vf fps=10 frame%04d.png
gifski --fps 10 --width 320 -o output.gif frame*.png
```
