#include <iostream>
#include <netdb.h>
#include "stdlib.h"
#include "unistd.h"
#include "string.h"
#include "arpa/inet.h"
using namespace std;
int main() {
    //1.�����׽���
    int fd= socket(AF_INET,SOCK_STREAM,0);
    if (fd==-1){
        perror("socket����ʧ��");
        return -1;
    }

    //2.��IP
    struct sockaddr_in addr;
    addr.sin_family=AF_INET;
    addr.sin_port= htons(8888);
    addr.sin_addr.s_addr=INADDR_ANY;//�Զ����������������IP
    int ret= bind(fd,(sockaddr*) &addr,sizeof (addr));
    if (ret==-1){
        perror("bind����ʧ��");
        return -1;
    }

    //3.���ü���
    ret= listen(fd,128);
    if (ret==-1){
        perror("listen����ʧ��");
        return -1;
    }

    //4.�������ȴ��ͻ�������
    sockaddr_in caddr;
    socklen_t caddrlen = sizeof(caddr);
    int cfd = accept(fd, (sockaddr*)&caddr, &caddrlen);
    if (cfd==-1){
        perror("accept����ʧ��");
        return -1;
    }

    //5.��ӡ�ͻ���Ϣ
    char cip[32];
    cout<<"�ͻ���IP:"<<inet_ntop(AF_INET,&caddr.sin_addr.s_addr,cip, sizeof (cip))<<"�˿ں�:"<<ntohs(caddr.sin_port)<<endl;

    //6.ͨ��
    while (1){
        //��������
        char buffer[1024];
        int len= recv(cfd,buffer, sizeof (buffer),0);
        if (len>0){
            cout<<"�ͻ�˵:"<<buffer<<endl;
            cin>>buffer;
            send(cfd,buffer, strlen(buffer)+1,0);
        } else if (len==0){
            cout<<"�ͻ��˶Ͽ�����"<<endl;
            break;
        } else{
            perror("recvʧ��");
            break;
        }
    }

    //7.�ر��ļ�������
    close(fd);
    close(cfd);
    return 0;
}