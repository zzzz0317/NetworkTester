# NetworkTester
监控网络是否连通并通过语音或Telegram报警，仅支持Linux系统

## 使用
1. 复制 `config.ini.env` 为 `config.ini` 并按需求修改

## 运行
`$ python3 NetworkTester.py`  
推荐放入守护程序中运行

## 修改
1. `pingTest.sh` 为测试网络是否连通的脚本，脚本运行返回非0则视为网络故障。
2. Telegram报警为恢复后通知，目前使用自建的Telegram API镜像(不保证稳定性)  
如需修改为官方API请替换`NetworkTester.py` 中 `https://telegramapi.asec01.net/bot` 为 `https://api.telegram.org/bot`
