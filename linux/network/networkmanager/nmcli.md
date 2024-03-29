```
nmcli - 控制网络的指令行工具. NetworkManager的指令行客户端

语法
nmcli [option] <action>

参数释义
-a, --ask
    用于交互式目标, 提示需要使用的参数

-c, --colors {yes | no | auto}
    输出是否采用彩色模式
    默认为auto

--complete-args
    为缩写形式的action, 补全为完整名称

-e, --escape {yes | no}
    是否在terse模式中, 使用前置'\'符号, 对':'和'\'字符进行escape
    默认为yes

-f, --fields {field1,field2... | all | common}
    显示指定字段. 列表如下:
        field1,field2... - 显示指定字段. ','之后不能有空格
        all - 显示所有字段
        common - 显示常用字段. 默认值
	
-g, --get-values {field1, field2... | all | common}
    显示指定字段, field使用:分隔, 并且不显示header行
    类似于--terse, --fields的集合

-h, --help
    帮助信息

-m, --mode {tabular | multiline}
    将输出在tabular和multiline之间切换. 两种模式介绍如下:
        tabular - 一行为一条记录, 每列为一条属性. 大多数指令默认使用该格式
        multiline - 每条记录为多行, 每行由属性名称和对应值构成.
        如下指令默认使用该格式:
            nmcli connection show <uuid>
            nmcli device show

-p, --pretty
    使用pretty输出格式(每一列的值对齐, 并显示header, header与内容使用虚线分隔)

-s, --show-secrets
    显示密码相关字段

-t, --terse
    简化版本的输出. 不包含header, 列之间使用:分隔
    使用于script
	
-v, --version
    nmcli的版本信息

-w, --wait <seconds>
    等待指令完成的时间




action说明
nmcli general {status | hostname | permissions | logging}

status	
    显示总体网络状态. 默认action
    结果字段解释:
        STATE -- NetworkManager的状态
        CONNECTIVITY -- STATE字段对应的连接状态
        WIFI-HW -- 代表硬件(hardware)层面的wifi是否开启
        WIFI -- 代表软件层面的wifi是否开启(手动)


hostname [<hostname>]
    查看或设置主机名称


permissions
    各种网络功能操作是否启用认证


logging [level <level>] [domains <domain>...]
    查看或设置log等级和域



nmcli networking [on | off | connectivity]

on | off
    使用NetworkManager启动/关闭所有网络接口


connectivity
    查询NetworkManager的网络连接状态. 结果列表如下:
        none - 没有连接任何网络
        portal - 无法建立完整网络连接
        limited - 已连接到网络, 但无法访问Internet
        full - 已连接网络并且可以访问internet
        unknown - 无法获取网络连接状态



nmcli radio {all | wifi | wwan}

wifi [on | off]
    使用NetworkManager启动/关闭wifi


wwan [on | off]
    使用NetworkManager启动/关闭移动蜂窝网络(如3G/4G/5G)


all [on | off]
    使用NetworkManager启动/关闭上述两种无线网络接口



nmcli connection {show | up | down | modify | add | edit | clone | delete |
monitor | reload | load | import | export}
    每一个ethernet网络配置或wifi ssid即为一个connection, 并且每个时间点只能有一个connection为active状态

show [--active] [--order [+-]<category_01>:<category_02>...]
    显示已配置的连接. 默认action
    active只显示当前活跃网络
    order用于根据指定类型排序, +代表升序(默认值), -代表降序. 排序类型如下:
        active - active status
        name - name field
        type - type field
        path - D-Bus path
        ** 默认为active:name:path


show [--active] [id | uuid | path | apath] <id>
    显示已配置的连接. 默认action
    active只显示当前活跃网络
    id/uuid参数用于根据指定指定连接的详细信息. 列表如下:
        id - 根据指定NAME field显示详细信息
        uuid - 根据指定的UUID field显示详细信息
        path - D-Bus静态配置(deactive)连接路径, 格式为/org/freedesktop/NetworkManager/Settings/<num>或<num>
        apath - D-Bus活跃配置(active)连接路径, 格式为/org/freedesktop/NetworkManager/ActiveConnection/<num>或<num>


up [id | uuid | path] <id> [ifname <ifname>] [ap <ssid>] [passwd-file <file>]
    激活指定的连接


down [id | uuid | path | apath] <id>
    停用指定的连接, 但不阻止connection的自动激活


modify [--temporary] [id | uuid | path] <id> {<option> <value> | [+-]<setting.property> <value>}...
    添加/修改/删除connection的propertys. 形式如下:
        <property> <value>
        直接修改property值, value为""时, 移除property值
        +<property> <item>
        append指定item值到property
        -<property> <item>
        从property中移除指定item值
        -<property> <position>
        从value中移除指定position的值, position由0起始
        ** +-只作用于multi-value property, 如ipv4.dns/ipv4.addresses等
    ** property参考nm-settings(5)


add [save {yes | no}] {<option> <value> | [+-]<setting.property> <value>}...
    使用指定propertys创建新connection. 列表如下:
        save - 是否将配置保存到磁盘. 默认为yes
        setting.property配置规则参考nmcli connection modidy
    构造connection必须包含connection.type. type列表如下:
        ethernet/wifi/wimax/pppoe/gsm
        cdma/infiniband/bluetooth/vlan/bond
        bond-slave/team/team-slave/bridge/bridge-slave
        vpn/olpc-mesh/adsl/tun/ip-tunnel
        macvlan/vxlan/dummy


edit {[id | uuid | path] <id> | [type <type>] [con-name <name>]}
    使用交互式编辑器, 编辑已存在的connection或创建新connection. 列表如下:
        id - 用于编辑已存在connection
        type - 指定新connection的connection.type property
        con-name - 指定新connection的connection.id property


clone [--temporary] [id | uuid | path] <id> <new_name>
    克隆已存在的connection, 并指定克隆后的新名称为new_name
    temporary表示不保存到磁盘


delete [id | uuid | path] <id>...
    根据指定field删除connection


monitor [id | uuid | path] <id>...
    实时监测指定connection的变化


reload
    从磁盘重新加载所有connections


load <filename>...
    加载/重新加载指定connection配置文件


import [--temporary] type <type> file <file>
    导入指定connection.type property的connection配置文件
    目前只支持VPN


export [id | uuid | path] <id> [<file>]
    将指定connection导出到指定文件
    如果file未指定, 则输出到stdout
    目前只支持VPN



nmcli device {status | show | set | connect | reapply | modify | disconnect |
delete | monitor | wifi | lldp}
    显示和管理网络接口设备

status
    显示接口设备状态, 默认action


show [<ifname>]
    显示指定接口的详细信息
    如果接口未指定, 显示所有接口的详细信息


set <ifname> [autoconnect {yes | no}] [managed {yes | no}]
    设置接口的属性. 参数列表如下:
        autoconnect - 是否允许接口自动连接网络


connect <ifname>
    使用指定接口连接到网络, 自动查找适合的connection进行连接


reapply <ifname>
    更新接口的配置, 并使用新配置重新进行连接


disconnect <ifname>
    断开接口连接, 并阻止自动连接到网络


delete <ifname>
    删除接口
    只能删除bonds/bridges/teams等软设备接口, 硬件设备接口无法删除


monitor [<ifname>]
    监视接口变化


wifi [list [--rescan auto | no | yes] [ifname <ifname>] [bssid <bssid>]]
    显示可获得的wifi列表, 从缓存读取
    --rescan代表是否重新扫描AP. 参数如下: 
        auto - 每30s更新缓存. 不指定--rescan参数时的默认值
        no - 不更新缓存
        yes - 强制更新缓存
    通过ifname指定本地无线接口
    通过bssid(mac地址)指定access point


wifi connect {<ssid> | <bssid>} [password <passwd>] [wep-key-type {key | phrase}] [ifname <ifname>] [bssid <bssid>] [name <name>] [private {yes | no}] [hidden {yes |
no}]
    通过热点名称(ssid)或AP mac地址(bssid)连接到wifi, 支持WEP/WPA类型wifi, 通过DHCP获取IP
    当该连接已连接过, 与以下指令同效果: nmcli connection up id <name>
    可选参数列表:
        password - wifi密码(WEP或WPA类型)
        ifname - 指定用于连接的wlan接口
        bssid - 限定连接ap的mac地址
        name - 指定连接的名称, 默认为SSID
        private - 当设置为yes, 只有创建连接的用户可以查看. 默认为no
        hidden - 当连接到隐藏的ssid(不进行广播)时, 需配置为yes


wifi hotspot [ifname <ifname>] [con-name <name>] [ssid <ssid>] [band {a |
bg}] [channel <channel>] [password <passwd>]
    创建一个热点. 参数如下:
        ifname - 创建热点的wlan接口
        con-name - 创建热点的配置文件名称
        ssid - 热点名称
        band - 热点使用的无线频率, a(5GHz)或bg(2.4GHz)
        channel - 热点使用的channel
        password - 热点密码. 未提供时nmcli会自动生成密码, 使用--show-secrets显示该密码
    可使用如下指令关闭热点:
        nmcli connection down [id | uuid]
        nmcli device disconnect <ifname>


wifi rescan [ifname <ifname>] [ssid <ssid>...]
    扫描可获得的wifi


lldp [list [ifname <ifname>]]
    显示通过lldp协议获取的邻居设备信息




示例1- 硬件接口的详情状态
nmcli device

示例2 - 软件层面网络是否启动
nmcli networking

示例3 - wifi是否启动
nmcli radio wifi

示例4 - 实时可获得的wifi
nmcli device wifi list --rescan yes

示例5 - 连接到指定wifi
nmcli device wifi connect <ssid> password <passwd>

示例6 - 添加ethernet连接, 并且手动配置IP
nmcli connection add connection.id <con_name> connection.interface-name <interface_name> connection.type 802-3-ethernet ipv4.method manual ipv4.addresses 192.168.100.100/24 ipv4.gateway 192.168.100.1 ipv4.dns 114.114.114.114
nmcli connection up <con_name>

示例7 - 删除连接配置
nmcli con delete <con_name>

示例8 - 断开接口, 并且不自动连接
nmcli device disconnect <interface_name>

示例9 - 查看connection的详细信息
nmcli connection show <con_name>

示例10 - 查看连接的指定属性
nmcli -g ipv4.address,ipv4.dns connection show <con_name>

示例11 - 查看连接的ipv4相关属性
nmcli -f ipv4 connection show <con_name>
```
<br>
<br>

