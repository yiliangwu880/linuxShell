#传递完整数组为参数

#方法1
function UpdateAll()
{
	array_name=("${!1}")
	
	for ((i=0; i<${#array_name[@]}; i=i+1)); do
        echo ${array_name[i]}
    done
}

my_array=(A B C D)
UpdateAll my_array[@]
echo ====end====  


#方法2
a=(1 2 3)
b=(a b c)
function(){
      local a=$1
      local b=$2
      for i in $a
        do
        echo $i
      done
      echo $b
}
funcition "${a[*]}" "${b[*]}"

结果：
1
2
3
a b c

区别：

${a[*]} 是传入一个参数，“1 2 3”
${a[@]} 是传入多个参数，"1","2","3"