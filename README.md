# 說明

### 此專案還需要兩個檔案 - 檔案過大所以上傳至MEGA

1. [jdk17.tar.gz](https://mega.nz/file/F4gGmBjC#TJqBitRWbdWubIB7fRTsCzLQoe0XxkYWWWCKXXc-Be4) - 需要指定版本的JDK

2. [myWeb.jar](https://mega.nz/file/t8AGkDjb#OV5jHhOqXnL8xsQu77aqHeMMds6HdBkiBuzCkp3C25A) - 專案的jar檔

3. Linux環境可以使用MEGA的指令下載
```shell
    # 先安裝工具
    sudo apt install megatools -y

    # 下載 jdk17.tar .gz
    megatools dl 'https://mega.nz/file/F4gGmBjC#TJqBitRWbdWubIB7fRTsCzLQoe0XxkYWWWCKXXc-Be4'

    # 下載  myWeb .jar
    megatools dl 'https://mega.nz/file/t8AGkDjb#OV5jHhOqXnL8xsQu77aqHeMMds6HdBkiBuzCkp3C25A'
```

4. 下載好將Github抓下的EmployeeManagementSystem資料夾內的所有檔案放在 <br> <mark> /usr/local/app </mark>

5. 運行+測試的環境是Windows Subsystem for Linux 2 (WSL2) - Ubuntu-22.04<br>
    以及MAC使用UTM安裝的ubuntu-24.04.2-live-server-amd64版本

6. ~~需要事先在Linux安裝好Docker 以下是目前用到的~~
    * ~~docker-buildx~~
    * ~~docker-compose-v2~~
    * ~~docker.io~~


7. 專案啟動命令
    > sudo docker compose up -d

8. 專案關閉命令
    > sudo docker compose down

---

1. 2025.07.08 新增Docker安裝及鏡像拉取腳本

2. 腳本須以sudo啟動 以下為啟動命令
    > sudo sh install_docker_tools.sh

3. 啟動成功後會出現下列類似畫面<br>
```
    ✔ backend                   Built                                                                        0.0s 
    ✔ Network myWeb             Created                                                                      0.1s 
    ✔ Container mysql           Started                                                                      0.7s 
    ✔ Container myweb-backend   Started                                                                      1.0s 
    ✔ Container myweb-frontend  Started                                                                      1.3s
```

4. 接著使用 <mark>ip addr</mark> 來查看Linux環境的IP

5. 在本機電腦的瀏覽器上使用查詢到的IP 就能瀏覽了

6. 下方是訪問MySQL的指令 密碼是 <mark>321321321</mark> Database是 <mark>restful</mark>

    > mysql -h 剛剛查詢到的IP -P3307 -u root -p
