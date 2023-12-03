#include <iostream>
#include <netdb.h>
#include "stdlib.h"
#include "unistd.h"
#include "string.h"
#include "arpa/inet.h"
using namespace std;
int main() {
    //1.创建套接字
    int fd= socket(AF_INET,SOCK_STREAM,0);
    if (fd==-1){
        perror("socket创建失败");
        return -1;
    }

    //2.链接服务器
    struct sockaddr_in addr;
    addr.sin_family=AF_INET;
    addr.sin_port= htons(8888);
    //addr.sin_addr.s_addr=inet_pton(AF_INET,"192.168.133.129",&addr.sin_addr.s_addr);
    const char * ip="192.168.133.129";
    addr.sin_addr.s_addr= inet_addr(ip);
    /*hostent* h= gethostbyname(ip);
    memcpy(&addr.sin_addr,h->h_addr,h->h_length);*/
    int ret= connect(fd,(sockaddr*) &addr,sizeof (addr));
    if (ret==-1){
        perror("connect创建失败");
        return -1;
    }

    //3.通信
    while (1){
        //发送数据
        char buffer[1024];
        cin>>buffer;
        send(fd,buffer, strlen(buffer)+1,0);
        memset(buffer,0, sizeof (buffer));
        int len= recv(fd,buffer, sizeof (buffer),0);
        if (len>0){
            cout<<"服务器说:"<<buffer<<endl;
        } else if (len==0){
            cout<<"服务器断开连接"<<endl;
            break;
        } else{
            perror("recv失败");
            break;
        }
        sleep(1);
    }

    //4.关闭文件描述符
    close(fd);
    return 0;
}
