This AviSynth script may be useful if you don't have a hardware waveform monitor.
It works in a similar way. It analyzes the video in real time during capture and allows you to more precisely adjust input levels of the capture card.
With proper monitoring it is easier to stay in 'legal' limits, to manage overshoots, to adjust hue, saturation, etc.

Important points:
- the script is designed to be used in conjunction with [VirtualDub](https://github.com/v0lt/VirtualDub2) (other software may also work too, but this requires verification)
- the script works with SD 720x576 YUY2 video (although any other resolution and format should technically work too)
- the script supports AviSynth 2.6.0 for use on Windows XP capture machines
- the script modifies only the preview image. The captured video is saved to a file as-is, unmodified.

### Installation
Requirements:
- [ffdshow](https://ffdshow-tryout.sourceforge.net/download.php)
- [AviSynth+](https://github.com/AviSynth/AviSynthPlus) or [AviSynth 2.6.0](https://sourceforge.net/projects/avisynth2/files/AviSynth%202.6/AviSynth%202.6.0/)


Configure the ffdshow video decoder as follows:

<img width="554" height="473" alt="image" src="https://github.com/user-attachments/assets/fe0eebe4-8b7b-4623-a3f9-5134f0edf7c4" />
<img width="554" height="473" alt="image" src="https://github.com/user-attachments/assets/e2fb11f2-bb33-4bc3-8e9f-064b1e314993" />
<img width="554" height="473" alt="image" src="https://github.com/user-attachments/assets/a4b7726d-e5e0-4c0b-a57c-3e7509541eab" />
<img width="554" height="473" alt="image" src="https://github.com/user-attachments/assets/60ae88ee-ff0e-49a4-a82a-0d5d277f2805" />

Enable 'Preview (system)' mode in VirtualDub:

<img width="387" height="231" alt="image" src="https://github.com/user-attachments/assets/51b7f8ea-fc5c-4961-8927-fa3db9b6d0f5" />

The capture preview should now look like this:

<img width="744" height="635" alt="image" src="https://github.com/user-attachments/assets/41abc952-e59e-4b1f-9c04-7eed37be382f" />

To quickly toggle the waveform overlay on or off, right-click the ffdshow tray icon
