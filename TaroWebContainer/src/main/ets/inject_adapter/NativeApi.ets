/*
 * Copyright (c) 2022-2023 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import buffer from '@ohos.buffer';
import { taroLogger } from '../utils/Logger'
import { GlobalThis } from '../utils/GlobalThis'
import { as } from '../utils/advancedapi.min';
import { KEY_PREFIX } from '../utils/Storage'
import { BusinessError } from '@ohos.base';
import { taroStorage } from './TaroStorage';
import { ClassInstanceApi, CallInstanceParam } from '../utils/ClassInstanceUtil';

export interface StorageStatus {
  done: boolean; // 操作是否完成
  data: string|number|boolean|Uint8Array;
  errorMsg: string;
}

class NativeApiConfig {
  public fileManager: ESObject
  private static INSTANCE: NativeApiConfig
  public static getInstance(){
    if (!NativeApiConfig.INSTANCE){
      NativeApiConfig.INSTANCE = new NativeApiConfig()
    }
    return NativeApiConfig.INSTANCE
  }
  // public storageStatusMap: Map<string, StorageStatus>

  constructor() {
    // this.networkTaskMap = new Map()
    // this.networkTaskID = 0
    // this.innerAudioContextMap = new Map()
    // this.innerAudioContextId = 0
    // this.storageStatusMap = new Map()
    // this.storageStatusMap = new Map()
  }
}

export class NativeApi {
  private indexHtmlPath: string
  private classInstanceApi: ClassInstanceApi
  constructor(indexHtmlPath: string) {
    this.indexHtmlPath = indexHtmlPath
    this.classInstanceApi  = new ClassInstanceApi()
  }

  nativeObj: ESObject =  {
    getWindowInfo: as['getWindowInfo'],
    getSystemInfoSync: as['getSystemInfoSync'],
    getDeviceInfo: as['getDeviceInfo'],
    getSystemSetting: as['getSystemSetting'],
    getAppBaseInfo: as['getAppBaseInfo'],
    getAppAuthorizeSetting: as['getAppAuthorizeSetting'],

    saveImageToPhotosAlbum: (options: ESObject) => {
      as.saveImageToPhotosAlbum(options)
    },

    downloadFile(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$downloadFile`)
      as.downloadFile(options)
    },
    
    getVideoInfo(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getVideoInfo`)
      return as.getVideoInfo(options)
    },

    openAppAuthorizeSetting(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$openAppAuthorizeSetting`)
      as.openAppAuthorizeSetting(options)
    },

    startAccelerometer(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$startAccelerometer`)
      as.startAccelerometer(options)
    },

    stopAccelerometer(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$stopAccelerometer`)
      as.stopAccelerometer(options)
    },

    onAccelerometerChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onAccelerometerChange`)
      as.onAccelerometerChange(options)
    },

    offAccelerometerChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offAccelerometerChange`)
      as.offAccelerometerChange(options)
    },

    startCompass(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$startCompass`)
      as.startCompass(options)
    },

    stopCompass(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$stopCompass`)
      as.stopCompass(options)
    },

    onCompassChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onCompassChange`)
      as.onCompassChange(options)
    },

    offCompassChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offCompassChange`)
      as.offCompassChange(options)
    },

    startGyroscope(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$startGyroscope`)
      as.startGyroscope(options)
    },

    stopGyroscope(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$stopGyroscope`)
      as.stopGyroscope(options)
    },

    onGyroscopeChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onGyroscopeChange`)
      as.onGyroscopeChange(options)
    },

    getImageInfo(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getImageInfo`)
      return as.getImageInfo(options)

    },

    getLocation(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getLocation`)
      return as.getLocation(options)
    },

    openDocument(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$openDocument`)
      return as.openDocument(options)
    },

    login(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$login`)
      return as.login(options)
    },

    getUserInfo(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getUserInfo`)
      return as.getUserInfo(options)
    },

    setKeepScreenOn(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$setKeepScreenOn`)
      return as.setKeepScreenOn(options)
    },

    setScreenBrightness(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$setScreenBrightness`)
      return as.setScreenBrightness(options)
    },

    getScreenBrightness(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getScreenBrightness`)
      return as.getScreenBrightness(options)
    },

    //回调监听
    onUserCaptureScreen(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onUserCaptureScreen`)
      return as.onUserCaptureScreen(options)
    },

    offUserCaptureScreen(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offUserCaptureScreen`)
      return as.offUserCaptureScreen(options)
    },

    onLocationChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onLocationChange`)
      return as.onLocationChange(options)
    },

    offLocationChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offLocationChange`)
      return as.offLocationChange(options)
    },

    hideKeyboard(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$hideKeyboard`)
      return as.hideKeyboard(options)
    },

    onKeyboardHeightChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onKeyboardHeightChange`)
      return as.onKeyboardHeightChange(options)
    },

    offKeyboardHeightChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offKeyboardHeightChange`)
      return as.offKeyboardHeightChange(options)
    },

    makePhoneCall(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$makePhoneCall`)
      return as.makePhoneCall(options)
    },

    getSavedFileInfo(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getSavedFileInfo`)
      return as.getSavedFileInfo(options)
    },

    getSavedFileList(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getSavedFileList`)
      return as.getSavedFileList(options)
    },

    removeSavedFile(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$removeSavedFile`)
      return as.removeSavedFile(options)
    },

    addPhoneContact(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$addPhoneContact`)
      return as.addPhoneContact(options)
    },

    scanCode(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$scanCode`)
      return as.scanCode(options)
    },

    vibrateShort(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$vibrateShort`)
      return as.vibrateShort(options)
    },

    vibrateLong(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$vibrateLong`)
      return as.vibrateLong(options)
    },

    callInstance: (options: CallInstanceParam) =>  {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$callInstance`)
      return this.classInstanceApi.callInstance(options)
    },

    callInstanceAsync: (options: CallInstanceParam) =>  {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$callInstanceAsync`)
      this.classInstanceApi.callInstanceAsync(options)
    },

    createInstance: (options: ESObject) =>  {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$createInstance`)
      return this.classInstanceApi.createInstance(options)
    },

    syncAndReleaseInstance: (options: CallInstanceParam) =>  {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$syncAndReleaseInstance`)
      this.classInstanceApi.syncAndReleaseInstance(options)
    },

    // NativeFileSystemManager
    getFileManager(options: ESObject): ESObject {
      NativeApiConfig.getInstance().fileManager = as.getFileSystemManager()
    },
    saveFile(options: ESObject): ESObject {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$access`)
      return as.saveFile(options)
    },

    access(options: ESObject): ESObject {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$access`)
      return NativeApiConfig.getInstance().fileManager.access(options)
    },

    getFileInfo(options: ESObject): ESObject {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getFileInfo`)
      return NativeApiConfig.getInstance().fileManager.getFileInfo(options)
    },

    readFile(options: ESObject): ESObject {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$readFile`)
      options = options || {}
      return NativeApiConfig.getInstance().fileManager.readFile({
        filePath: options.filePath,
        encoding: options.encoding,
        position: options.position,
        length: options.length,
        success: (res: ESObject) => {
          const result: ESObject = {
            result: res.data,
            bufBase64: (res?.data instanceof ArrayBuffer) ? buffer.from(res.data).toString('base64') : undefined,
          }
          options.success && options.success(result)
        },
        fail: options.fail,
      })
    },

    readFileSync(options: ESObject): ESObject {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$readFileSync`)
      options = options || {}
      try {
        const data: Object = NativeApiConfig.getInstance().fileManager.readFileSync(
          options.filePath,
          options.encoding,
          options.position,
          options.length
        )
        return {
          result: data,
          bufBase64: (data instanceof ArrayBuffer) ? buffer.from(data).toString('base64') : undefined,
        }
      } catch (err) {
        return {
          error: `${err}` || `readFileSync:fail`
        }
      }
    },

    closeBLEConnection(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$closeBLEConnection`)
      return as.closeBLEConnection(options)
    },

    createBLEConnection(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$createBLEConnection`)
      return as.createBLEConnection(options)
    },

    getBLEDeviceCharacteristics(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getBLEDeviceCharacteristics`)
      return as.getBLEDeviceCharacteristics(options)
    },

    getBLEDeviceRSSI(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getBLEDeviceRSSI`)
      return as.getBLEDeviceRSSI(options)
    },

    getBLEDeviceServices(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getBLEDeviceServices`)
      return as.getBLEDeviceServices(options)
    },

    notifyBLECharacteristicValueChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$notifyBLECharacteristicValueChange`)
      return as.notifyBLECharacteristicValueChange(options)
    },

    onBLECharacteristicValueChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onBLECharacteristicValueChange`)
      return as.onBLECharacteristicValueChange(options)
    },

    onBLEConnectionStateChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onBLEConnectionStateChange`)
      return as.onBLEConnectionStateChange(options)
    },

    readBLECharacteristicValue(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$readBLECharacteristicValue`)
      return as.readBLECharacteristicValue(options)
    },

    setBLEMTU(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$setBLEMTU`)
      return as.setBLEMTU(options)
    },

    writeBLECharacteristicValue(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$writeBLECharacteristicValue`)
      return as.writeBLECharacteristicValue(options)
    },

    closeBluetoothAdapter(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$closeBluetoothAdapter`)
      return as.closeBluetoothAdapter(options)
    },

    getBluetoothAdapterState(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getBluetoothAdapterState`)
      return as.getBluetoothAdapterState(options)
    },

    getBluetoothDevices(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getBluetoothDevices`)
      return as.getBluetoothDevices(options)
    },

    getConnectedBluetoothDevices(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$getConnectedBluetoothDevices`)
      return as.getConnectedBluetoothDevices(options)
    },

    offBluetoothAdapterStateChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offBluetoothAdapterStateChange`)
      return as.offBluetoothAdapterStateChange(options)
    },

    offBluetoothDeviceFound(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$offBluetoothDeviceFound`)
      return as.offBluetoothDeviceFound(options)
    },

    onBluetoothAdapterStateChange(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onBluetoothAdapterStateChange`)
      return as.onBluetoothAdapterStateChange(options)
    },

    onBluetoothDeviceFound(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$onBluetoothDeviceFound`)
      return as.onBluetoothDeviceFound(options)
    },

    openBluetoothAdapter(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$openBluetoothAdapter`)
      return as.openBluetoothAdapter(options)
    },

    startBluetoothDevicesDiscovery(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$startBluetoothDevicesDiscovery`)
      return as.startBluetoothDevicesDiscovery(options)
    },

    stopBluetoothDevicesDiscovery(options: ESObject): void {
      taroLogger.debug('JsBridgeNativeApi', `NativeApi$stopBluetoothDevicesDiscovery`)
      return as.stopBluetoothDevicesDiscovery(options)
    },

    // data sharing
    // getExecStatus(options: ESObject): ESObject {
    //   taroLogger.debug('JsBridgeNativeApi', `NativeApi$getExecStatus`)
    //   const map = NativeApiConfig.getInstance().storageStatusMap
    //   const mkey = options.method +'$'+ options.key
    //   if ( !map.has(mkey) ) {
    //     return { done: false, data: '', errorMsg: '' }
    //   } else {
    //     const res = map.get(mkey)
    //     map.delete(mkey)
    //     return res
    //   }
    // },

    setStorage: (options: ESObject) => {
      taroStorage.set(options)
    },

    removeStorage: (options: ESObject) => {
      taroStorage.remove(options)
    },

    getStorage: (options: ESObject) => {
      taroLogger.debug('taro_storage', 'getStorage({key: %{public}s}) from jsbridge', options?.key)
      taroStorage.get(options)
    },

    getStorageSync: (options: ESObject) => {
      taroLogger.debug('taro_storage', 'getStorageSync({key: %{public}s}) from jsbridge', options?.key)
      return taroStorage.getByPromise(options)
    },

    getStorageInfo: (options: ESObject) => {
      taroStorage.getInfo(options)
    },

    clearStorage: (options: ESObject) => {
      taroStorage.clear(options)
    },

    batchGetPageShowDataStorage: (options: ESObject) => {
      taroStorage.batchGetPageShowData(this.indexHtmlPath, options)
    },

    updatePageShowDataKeys: (options: ESObject) => {
      taroStorage.updatePageShowDataKeys(this.indexHtmlPath, options)
    }
  }
}


