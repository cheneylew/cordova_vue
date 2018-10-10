<template>
  <f7-page ptr @ptr:refresh="loadMore">
    <f7-navbar title="Test" back-link="Back"></f7-navbar>
    <f7-block-title>test</f7-block-title>
    <f7-block strong>
      <p>Here is Test page!</p>
      <p>You can go <f7-link back>back</f7-link>.</p>
      <p>用户名：{{username}}</p>
      <p>用户名输入：<input v-model="username"></p>
      <button @click="takePhoto">获取摄像头</button>
      <img :src="imageSrc" style="width: 100%;height: auto;">
      <f7-progressbar :progress="20"></f7-progressbar>
    </f7-block>
  </f7-page>
</template>

<script>
export default {
  data() {
    return {
      // Framework7 parameters here
      username:"cheneylew",
      imageSrc:"",
    }
  },
  methods:{
    loadMore:function (event, done) {
      const self = this;
      setTimeout(() => {
        done();
      }, 1000);
    },
    takePhoto:function () {
        var that = this;
      navigator.camera.getPicture(function (imageData) {
        var image = document.getElementById('myImage');
        that.imageSrc = "data:image/jpeg;base64," + imageData;
      }, function (msg) {
        alert('Failed because: ' + message);
      }, {
        quality: 50,
        destinationType: Camera.DestinationType.DATA_URL
      });
    }
  }
}
</script>
