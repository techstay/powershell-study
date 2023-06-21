function PrintHashTable {
  param($hashtable)
  process {
    '{' + (($hashtable.Keys | ForEach-Object { "${_}=$($hashtable[$_])" }) -join ', ') + '}'
  }

}

# ----------------------------------- 定义哈希表 ------------------------------------

$hash = @{name = 'zhang3'; age = 22 ; favorite = 'computer' }
$ordered = [ordered]@{name = 'li4'; age = 23 ; favorite = 'games' }
PrintHashTable $hash
Write-Output $hash, $ordered

# ----------------------------------- 访问哈希表 ------------------------------------
Write-Output '------- keys ------'
$hash.Keys
Write-Output '------- values ------'
$hash.Values
Write-Output '------- count ------'
$hash.Count
Write-Output '------- name ------'
$hash['name']

# --------------------------------- 添加和删除键值对 -----------------------------------
# 添加键值对的几种方法
$hash['gender'] = 'male'
$ordered.Add('gender', 'male')
$hash += @{'comefrom' = 'america' }
Write-Output '------- print hash ------'
PrintHashTable $hash

# 删除
$ordered.Remove('gender')
PrintHashTable $ordered

# ----------------------------------- 哈希表排序 ------------------------------------
# 哈希表的存储顺序无法更改，但是可以在遍历的时候按顺序显示
Write-Output '--------- show in order --------'
$hash.GetEnumerator() | Sort-Object -Property Key
Write-Output '--------- show in reverse --------'
$hash.GetEnumerator() | Sort-Object -Property value -Descending

# --------------------------------- 从字符串创建哈希表 ----------------------------------
Write-Output '------- convert from string ------'
$string_data = @'
username=techstay
password=123456
nickname=lazydog
'@

PrintHashTable (ConvertFrom-StringData $string_data)
