MYSQL_USER="your_username"
MYSQL_PASS="your_password"
MYSQL_DB="your_database"

# 登录到mysql并获取所有表名（小写），然后将每个表名转换成大写，并执行重命名操作。
mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" "$MYSQL_DB" -sN -e "SHOW TABLES" | while read table; do
    # 将表名改为大写
    UPPERCASE_TABLE=`echo $table | tr '[:lower:]' '[:upper:]'`
    
    # 只有当新旧表名不同时才执行重命名操作
    if [ "$table" != "$UPPERCASE_TABLE" ]; then
        mysql -u"$MYSQL_USER" -p"$MYSQL_PASS" "$MYSQL_DB" -sN -e "RENAME TABLE \`$table\` TO \`$UPPERCASE_TABLE\`"
    fi
done
