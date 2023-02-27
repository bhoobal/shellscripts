#  SED replace properties

### 
-i option not supported in mac otherwise 
sed -e 's/sdkman_auto_answer=.*/sdkman_auto_answer=true/' .sdkman/etc/config

sed -i "/property.name=/ s/=.*/=newValue/" yourFile.properties

###
