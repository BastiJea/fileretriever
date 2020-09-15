FROM alpine/git

RUN git clone https://github.com/BastiJea/fileretriever fileretriever
RUN yes y | ssh-keygen -q -t rsa -n ''  -f ~/.ssh/id_rsa.pub
RUN ssh-copy-id bastibast@192.168.0.200
RUN ./filertriever/fileretriever.sh



