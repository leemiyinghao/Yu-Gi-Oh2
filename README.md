# Yu-Gi-Oh!!
"Yu-Gi-Oh!!" is a mkv problem solver for most of video editors.

Yu-Gi-Oh!! can deal with mkv files and 10-bit video stream which video editor like Sony Vegas Pro, Adobe Premiere, and After Effect can not edit, and trans them into a accpectable H.264 mp4 file.

_\* As a reminder, we only support x64 Windows at present._

## How It Works

When you need to solve a mkv problem, select those files in explorer, and drag them into `Yu-Gi-Oh!!.bat`.

You will see a DOS-like console window. Before the window stop popping new lines of messages, `Yu-Gi-Oh!!` will continue read files, determine it's type, and do what it need to trans them into H.264 mp4 files.

In this section, `Yu-Gi-Oh!!` re-mux files if they are 8-bit H.264 carrying mkv.

If it's 10-bit H.264 or H.265, `Yu-Gi-Oh!!` re-encode those video stream into 8-bit H.264 with minimum quality loss.

## Backend Libs

Yu-Gi-Oh!! use Libs and Tools listed below to reach you need.

- Mediainfo 0.7.79 x64
- libav 11.3 x64

## To-Dos

- Support for x86 Windows
