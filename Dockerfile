FROM ruby:2.3.1

MAINTAINER Łukasz Fuszara

RUN mkdir /artemo
WORKDIR /artemo

RUN git clone https://gitlab.com/opalizoid/ArtEmo_v3.git
WORKDIR /artemo/ArtEmo_v3

RUN gem build artemo.gemspec
RUN gem install artemo-*
RUN echo "Wherefore, O judges, be of good cheer about death, and know of a certainty, that no evil can happen to a good man, either in life or after death. He and his are not neglected by the gods; nor has my own approaching end happened by mere chance. But I see clearly that the time had arrived when it was better for me to die and be released from trouble; wherefore the oracle gave no sign. For which reason, also, I am not angry with my condemners, or with my accusers; they have done me no harm, although they did not mean to do me any good; and for this I may gently blame them." > test.txt  

ENTRYPOINT ["artemo", "test.txt"]

CMD ["bash"]
