FROM alpine/git

RUN git clone https://github.com/BastiJea/fileretriever fileretriever
RUN ssh-keygen 
RUN ssh-copy-id bastibast@192.168.0.200
RUN ssh bastibast@192.168.0.200 'bash -s' < filertriever/fileretriever.sh



