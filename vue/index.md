# よく引っかかったこと

## contenteditableの変更イベント取得

参照：[Vue.js contenteditable component](https://codepen.io/supraniti/pen/Lypobx)

`v-on:update`を使う
```javascript
<p contenteditable="true" v-on:update="onUpdate"><p>
```
