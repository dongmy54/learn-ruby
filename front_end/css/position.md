#### position
> 各种定位

##### relative
> 1. 相对定位（不脱离文档流）
> 2. 相对的是正常文档流的位置
> 3. 可是浮动元素定位
> 4. 可作为其它定位元素的参照物（祖先定位元素） 

```html
<style type="text/css">
  .a,.b,.c{
    width: 100px;
    height: 100px;
  }

  .a{border: 2px solid black;}

  .b{
    border: 2px solid red;
    position: relative;
    top: 20px;
    left: 20px;
  }

  .c{border: 2px solid black}

  .float1{
    float: left;
    width: 200px;
    height: 200px;
    border: 5px solid black;
  }

  .float2{
    float: left;
    width: 200px;
    height: 200px;
    border: 5px solid yellow;
    position: relative;
    top: 20px;
    left: -30px;
  }
</style>

<div class="a">
  A
</div>

<div class="b">
  B
</div>

<div class="c">
  C
</div>

<div class="float1">
  我是浮动1
</div>

<div class="float2">
  我是浮动2
</div>
```

##### absolute
> 1、绝对定位、脱离文档流
> 2、常常配合相对定位实现一些效果

```html
<style type="text/css">
  .parent{
    height: 300px;
    width: 300px;
    background: yellow;
    position: relative;
  }

  .right-window {
    height: 50px;
    width: 50px;
    background: red;
    position: absolute;  /* 这里以父元素（已经定位）为参考对象 */
    right: -50px;
  }
</style>

<div class="parent">
  <div class='right-window'>
  </div>
</div>
```

##### fixed
> 固定定位（和绝对定位唯一区别在于：参照定位的是视口）

```html
<style type="text/css">
  .absolute{
    width: 300px;
    height: 300px;
    line-height: 300px;
    text-align: center;
    border: 5px solid black;
    position: absolute;
    top: 20px;
    left: 20px;
  }

  .fixed{
    width: 300px;
    height: 300px;
    line-height: 300px;
    text-align: center;
    border: 5px solid black;
    position: fixed;    /* 定位参照为视口 */
    top: 20px;
    left: 20px;
  }

  body{
    height: 900px;
    background: blue;
  }
</style>

<body>
  <div class="absolute">
    绝对定位
  </div>
  
  <div class="fixed">
    固定定位
  </div>
</body>
```

##### sticky
> 1. 实现滚动吸附效果
> 2. 定位依据（最近祖先定位元素，否则以视口）
> ps: ie不支持

```html
<style type="text/css">
  .nav{
    height: 100px;
    background: yellow;
  }

  .pos-sticky{
    height: 100px;
    background: pink;
    position: sticky;
    top: 0;  /* 滚动到上边距0时出现吸附 */
  }

  p{height: 200px;}
</style>

<div class="nav">
  我是导航部分  
</div>

<div class="pos-sticky">
  我是导航下部，滚动会粘贴哦
</div>

<div>
  下面是段落内容
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
  <p>文字描述。。。。</p>
</div>
```

#### 应用
> 三级标题列表

```html
<style type="text/css">
  *{
    margin: 0;
    padding: 0;
  }

  #base_page{
    width: 100%;
    height: 9999;
    background: url('http://climg.mukewang.com/59c9f7ce0001839219034033.png') round;
  }

  .nav{
    width: 160px;
    height: auto;
    position: fixed;
    top: 10%;
    left: 0;
    background: rgb(43, 51, 59);
  }

  .nav-list{
    width: 100%;
    height: auto;
    text-align: center;
    line-height: 40px;
    color: #fff;
    border-bottom: 2px solid rgba(255, 255, 255, 0.6);
  }

  .list-2{
    background: #fff;
    display: none;
  }

  .list-2 li{
    position: relative; /* 以二级标题下的 li为定位参考*/
    color: rgb(43, 51, 59);
    border-bottom: 2px dashed rgb(43, 51, 59);
  }

  .list-3{
    width: 160px;
    height: auto;
    background: rgb(43, 51, 59);
    display: none;
    position: absolute;
    left: 160px;
    top: 0;
  }

  .list-3 li{
    color: #fff;
    border-bottom: 2px solid #fff;
  }

  /* 这个是相对的 鼠标指到对应标题 才展示对应子标题 */
  .nav-list:hover .list-2{
    display: block;
  }

  .list-2 li:hover .list-3{
    display: block;
  }

</style>

<body>
  <div id="base_page">
    <div class="nav">
      <div class="nav-list">
        <div>一级标题1</div>
        <ul class="list-2">
          <li>
            <div>二级标题1</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
          <li>
            <div>二级标题2</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
          <li>
            <div>二级标题2</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="nav-list">
        <div>一级标题2</div>
        <ul class="list-2">
          <li>
            <div>二级标题1</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
          <li>
            <div>二级标题2</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
          <li>
            <div>二级标题3</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="nav-list">
        <div>一级标题3</div>
        <ul class="list-2">
          <li>
            <div>二级标题1</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
          <li>
            <div>二级标题2</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
          <li>
            <div>二级标题3</div>
            <ul class="list-3">
              <li>三级标题1</li>
              <li>三级标题2</li>
              <li>三级标题3</li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</body>
```




