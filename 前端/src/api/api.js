import request from '@/utils/request'


//商家表-查询单条数据
export function businessone(params) {
  return request({
    url: 'business/getone',
    method: 'post',
    params: params
  })
}

//商家表-查询列表数据
export function businesslist(params) {
  return request({
    url: 'business/getlist',
    method: 'post',
    data: params
  })
}

//商家表-删除
export function businessdel(params) {
  return request({
    url: 'business/del',
    method: 'post',
    params: params
  })
}

//商家表-保存
export function businesssave(params) {
  return request({
    url: 'business/save',
    method: 'post',
    data: params
  })
}


//商品表-查询单条数据
export function goodsone(params) {
  return request({
    url: 'goods/getone',
    method: 'post',
    params: params
  })
}

//商品表-查询列表数据
export function goodslist(params) {
  return request({
    url: 'goods/getlist',
    method: 'post',
    data: params
  })
}

//商品表-删除
export function goodsdel(params) {
  return request({
    url: 'goods/del',
    method: 'post',
    params: params
  })
}

//商品表-保存
export function goodssave(params) {
  return request({
    url: 'goods/save',
    method: 'post',
    data: params
  })
}


//订单表-查询单条数据
export function ordersone(params) {
  return request({
    url: 'orders/getone',
    method: 'post',
    params: params
  })
}

//订单表-查询列表数据
export function orderslist(params) {
  return request({
    url: 'orders/getlist',
    method: 'post',
    data: params
  })
}

//订单表-删除
export function ordersdel(params) {
  return request({
    url: 'orders/del',
    method: 'post',
    params: params
  })
}

//订单表-保存
export function orderssave(params) {
  return request({
    url: 'orders/save',
    method: 'post',
    data: params
  })
}


//用户表-查询单条数据
export function userone(params) {
  return request({
    url: 'user/getone',
    method: 'post',
    params: params
  })
}

//用户表-查询列表数据
export function userlist(params) {
  return request({
    url: 'user/getlist',
    method: 'post',
    data: params
  })
}

//用户表-删除
export function userdel(params) {
  return request({
    url: 'user/del',
    method: 'post',
    params: params
  })
}

//用户表-保存
export function usersave(params) {
  return request({
    url: 'user/save',
    method: 'post',
    data: params
  })
}