##### 常用属性列表

|Key Name|Alias|Value Type|Default value|Description|
|---|---|---|---|---|
|connection.autoconnect|autoconnect|boolean|TRUE|当资源具备时, 是否进行自动连接|
|connection.id|con-name|string||易读方式的唯一标识符|
|connection.interface-name|ifname|string||如果为ethernet/wireless等类型, 指定使用的硬件网络接口; 如果为bridge/vpn等类型, 创建软件接口|
|connection.type|type|string||指定连接类型, 如:802-3-ethernet/802-11-wireless/bluetooth/bridge/vpn等|
|connection.uuid||string||连接的全局唯一标识符, 如: 2815492f-7e56-435e-b2e9-246bd7cdc664|
|ipv4.addresses|ip4|array of array of uint32|[]|IPv4地址数组, 每一个IPv4地址由[\<address>, \<prefix>]组成|
|ipv4.dns||array of uint32|[]|DNS IPv4地址数组|
|ipv4.gateway|gw4|string||子网网关. 必须配置ipv4.addresses之后, 当前配置才有意义|
|ipv4.method||string||通过DHCP(auto)或手动配置(manual)|
|ipv4.routes||array of array of uint32|[]|IPv4路由数组, 每一个路由构成[\<subnet_id>, \<prefix>, \<next_hop>, \<metric>]|
|802-3-ethernet.auto-negotiate||boolean|FALSE|是否开启duplex/speed协商, 该参数覆盖duplex/speed配置|
|802-3-ethernet.duplex||string||设置half/full双工模式, 该设置被802-3-ethernet.auto-negotiate覆盖|
|802-3-ethernet.speed||uint32|0|指定网络速度|
|802-11-wireless.band||string||指定使用的无线频率, a(5GHz)/bg(2.4GHz)|
|802-11-wireless.bssid||byte array||使用指定BSSID(mac-address)的ap|
|802-11-wireless.channel||uint32|0|指定channel, 当AP的channel匹配时进行连接. 前提必须配置band|
|802-11-wireless.hidden||boolean|FALSE|当设置为TRUE, 代表目标AP为非广播的隐藏SSID|
|802-11-wireless.mac-address|mac|byte array||当本地wlan设备为指定mac-address时, 才使用该设备进行连接|
|802-11-wireless.rate||uint32|0|指定数据传输速率, 单位为kb/s|
|802-11-wireless.ssid|ssid|byte array||AP的name, 必须设置项|

<br>
<br>
<br>

引用:<br>
[1] man 1 nmcli<br>
[2] man 5 nm-settings<br>
[3] man 7 nmcli-examples<br>
[4] http://www.freedesktop.org/wiki/Software/polkit
<br>
<br>

最后编辑于: 2024-01-15

