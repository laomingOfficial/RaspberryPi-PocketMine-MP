# RaspberryPi-PocketMine-MP
 樹莓派4 PocketMine 我的世界基岩版 服務器

这个Minecraft 基岩版服务器是采用PocketMine PHP服務端。由於PocketMine官方只有x86的版本，而樹莓派ARM版本就需要自行編譯了。

需要準備:
- 樹莓派4
- 64bit 系統 (目前我使用[Raspbian OS 64bit Beta版本](https://downloads.raspberrypi.org/raspios_arm64/images/))

影片教程: [點這裡](https://youtu.be/n6Qk0i7B5So)

安装步骤指令(Command):  
1) git clone https://github.com/laomingOfficial/RaspberryPi-PocketMine-MP
2) chmod +x RaspberryPi-PocketMine-MP/SetupMinecraft.sh
3) ./RaspberryPi-PocketMine-MP/SetupMinecraft.sh

Service服务指令:  
```
# 重载所有修改过的配置文件
sudo systemctl daemon-reload

# 启动服务
sudo systemctl start minecraftpmmp

# 将服务设置为开机启动
sudo systemctl enable minecraftpmmp

# 停止运行服务
sudo systemctl stop minecraftpmmp

# 将服务设置为禁止开机启动
sudo systemctl disable minecraftpmmp

# 检测服务状态
sudo systemctl status minecraftpmmp
```

PocketMine-MP: [https://github.com/pmmp/PocketMine-MP](https://github.com/pmmp/PocketMine-MP)

特別感謝以下這位日本貼文的教學:
https://qiita.com/yoshiki9636/items/ee154278ce388f057629