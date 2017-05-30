unit BaseObject;

interface

uses DBXJSONReflect, System.SysUtils, Data.DBXJSON, System.Generics.Collections,
  System.TypInfo, System.Rtti, System.Classes, System.StrUtils, Data.DBXCommonResStrs,
  Data.DBXPlatform, JclDebug;

type
  TBaseObject = class(TPersistent)
  public
    class function ObjectToJSON<T : class>(MyObject: T; AMarshal : TJSONMarshal = nil): TJSONValue; overload;
    class function JSONToObject<T : class>(Json: TJSONValue; AUnMarshal: TJSONUnMarshal = nil): T; overload;
  end;

implementation

{ TBaseObject }

class function TBaseObject.JSONToObject<T>(Json: TJSONValue; AUnMarshal: TJSONUnMarshal): T;
var
  UnMarshal: TJSONUnMarshal;
begin
  if Json is TJSONNull then
    exit(nil);

  if Assigned(AUnMarshal) then
     UnMarshal := AUnMarshal
  else
     UnMarshal := TJSONUnMarshal.Create;

  try
    exit(T(UnMarshal.Unmarshal(Json)))
  finally
    if not Assigned(AUnMarshal) then
       UnMarshal.Free;
  end;
end;

class function TBaseObject.ObjectToJSON<T>(MyObject: T; AMarshal : TJSONMarshal): TJSONValue;
var
  Marshal: TJSONMarshal;
begin
  if Assigned(MyObject) then
  begin
    if Assigned(AMarshal) then
       Marshal := AMarshal
    else
       Marshal := TJSONMarshal.Create(TJSONConverter.Create);

    try
      exit(Marshal.Marshal(MyObject));
    finally
      if not Assigned(AMarshal) then
         Marshal.Free;
    end;
  end
  else
    exit(TJSONNull.Create);
end;

end.
