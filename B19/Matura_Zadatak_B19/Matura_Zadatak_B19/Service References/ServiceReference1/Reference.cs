﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Matura_Zadatak_B19.ServiceReference1 {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReference1.ServiceSoap")]
    public interface ServiceSoap {
        
        // CODEGEN: Generating message contract since element name text from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/CirilicaULatinicu", ReplyAction="*")]
        Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuResponse CirilicaULatinicu(Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequest request);
        
        // CODEGEN: Generating message contract since element name text from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/LatinicaUCirilicu", ReplyAction="*")]
        Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuResponse LatinicaUCirilicu(Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CirilicaULatinicuRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CirilicaULatinicu", Namespace="http://tempuri.org/", Order=0)]
        public Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequestBody Body;
        
        public CirilicaULatinicuRequest() {
        }
        
        public CirilicaULatinicuRequest(Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class CirilicaULatinicuRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string text;
        
        public CirilicaULatinicuRequestBody() {
        }
        
        public CirilicaULatinicuRequestBody(string text) {
            this.text = text;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class CirilicaULatinicuResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="CirilicaULatinicuResponse", Namespace="http://tempuri.org/", Order=0)]
        public Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuResponseBody Body;
        
        public CirilicaULatinicuResponse() {
        }
        
        public CirilicaULatinicuResponse(Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class CirilicaULatinicuResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string CirilicaULatinicuResult;
        
        public CirilicaULatinicuResponseBody() {
        }
        
        public CirilicaULatinicuResponseBody(string CirilicaULatinicuResult) {
            this.CirilicaULatinicuResult = CirilicaULatinicuResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class LatinicaUCirilicuRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="LatinicaUCirilicu", Namespace="http://tempuri.org/", Order=0)]
        public Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequestBody Body;
        
        public LatinicaUCirilicuRequest() {
        }
        
        public LatinicaUCirilicuRequest(Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class LatinicaUCirilicuRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string text;
        
        public LatinicaUCirilicuRequestBody() {
        }
        
        public LatinicaUCirilicuRequestBody(string text) {
            this.text = text;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class LatinicaUCirilicuResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="LatinicaUCirilicuResponse", Namespace="http://tempuri.org/", Order=0)]
        public Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuResponseBody Body;
        
        public LatinicaUCirilicuResponse() {
        }
        
        public LatinicaUCirilicuResponse(Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class LatinicaUCirilicuResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string LatinicaUCirilicuResult;
        
        public LatinicaUCirilicuResponseBody() {
        }
        
        public LatinicaUCirilicuResponseBody(string LatinicaUCirilicuResult) {
            this.LatinicaUCirilicuResult = LatinicaUCirilicuResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ServiceSoapChannel : Matura_Zadatak_B19.ServiceReference1.ServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServiceSoapClient : System.ServiceModel.ClientBase<Matura_Zadatak_B19.ServiceReference1.ServiceSoap>, Matura_Zadatak_B19.ServiceReference1.ServiceSoap {
        
        public ServiceSoapClient() {
        }
        
        public ServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuResponse Matura_Zadatak_B19.ServiceReference1.ServiceSoap.CirilicaULatinicu(Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequest request) {
            return base.Channel.CirilicaULatinicu(request);
        }
        
        public string CirilicaULatinicu(string text) {
            Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequest inValue = new Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequest();
            inValue.Body = new Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuRequestBody();
            inValue.Body.text = text;
            Matura_Zadatak_B19.ServiceReference1.CirilicaULatinicuResponse retVal = ((Matura_Zadatak_B19.ServiceReference1.ServiceSoap)(this)).CirilicaULatinicu(inValue);
            return retVal.Body.CirilicaULatinicuResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuResponse Matura_Zadatak_B19.ServiceReference1.ServiceSoap.LatinicaUCirilicu(Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequest request) {
            return base.Channel.LatinicaUCirilicu(request);
        }
        
        public string LatinicaUCirilicu(string text) {
            Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequest inValue = new Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequest();
            inValue.Body = new Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuRequestBody();
            inValue.Body.text = text;
            Matura_Zadatak_B19.ServiceReference1.LatinicaUCirilicuResponse retVal = ((Matura_Zadatak_B19.ServiceReference1.ServiceSoap)(this)).LatinicaUCirilicu(inValue);
            return retVal.Body.LatinicaUCirilicuResult;
        }
    }
}
