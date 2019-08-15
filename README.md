# NetworkTester
监控网络是否连通并通过语音或Telegram报警，仅支持Linux系统

## 使用
1. 复制 `config.ini.env` 为 `config.ini` 并按需求修改

## 运行
`$ python3 NetworkTester.py`  
推荐放入守护程序中运行

## 修改
1. `pingTest.sh` 为测试网络是否连通的脚本，可修改 `pingTo` - 测试目标地址，`port` - 测试目标端口，`dns` - 解析目标地址使用的dns，脚本运行输出由 `NetworkTester.py` 处理。
2. Telegram报警为恢复后通知，目前使用自建的Telegram API镜像(不保证稳定性)  
如需修改为官方API请替换`NetworkTester.py` 中 `https://telegramapi.asec01.net/bot` 为 `https://api.telegram.org/bot`

## 顺便说一下
* 本项目使用了 [cloverstd/tcping](https://github.com/cloverstd/tcping)，一个使用Golang编写的TCP端口连接测试工具  
