FROM kentaojapi/my-pyenv
 
RUN apt-get update && apt-get install -y openssh-server
RUN apt-get install git
RUN mkdir /var/run/sshd
 
RUN mkdir  ~/.ssh \
    touch  ~/.ssh/authorized_keys \
    chmod 600  ~/.ssh/authorized_keys
 
RUN mkdir -p ~/.vim/bundle
RUN git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
RUN git clone git://github.com/kentaojapi/my-vimrc ~/.vimrc

CMD /bin/bash
