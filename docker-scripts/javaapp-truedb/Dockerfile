FROM openjdk:11
ARG repodir
ARG artifact
ARG confname
ENV ARTIFACT ${artifact}
RUN echo "ENV: ARTIFACT=$ARTIFACT"
RUN echo  "Deploy artifact: ${repodir}/${artifact}" 
COPY ${repodir}/${artifact} .
RUN echo "Conf: .conf/application.properties-${confname}"
COPY ./conf/application.properties-${confname} application.properties
EXPOSE 8080
CMD java -jar $ARTIFACT
