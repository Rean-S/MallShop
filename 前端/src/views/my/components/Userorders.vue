<template>
  <div class="userorders">
    <el-breadcrumb separator-class="el-icon-arrow-right">
      <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>个人中心</el-breadcrumb-item>
      <el-breadcrumb-item>我的订单</el-breadcrumb-item>
    </el-breadcrumb>

    <div class="logo w100 mt20   f-r f-j-r">
      <el-input placeholder="请输入订单号" style="width:300px" v-model="code" class="search">
        <el-button slot="append" icon="el-icon-search" @click="getData"></el-button>
      </el-input>
    </div>

    <el-tabs v-model="activeName" class="mb20" @tab-click="getData">
      <el-tab-pane label="全部" name=""></el-tab-pane>
      <el-tab-pane label="已下单" name="已下单"></el-tab-pane>
      <el-tab-pane label="已退货" name="已退货"></el-tab-pane>
    </el-tabs>

    <div class="userorders-row w100 p30 mb20" v-for="item in list" :key="item.code">
      <div class="font18 font-grey f-r f-a-c f-j-s mb20">
        <span>订单号: {{item.code}}</span>
        <span class="font15" :class="item.status=='已退货'?'font-default':''">{{item.status}}</span>
      </div>
      <div class="f-r f-a-r f-j-s font14  mb20">
        <div>
          {{item.time}}
        </div>

        <div class="font-grey">
          实付金额： <span class="font28 font-black">{{sumPrice(item.goods)}}</span> 元
        </div>
      </div>
      <div class="goods-right mt20" v-if="item.status=='已下单'">
        <div class="btn font12 font-grey zs" @click="returnGoods(item)">
          退货
        </div>
      </div>
      <div class="t-r font-default zs" @click="item.showDetail = !item.showDetail">{{!item.showDetail?'查看详情':'收起'}}</div>
      <div v-show="item.showDetail">
        <el-divider></el-divider>
        <div class="userorders-goods w100 f-r f-j-s">
          <div class="goods-left">
            <div class="goods-row mb20 f-r f-a-c" v-for="(goods,index) in item.goods" :key="index">
              <img :src="goods.gimg" style="height:80px;width:80px;">
              <div class="ml20 font14 f-c">
                <span style="margin-bottom:15px;">{{goods.gname}}</span>
                <span>¥{{goods.gprice}} x {{goods.num}}</span>
              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

  </div>
</template>

<script>
import * as api from "@/api/api";
import { mapGetters, mapMutations } from "vuex";

export default {
  components: {},
  data() {
    return {
      url: process.env.VUE_APP_BASE_FILE,
      activeName: "",
      code: "",
      list: [],
    };
  },
  created() {},
  mounted() {
    this.getData();
  },
  beforeDestroy() {},
  computed: {
    ...mapGetters(["userinfo"]),

    //计算总价
    sumPrice() {
      return (item) => {
        let sum = 0;
        item.forEach((i) => {
          sum += i.gprice * i.num;
        });
        return sum;
      };
    },
  },
  methods: {
    //获取列表
    getData() {
      api
        .orderslist({
          code: this.code,
          uid: this.userinfo.id,
          offset: 1,
          limit: 9999,
          status: this.activeName == "0" ? "" : this.activeName,
        })
        .then((res) => {
          if (res.code == 200) {
            let arr = {};
            let newarr = [];
            if (res.data.list.length != 0) {
              res.data.list.forEach((item, index) => {
                if (!arr[item.code]) {
                  arr[item.code] = [];
                }
                arr[item.code].push(item);
              });

              Object.keys(arr).forEach((item) => {
                newarr.push({
                  code: item,
                  time: arr[item][0].time,
                  status: arr[item][0].status,
                  uname: arr[item][0].uname,
                  goods: arr[item],
                  showDetail: false,
                });
              });
            }
            this.list = newarr;
            this.total = res.data.total;
          }
        });
    },

    // 退货
    async returnGoods(item) {
      this.$confirm("确认退货吗?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      }).then(async () => {
        for (const key in item.goods) {
          await api.orderssave({
            id: item.goods[key].id,
            status: "已退货",
          });
        }
        this.$message.success("退货成功!");
        this.getData()
      });
    },
  },
};
</script>

<style lang='scss' scoped>
.userorders {
  .logo {
    .search {
      input {
        border-radius: 0px;
      }
      ::v-deep .el-input__inner {
        border-radius: 0px;
      }
      ::v-deep .el-input-group__append {
        background-color: #fff;
        border-radius: 0px;
        button {
          border-radius: 0px;
        }
      }
    }
  }
  .goods-right {
    .btn {
      text-align: center;
      width: 120px;
      height: 30px;
      line-height: 30px;
      color: #757575;
      border: 1px solid#e0e0e0;
    }
  }
  .userorders-row {
    border: 1px solid #e0e0e0;
    .userorders-goods {
      .goods-left {
        width: 700px;
      }
    }
  }
}
.login {
  ::v-deep .el-dialog__body {
    padding: 0 0 20px;
  }
}
>>> .avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
.avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.avatar-uploader-icon {
  border: 1px #c7c7c7 dashed;
  border-radius: 10px;
  font-size: 28px;
  color: #8c939d;
  width: 70px;
  height: 70px;
  line-height: 70px;
  text-align: center;
}
.avatar {
  width: 70px;
  height: 70px;
  display: block;
  object-fit: cover;
}
.noimg {
  width: 70px;
  height: 70px;
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
}
</style>