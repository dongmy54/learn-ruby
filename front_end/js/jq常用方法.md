#### 常用方法

##### 取值
1. `$(this).val();` 取值
2. `$(this).html();` 取html
3. `$(this).text();` 取/存标签文本内容
4. `$("#property_submit").parent().parent()[0].id;` 获取id值
5. `$("#create_project").attr('action');` 取属性（`"/ancient/projects/91"`）
6. `$("#create_project").prop('action');` 和上类似(`"http://localhost:3000/ancient/projects/91"`)
7. `$(".checkbox-win-product-11201").prop('checked', true)` 勾选和 获取checked值都用prop
8. `$("#session_type").val('1')` select选项可选中值

##### 判断
```js
// isEmpty 是否为空
isEmpty("ds")
// false
isEmpty(" ")
// true

typeof('sdf');
// 'string'

// 是否包含类
$("#project_purchase_department_name").hasClass('hu');
// false

// 是否选中
$('input[name=all_check_box').is(':checked');
```

#### 阻止默认行为
```js
$(".form_submit").click(function(e){
  e.preventDefault();
  // e.stopPropagation(); 只有在内层元素上使用才有效果
}
```

##### jquery操作新增元素
```js
// 方法一：委托
$("body").delegate('.select_confirm','click',function(){
  var code = $(this).attr("data-code");
  $("[id$=_budget_code]").val(code);
  dailog_box.close();
})

// 方法二：用on
$("#post-list").on('change', ".toggle_flag",function(){})
```

##### 解析
```js
// 解析
$.parseJSON('{"json_class": "Department"}');
// {json_class: "Department"}
```

#### 触发改变
```js
$("#xj_department_id").change();
$("[name='bid_project[is_sap_mro]']:checked").change(); // 一定要选中后 change才有效
```

#### 触发事件
```js
$(".is_warn").trigger('change');
```

##### appendTo
> 内容插入(与append功能相同，区别在于先有内容还是选择器）
```js
$( "<p>Test</p>" ).appendTo( ".inner" );
```

##### 去除字符串首尾空格
```js
"   sdafs 我 是 adf dsfs  ".replace(/^\s*|\s*$/g,"");
// "sdafs 我 是 adf dsfs"
```

##### 循环
```js
// 合同确认时间倒计时
  $(".contract_confirm_expired_time").each(function(){
    console.log(1); // 里面用 $(this)获取当前元素
  });

// each循环
$.each([ 52, 97 ], function( index, value ) {
  alert( index + ": " + value );
});

// forEach
var data = [{'id': 1,'name': 'zs'},{'id': 2, 'name': 'hubar'}]
data.forEach(function(element){
  console.log(element.id + element.name);
})
```

##### 数组去重
```js
arr = [1,3,5,1]
new_arr = arr.filter(function(elem, index, self){
  return index === self.indexOf(elem) // indexOf返回数组中匹配元素的第一个索引
})
new_arr
```

##### 数据缓存
```js
$( "body" ).data( "foo", 52 );
$( "body" ).data( "bar", { isManual: true } );
$( "body" ).data( { baz: [ 1, 2, 3 ] } );
$( "body" ).data(); // { foo: 52, bar: { isManual: true }, baz: [ 1, 2, 3 ] }
```

##### 加载页面
```js
window.location.href = "/companies/new?category_ids=" + ids.join(','); //# 重定向
location.reload(); // 刷线当前页面
```

##### 加载html替换原html
```js
$(".logo_box").load('/');
```

##### 读取cookie
```js
document.cookie
```

#### localStorage
> 本地存储
```js
localStorage.setItem("name","Amy")
localStorage.name
// 'Amy'
```

#### jquery 父文档值
```js
$("#anchor", window.parent.document).val("xj_remark");
```

##### 下拉框值改变
```html
<p>Car:
  <select class="field" name="cars">
    <option value="volvo">Volvo</option>
    <option value="saab">Saab</option>
    <option value="fiat">Fiat</option>
    <option value="audi">Audi</option>
  </select>
</p>

<script type="text/javascript">
$(document).ready(function(){
  $(".field").change(function(){
    $(this).css("background-color","#FFFFCC");
  });
});
```