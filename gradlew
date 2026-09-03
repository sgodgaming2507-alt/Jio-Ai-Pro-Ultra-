#!/usr/bin/env sh
org_gradle_java_home=""
if [ -n "$JAVA_HOME" ] ; then
    org_gradle_java_home="$JAVA_HOME"
fi

if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/bin/sh" ] ; then
        JAVACMD="$JAVA_HOME/bin/java"
    else
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME" >&2
        exit 1
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || { echo "ERROR: JAVA_HOME is not set and no 'java' command could be found." >&2; exit 1; }
fi

exec "$JAVACMD" -jar "$(dirname "$0")/gradle/wrapper/gradle-wrapper.jar" "$@"
