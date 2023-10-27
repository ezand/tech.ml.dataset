gpg -ab tech.ml.dataset-0.0.1.pom
gpg -ab tech.ml.dataset-0.0.1.jar
gpg -ab tech.ml.dataset-0.0.1-javadoc.jar
gpg -ab tech.ml.dataset-0.0.1-sources.jar

jar -cvf tech.ml.dataset-0.0.1-bundle.jar tech.ml.dataset-0.0.1.pom tech.ml.dataset-0.0.1.pom.asc tech.ml.dataset-0.0.1.jar tech.ml.dataset-0.0.1.jar.asc tech.ml.dataset-0.0.1-javadoc.jar tech.ml.dataset-0.0.1-javadoc.jar.asc tech.ml.dataset-0.0.1-sources.jar tech.ml.dataset-0.0.1-sources.jar.asc

curl -u uuuuu:ppppp --request POST -F "file=@tech.ml.dataset-0.0.1-bundle.jar" "https://s01.oss.sonatype.org/service/local/staging/bundle_upload"
