FROM openjdk:11
ARG repodir
ARG artifact
ENV ARTIFACT ${artifact}
COPY ${repodir}/${artifact} .
RUN echo  "Deploy artifact: ${repodir}/${artifact}" 
EXPOSE 8080
CMD java -jar $ARTIFACT
