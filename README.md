# toolkit
my personal toolkit 
bash
```
irm toolkit.bughub.live | iex
```
Or
```bash
iwr -useb https://raw.githubusercontent.com/padsalatushal/toolkit/main/tool.ps1 | iex
```

If you are having TLS 1.2 Issues or You cannot find or resolve host then run with the following command:

```bash
[Net.ServicePointManager]::SecurityProtocol=[Net.SecurityProtocolType]::Tls12;iex(New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/padsalatushal/toolkit/main/tool.ps1')
```
