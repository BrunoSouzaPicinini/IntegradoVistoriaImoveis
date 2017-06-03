// 
// Created by the DataSnap proxy generator.
// 03/06/2017 18:43:21
// 

function DSAdmin(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("DSAdmin",connectionInfo);

  /*
   * @return result - Type on server: string
   */
  this.GetPlatformName = function() {
    var returnObject = this.executor.executeMethod('GetPlatformName', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetPlatformName_URL = function() {
    return this.executor.getMethodURL("GetPlatformName", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: Boolean
   */
  this.ClearResources = function() {
    var returnObject = this.executor.executeMethod('ClearResources', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ClearResources_URL = function() {
    return this.executor.getMethodURL("ClearResources", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.FindPackages = function() {
    var returnObject = this.executor.executeMethod('FindPackages', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FindPackages_URL = function() {
    return this.executor.getMethodURL("FindPackages", "GET", [], arguments[0])[0];
  };

  /*
   * @param PackageName [in] - Type on server: string
   * @param ClassPattern [in] - Type on server: string
   * @return result - Type on server: TDBXReader
   */
  this.FindClasses = function(PackageName, ClassPattern) {
    var returnObject = this.executor.executeMethod('FindClasses', "GET", [PackageName, ClassPattern], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.PackageName = PackageName;
        resultObject.ClassPattern = ClassPattern;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FindClasses_URL = function(PackageName, ClassPattern) {
    return this.executor.getMethodURL("FindClasses", "GET", [PackageName, ClassPattern], arguments[2])[0];
  };

  /*
   * @param PackageName [in] - Type on server: string
   * @param ClassPattern [in] - Type on server: string
   * @param MethodPattern [in] - Type on server: string
   * @return result - Type on server: TDBXReader
   */
  this.FindMethods = function(PackageName, ClassPattern, MethodPattern) {
    var returnObject = this.executor.executeMethod('FindMethods', "GET", [PackageName, ClassPattern, MethodPattern], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.PackageName = PackageName;
        resultObject.ClassPattern = ClassPattern;
        resultObject.MethodPattern = MethodPattern;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.FindMethods_URL = function(PackageName, ClassPattern, MethodPattern) {
    return this.executor.getMethodURL("FindMethods", "GET", [PackageName, ClassPattern, MethodPattern], arguments[3])[0];
  };

  /*
   * @param ClassReader [in] - Type on server: TDBXReader
   */
  this.CreateServerClasses = function(ClassReader) {
    this.executor.executeMethod('"CreateServerClasses"', "POST", [ClassReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param ClassReader [in] - Type on server: TDBXReader
   */
  this.DropServerClasses = function(ClassReader) {
    this.executor.executeMethod('"DropServerClasses"', "POST", [ClassReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param MethodReader [in] - Type on server: TDBXReader
   */
  this.CreateServerMethods = function(MethodReader) {
    this.executor.executeMethod('"CreateServerMethods"', "POST", [MethodReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @param MethodReader [in] - Type on server: TDBXReader
   */
  this.DropServerMethods = function(MethodReader) {
    this.executor.executeMethod('"DropServerMethods"', "POST", [MethodReader], arguments[1], false, arguments[2], arguments[3]);
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetServerClasses = function() {
    var returnObject = this.executor.executeMethod('GetServerClasses', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetServerClasses_URL = function() {
    return this.executor.getMethodURL("GetServerClasses", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TJSONArray
   */
  this.ListClasses = function() {
    var returnObject = this.executor.executeMethod('ListClasses', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ListClasses_URL = function() {
    return this.executor.getMethodURL("ListClasses", "GET", [], arguments[0])[0];
  };

  /*
   * @param ClassName [in] - Type on server: string
   * @return result - Type on server: TJSONObject
   */
  this.DescribeClass = function(ClassName) {
    var returnObject = this.executor.executeMethod('DescribeClass', "GET", [ClassName], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClassName = ClassName;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.DescribeClass_URL = function(ClassName) {
    return this.executor.getMethodURL("DescribeClass", "GET", [ClassName], arguments[1])[0];
  };

  /*
   * @param ClassName [in] - Type on server: string
   * @return result - Type on server: TJSONArray
   */
  this.ListMethods = function(ClassName) {
    var returnObject = this.executor.executeMethod('ListMethods', "GET", [ClassName], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClassName = ClassName;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ListMethods_URL = function(ClassName) {
    return this.executor.getMethodURL("ListMethods", "GET", [ClassName], arguments[1])[0];
  };

  /*
   * @param ServerMethodName [in] - Type on server: string
   * @return result - Type on server: TJSONObject
   */
  this.DescribeMethod = function(ServerMethodName) {
    var returnObject = this.executor.executeMethod('DescribeMethod', "GET", [ServerMethodName], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ServerMethodName = ServerMethodName;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.DescribeMethod_URL = function(ServerMethodName) {
    return this.executor.getMethodURL("DescribeMethod", "GET", [ServerMethodName], arguments[1])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetServerMethods = function() {
    var returnObject = this.executor.executeMethod('GetServerMethods', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetServerMethods_URL = function() {
    return this.executor.getMethodURL("GetServerMethods", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetServerMethodParameters = function() {
    var returnObject = this.executor.executeMethod('GetServerMethodParameters', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetServerMethodParameters_URL = function() {
    return this.executor.getMethodURL("GetServerMethodParameters", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: TDBXReader
   */
  this.GetDatabaseConnectionProperties = function() {
    var returnObject = this.executor.executeMethod('GetDatabaseConnectionProperties', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetDatabaseConnectionProperties_URL = function() {
    return this.executor.getMethodURL("GetDatabaseConnectionProperties", "GET", [], arguments[0])[0];
  };

  /*
   * @return result - Type on server: string
   */
  this.GetDSServerName = function() {
    var returnObject = this.executor.executeMethod('GetDSServerName', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.GetDSServerName_URL = function() {
    return this.executor.getMethodURL("GetDSServerName", "GET", [], arguments[0])[0];
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param ClientManagerId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param ChannelNames [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @param ResponseData [in] - Type on server: TJSONValue
   * @return result - Type on server: TJSONValue
   */
  this.ConsumeClientChannel = function(ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, ResponseData) {
    var returnObject = this.executor.executeMethod('"ConsumeClientChannel"', "POST", [ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, ResponseData], arguments[6], true, arguments[7], arguments[8]);
    if (arguments[6] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.ClientManagerId = ClientManagerId;
        resultObject.CallbackId = CallbackId;
        resultObject.ChannelNames = ChannelNames;
        resultObject.SecurityToken = SecurityToken;
        resultObject.ResponseData = ResponseData;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param ClientManagerId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param ChannelNames [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @param Timeout [in] - Type on server: Integer
   * @param ResponseData [in] - Type on server: TJSONValue
   * @return result - Type on server: TJSONValue
   */
  this.ConsumeClientChannelTimeout = function(ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, Timeout, ResponseData) {
    var returnObject = this.executor.executeMethod('"ConsumeClientChannelTimeout"', "POST", [ChannelName, ClientManagerId, CallbackId, ChannelNames, SecurityToken, Timeout, ResponseData], arguments[7], true, arguments[8], arguments[9]);
    if (arguments[7] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.ClientManagerId = ClientManagerId;
        resultObject.CallbackId = CallbackId;
        resultObject.ChannelNames = ChannelNames;
        resultObject.SecurityToken = SecurityToken;
        resultObject.Timeout = Timeout;
        resultObject.ResponseData = ResponseData;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ChannelId [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.CloseClientChannel = function(ChannelId, SecurityToken) {
    var returnObject = this.executor.executeMethod('CloseClientChannel', "GET", [ChannelId, SecurityToken], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelId = ChannelId;
        resultObject.SecurityToken = SecurityToken;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.CloseClientChannel_URL = function(ChannelId, SecurityToken) {
    return this.executor.getMethodURL("CloseClientChannel", "GET", [ChannelId, SecurityToken], arguments[2])[0];
  };

  /*
   * @param ChannelId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param ChannelNames [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.RegisterClientCallbackServer = function(ChannelId, CallbackId, ChannelNames, SecurityToken) {
    var returnObject = this.executor.executeMethod('RegisterClientCallbackServer', "GET", [ChannelId, CallbackId, ChannelNames, SecurityToken], arguments[4], true, arguments[5], arguments[6]);
    if (arguments[4] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelId = ChannelId;
        resultObject.CallbackId = CallbackId;
        resultObject.ChannelNames = ChannelNames;
        resultObject.SecurityToken = SecurityToken;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.RegisterClientCallbackServer_URL = function(ChannelId, CallbackId, ChannelNames, SecurityToken) {
    return this.executor.getMethodURL("RegisterClientCallbackServer", "GET", [ChannelId, CallbackId, ChannelNames, SecurityToken], arguments[4])[0];
  };

  /*
   * @param ChannelId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param SecurityToken [in] - Type on server: string
   * @return result - Type on server: Boolean
   */
  this.UnregisterClientCallback = function(ChannelId, CallbackId, SecurityToken) {
    var returnObject = this.executor.executeMethod('UnregisterClientCallback', "GET", [ChannelId, CallbackId, SecurityToken], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelId = ChannelId;
        resultObject.CallbackId = CallbackId;
        resultObject.SecurityToken = SecurityToken;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.UnregisterClientCallback_URL = function(ChannelId, CallbackId, SecurityToken) {
    return this.executor.getMethodURL("UnregisterClientCallback", "GET", [ChannelId, CallbackId, SecurityToken], arguments[3])[0];
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param Msg [in] - Type on server: TJSONValue
   * @return result - Type on server: Boolean
   */
  this.BroadcastToChannel = function(ChannelName, Msg) {
    var returnObject = this.executor.executeMethod('"BroadcastToChannel"', "POST", [ChannelName, Msg], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.Msg = Msg;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ChannelName [in] - Type on server: string
   * @param Msg [in] - Type on server: TObject
   * @return result - Type on server: Boolean
   */
  this.BroadcastObjectToChannel = function(ChannelName, Msg) {
    var returnObject = this.executor.executeMethod('"BroadcastObjectToChannel"', "POST", [ChannelName, Msg], arguments[2], true, arguments[3], arguments[4]);
    if (arguments[2] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ChannelName = ChannelName;
        resultObject.Msg = Msg;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ClientId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param Msg [in] - Type on server: TJSONValue
   * @param Response [out] - Type on server: TJSONValue
   * @return result - Type on server: Boolean
   */
  this.NotifyCallback = function(ClientId, CallbackId, Msg) {
    var returnObject = this.executor.executeMethod('"NotifyCallback"', "POST", [ClientId, CallbackId, Msg], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClientId = ClientId;
        resultObject.CallbackId = CallbackId;
        resultObject.Msg = Msg;
        resultObject.Response = resultArray[0];
        resultObject.result = resultArray[1];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  /*
   * @param ClientId [in] - Type on server: string
   * @param CallbackId [in] - Type on server: string
   * @param Msg [in] - Type on server: TObject
   * @param Response [out] - Type on server: TObject
   * @return result - Type on server: Boolean
   */
  this.NotifyObject = function(ClientId, CallbackId, Msg) {
    var returnObject = this.executor.executeMethod('"NotifyObject"', "POST", [ClientId, CallbackId, Msg], arguments[3], true, arguments[4], arguments[5]);
    if (arguments[3] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.ClientId = ClientId;
        resultObject.CallbackId = CallbackId;
        resultObject.Msg = Msg;
        resultObject.Response = resultArray[0];
        resultObject.result = resultArray[1];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };
}

function TsmTeste(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TsmTeste",connectionInfo);

  /*
   * @param Value [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.EchoString = function(Value) {
    var returnObject = this.executor.executeMethod('EchoString', "GET", [Value], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Value = Value;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.EchoString_URL = function(Value) {
    return this.executor.getMethodURL("EchoString", "GET", [Value], arguments[1])[0];
  };

  /*
   * @param Value [in] - Type on server: string
   * @return result - Type on server: string
   */
  this.ReverseString = function(Value) {
    var returnObject = this.executor.executeMethod('ReverseString', "GET", [Value], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.Value = Value;
        resultObject.result = resultArray[0];
        return resultObject;
      }
      return returnObject;
    }
  };

  this.ReverseString_URL = function(Value) {
    return this.executor.getMethodURL("ReverseString", "GET", [Value], arguments[1])[0];
  };
}

function TsmPessoa(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TsmPessoa",connectionInfo);

  /*
   * @param AIdPessoa [in] - Type on server: Integer
   * @return result - Type on server: TJSONValue
   */
  this.getPessoa = function(AIdPessoa) {
    var returnObject = this.executor.executeMethod('getPessoa', "GET", [AIdPessoa], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.AIdPessoa = AIdPessoa;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.getPessoa_URL = function(AIdPessoa) {
    return this.executor.getMethodURL("getPessoa", "GET", [AIdPessoa], arguments[1])[0];
  };

  /*
   * @return result - Type on server: TJSONArray
   */
  this.getAllPessoa = function() {
    var returnObject = this.executor.executeMethod('getAllPessoa', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.getAllPessoa_URL = function() {
    return this.executor.getMethodURL("getAllPessoa", "GET", [], arguments[0])[0];
  };

  /*
   * @param ANome [in] - Type on server: string
   */
  this.updatePessoa = function(ANome) {
    this.executor.executeMethod('Pessoa', "POST", [ANome], arguments[1], false, arguments[2], arguments[3]);
  };

  this.updatePessoa_URL = function(ANome) {
    return this.executor.getMethodURL("Pessoa", "POST", [ANome], arguments[1])[0];
  };

  /*
   * @param ANome [in] - Type on server: string
   * @param AIdPessoa [in] - Type on server: Integer
   */
  this.acceptPessoa = function(ANome, AIdPessoa) {
    this.executor.executeMethod('Pessoa', "PUT", [ANome, AIdPessoa], arguments[2], false, arguments[3], arguments[4]);
  };

  this.acceptPessoa_URL = function(ANome, AIdPessoa) {
    return this.executor.getMethodURL("Pessoa", "PUT", [ANome, AIdPessoa], arguments[2])[0];
  };

  /*
   * @param AIdPessoa [in] - Type on server: Integer
   */
  this.deleteUser = function(AIdPessoa) {
    this.executor.executeMethod('deleteUser', "GET", [AIdPessoa], arguments[1], false, arguments[2], arguments[3]);
  };

  this.deleteUser_URL = function(AIdPessoa) {
    return this.executor.getMethodURL("deleteUser", "GET", [AIdPessoa], arguments[1])[0];
  };
}

function TsmItem(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TsmItem",connectionInfo);

  /*
   * @param AIdItem [in] - Type on server: Integer
   * @return result - Type on server: TJSONValue
   */
  this.getItem = function(AIdItem) {
    var returnObject = this.executor.executeMethod('getItem', "GET", [AIdItem], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.AIdItem = AIdItem;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.getItem_URL = function(AIdItem) {
    return this.executor.getMethodURL("getItem", "GET", [AIdItem], arguments[1])[0];
  };

  /*
   * @return result - Type on server: TJSONArray
   */
  this.getAllItem = function() {
    var returnObject = this.executor.executeMethod('getAllItem', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.getAllItem_URL = function() {
    return this.executor.getMethodURL("getAllItem", "GET", [], arguments[0])[0];
  };

  /*
   * @param ADescricao [in] - Type on server: string
   */
  this.updateItem = function(ADescricao) {
    this.executor.executeMethod('Item', "POST", [ADescricao], arguments[1], false, arguments[2], arguments[3]);
  };

  this.updateItem_URL = function(ADescricao) {
    return this.executor.getMethodURL("Item", "POST", [ADescricao], arguments[1])[0];
  };

  /*
   * @param ADescricao [in] - Type on server: string
   * @param AIdItem [in] - Type on server: Integer
   */
  this.acceptItem = function(ADescricao, AIdItem) {
    this.executor.executeMethod('Item', "PUT", [ADescricao, AIdItem], arguments[2], false, arguments[3], arguments[4]);
  };

  this.acceptItem_URL = function(ADescricao, AIdItem) {
    return this.executor.getMethodURL("Item", "PUT", [ADescricao, AIdItem], arguments[2])[0];
  };

  /*
   * @param AidItem [in] - Type on server: Integer
   */
  this.deleteItem = function(AidItem) {
    this.executor.executeMethod('deleteItem', "GET", [AidItem], arguments[1], false, arguments[2], arguments[3]);
  };

  this.deleteItem_URL = function(AidItem) {
    return this.executor.getMethodURL("deleteItem", "GET", [AidItem], arguments[1])[0];
  };
}

function TsmImovel(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TsmImovel",connectionInfo);

  /*
   * @param AIdImovel [in] - Type on server: Integer
   * @return result - Type on server: TJSONValue
   */
  this.getImovel = function(AIdImovel) {
    var returnObject = this.executor.executeMethod('getImovel', "GET", [AIdImovel], arguments[1], true, arguments[2], arguments[3]);
    if (arguments[1] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.AIdImovel = AIdImovel;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.getImovel_URL = function(AIdImovel) {
    return this.executor.getMethodURL("getImovel", "GET", [AIdImovel], arguments[1])[0];
  };

  /*
   * @return result - Type on server: TJSONArray
   */
  this.getAllImovel = function() {
    var returnObject = this.executor.executeMethod('getAllImovel', "GET", [], arguments[0], true, arguments[1], arguments[2]);
    if (arguments[0] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.getAllImovel_URL = function() {
    return this.executor.getMethodURL("getAllImovel", "GET", [], arguments[0])[0];
  };

  /*
   * @param AQuadra [in] - Type on server: string
   * @param ALote [in] - Type on server: string
   * @param ALogradouro [in] - Type on server: string
   * @param ABairro [in] - Type on server: string
   * @param AComplemento [in] - Type on server: string
   * @param ACep [in] - Type on server: string
   * @param AMetragemTerreno [in] - Type on server: Double
   * @param AMetragemImovel [in] - Type on server: Double
   * @param ANumero [in] - Type on server: Integer
   */
  this.updateImovel = function(AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero) {
    this.executor.executeMethod('Imovel', "POST", [AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero], arguments[9], false, arguments[10], arguments[11]);
  };

  this.updateImovel_URL = function(AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero) {
    return this.executor.getMethodURL("Imovel", "POST", [AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero], arguments[9])[0];
  };

  /*
   * @param AIdImovel [in] - Type on server: Integer
   * @param AQuadra [in] - Type on server: string
   * @param ALote [in] - Type on server: string
   * @param ALogradouro [in] - Type on server: string
   * @param ABairro [in] - Type on server: string
   * @param AComplemento [in] - Type on server: string
   * @param ACep [in] - Type on server: string
   * @param AMetragemTerreno [in] - Type on server: Double
   * @param AMetragemImovel [in] - Type on server: Double
   * @param ANumero [in] - Type on server: Integer
   */
  this.acceptImovel = function(AIdImovel, AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero) {
    this.executor.executeMethod('Imovel', "PUT", [AIdImovel, AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero], arguments[10], false, arguments[11], arguments[12]);
  };

  this.acceptImovel_URL = function(AIdImovel, AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero) {
    return this.executor.getMethodURL("Imovel", "PUT", [AIdImovel, AQuadra, ALote, ALogradouro, ABairro, AComplemento, ACep, AMetragemTerreno, AMetragemImovel, ANumero], arguments[10])[0];
  };

  /*
   * @param AIdImovel [in] - Type on server: Integer
   */
  this.cancelImovel = function(AIdImovel) {
    this.executor.executeMethod('Imovel', "DELETE", [AIdImovel], arguments[1], false, arguments[2], arguments[3]);
  };

  this.cancelImovel_URL = function(AIdImovel) {
    return this.executor.getMethodURL("Imovel", "DELETE", [AIdImovel], arguments[1])[0];
  };
}

function TsmVistoria(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TsmVistoria",connectionInfo);

  /*
   * @param AIdPessoa [in] - Type on server: Integer
   * @param AIdImovel [in] - Type on server: Integer
   * @param AData [in] - Type on server: string
   * @param AObeservacao [in] - Type on server: string
   * @return result - Type on server: TVistoria
   */
  this.updateVistoria = function(AIdPessoa, AIdImovel, AData, AObeservacao) {
    var returnObject = this.executor.executeMethod('Vistoria', "POST", [AIdPessoa, AIdImovel, AData, AObeservacao], arguments[4], true, arguments[5], arguments[6]);
    if (arguments[4] == null) {
      if (returnObject != null && returnObject.result != null && isArray(returnObject.result)) {
        var resultArray = returnObject.result;
        var resultObject = new Object();
        resultObject.AIdPessoa = AIdPessoa;
        resultObject.AIdImovel = AIdImovel;
        resultObject.AData = AData;
        resultObject.AObeservacao = AObeservacao;
        resultObject.result = resultArray[0];
        if (returnObject.cacheId != null && returnObject.cmdIndex != null) {
          resultObject._cacheId = returnObject.cacheId;
          resultObject._cmdIndex = returnObject.cmdIndex;
        }
        return resultObject;
      }
      return returnObject;
    }
  };

  this.updateVistoria_URL = function(AIdPessoa, AIdImovel, AData, AObeservacao) {
    return this.executor.getMethodURL("Vistoria", "POST", [AIdPessoa, AIdImovel, AData, AObeservacao], arguments[4])[0];
  };

  /*
   * @param AIdVistoria [in] - Type on server: Integer
   * @param AIdImovel [in] - Type on server: Integer
   * @param AIdPessoa [in] - Type on server: Integer
   * @param AData [in] - Type on server: string
   * @param AObservacao [in] - Type on server: string
   */
  this.acceptVistoria = function(AIdVistoria, AIdImovel, AIdPessoa, AData, AObservacao) {
    this.executor.executeMethod('Vistoria', "PUT", [AIdVistoria, AIdImovel, AIdPessoa, AData, AObservacao], arguments[5], false, arguments[6], arguments[7]);
  };

  this.acceptVistoria_URL = function(AIdVistoria, AIdImovel, AIdPessoa, AData, AObservacao) {
    return this.executor.getMethodURL("Vistoria", "PUT", [AIdVistoria, AIdImovel, AIdPessoa, AData, AObservacao], arguments[5])[0];
  };

  /*
   * @param AIdVistoria [in] - Type on server: Integer
   */
  this.cancelVistoria = function(AIdVistoria) {
    this.executor.executeMethod('Vistoria', "DELETE", [AIdVistoria], arguments[1], false, arguments[2], arguments[3]);
  };

  this.cancelVistoria_URL = function(AIdVistoria) {
    return this.executor.getMethodURL("Vistoria", "DELETE", [AIdVistoria], arguments[1])[0];
  };
}

function TsmItemVistoria(connectionInfo)
{
  this.executor = new ServerFunctionExecutor("TsmItemVistoria",connectionInfo);

  /*
   * @param AIdVistoria [in] - Type on server: Integer
   * @param AIdItem [in] - Type on server: Integer
   * @param AObservacao [in] - Type on server: string
   */
  this.updateItemVistoria = function(AIdVistoria, AIdItem, AObservacao) {
    this.executor.executeMethod('ItemVistoria', "POST", [AIdVistoria, AIdItem, AObservacao], arguments[3], false, arguments[4], arguments[5]);
  };

  this.updateItemVistoria_URL = function(AIdVistoria, AIdItem, AObservacao) {
    return this.executor.getMethodURL("ItemVistoria", "POST", [AIdVistoria, AIdItem, AObservacao], arguments[3])[0];
  };

  /*
   * @param AIdItemVistoria [in] - Type on server: Integer
   * @param AIdVistoria [in] - Type on server: Integer
   * @param AIdItem [in] - Type on server: Integer
   * @param AObservacao [in] - Type on server: string
   */
  this.acceptItemVistoria = function(AIdItemVistoria, AIdVistoria, AIdItem, AObservacao) {
    this.executor.executeMethod('ItemVistoria', "PUT", [AIdItemVistoria, AIdVistoria, AIdItem, AObservacao], arguments[4], false, arguments[5], arguments[6]);
  };

  this.acceptItemVistoria_URL = function(AIdItemVistoria, AIdVistoria, AIdItem, AObservacao) {
    return this.executor.getMethodURL("ItemVistoria", "PUT", [AIdItemVistoria, AIdVistoria, AIdItem, AObservacao], arguments[4])[0];
  };

  /*
   * @param AIdItemVistoria [in] - Type on server: Integer
   */
  this.cancelItemVistoria = function(AIdItemVistoria) {
    this.executor.executeMethod('ItemVistoria', "DELETE", [AIdItemVistoria], arguments[1], false, arguments[2], arguments[3]);
  };

  this.cancelItemVistoria_URL = function(AIdItemVistoria) {
    return this.executor.getMethodURL("ItemVistoria", "DELETE", [AIdItemVistoria], arguments[1])[0];
  };
}

var JSProxyClassList = {
  "DSAdmin": ["GetPlatformName","ClearResources","FindPackages","FindClasses","FindMethods","CreateServerClasses","DropServerClasses","CreateServerMethods","DropServerMethods","GetServerClasses","ListClasses","DescribeClass","ListMethods","DescribeMethod","GetServerMethods","GetServerMethodParameters","GetDatabaseConnectionProperties","GetDSServerName","ConsumeClientChannel","ConsumeClientChannelTimeout","CloseClientChannel","RegisterClientCallbackServer","UnregisterClientCallback","BroadcastToChannel","BroadcastObjectToChannel","NotifyCallback","NotifyObject"],
  "TsmTeste": ["EchoString","ReverseString"],
  "TsmPessoa": ["getPessoa","getAllPessoa","updatePessoa","acceptPessoa","deleteUser"],
  "TsmItem": ["getItem","getAllItem","updateItem","acceptItem","deleteItem"],
  "TsmImovel": ["getImovel","getAllImovel","updateImovel","acceptImovel","cancelImovel"],
  "TsmVistoria": ["updateVistoria","acceptVistoria","cancelVistoria"],
  "TsmItemVistoria": ["updateItemVistoria","acceptItemVistoria","cancelItemVistoria"]
};

