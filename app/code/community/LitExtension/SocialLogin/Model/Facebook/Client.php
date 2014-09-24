<?php
/**
 * @project     SocialLogin
 * @package     LitExtension_SocialLogin
 * @author      LitExtension
 * @email       litextension@gmail.com
 */

class LitExtension_SocialLogin_Model_Facebook_Client
{
    const REDIRECT_URI_ROUTE = 'le_sociallogin/facebook/connect';
    const REDIRECT_URI_REQUEST = 'le_sociallogin/facebook/request';

    const XML_PATH_ENABLED = 'le_sociallogin/facebook/enabled';
    const XML_PATH_CLIENT_ID = 'le_sociallogin/facebook/api_key';
    const XML_PATH_CLIENT_SECRET = 'le_sociallogin/facebook/secret';

    const OAUTH2_SERVICE_URI = 'https://graph.facebook.com';
    const OAUTH2_AUTH_URI = 'https://graph.facebook.com/oauth/authorize';
    const OAUTH2_TOKEN_URI = 'https://graph.facebook.com/oauth/access_token';

    protected $clientId = null;
    protected $clientSecret = null;
    protected $redirectUri = null;
    protected $state = '';
    protected $scope = array('email', 'user_birthday');

    protected $token = null;
    protected $protocol = "http";

    public function __construct($params = array())
    {
        if(($this->isEnabled = $this->_isEnabled())) {
            $this->clientId = $this->_getClientId();
            $this->clientSecret = $this->_getClientSecret();

            $isSecure = Mage::app()->getStore()->isCurrentlySecure();
            if($isSecure){
                $this->protocol = "https";
            }

            $this->redirectUri = Mage::getModel('core/url')->sessionUrlVar(
                Mage::getUrl(self::REDIRECT_URI_ROUTE, array('_secure'=>true))
            );

            if(!empty($params['scope'])) {
                $this->scope = $params['scope'];
            }

            if(!empty($params['state'])) {
                $this->state = $params['state'];
            }
        }
    }

    public function isEnabled()
    {
        return (bool) $this->isEnabled;
    }

    public function getClientId()
    {
        return $this->clientId;
    }

    public function getClientSecret()
    {
        return $this->clientSecret;
    }

    public function getRedirectUri()
    {
        return $this->redirectUri;
    }

    public function getScope()
    {
        return $this->scope;
    }

    public function getState()
    {
        return $this->state;
    }

    public function setState($state)
    {
        $this->state = $state;
    }

    public function setAccessToken($token)
    {
        $this->token = json_decode($token);
    }

    public function getAccessToken()
    {
        if(empty($this->token)) {
            $this->fetchAccessToken();
        }

        return json_encode($this->token);
    }

    public function createRequestUrl(){
        $url =
            self::OAUTH2_AUTH_URI.'?'.
            http_build_query(
                array(
                    'client_id' => $this->clientId,
                    'redirect_uri' => $this->redirectUri,
                    'state' => $this->state,
                    'scope' => implode(',', $this->scope),
                    'display' => 'popup'
                )
            );
        return $url;
    }

    public function createAuthUrl()
    {
        return Mage::getUrl('le_sociallogin/facebook/request', array("mainw_protocol" => $this->protocol));
    }
    public function apiGetFriends(){
        $url = self::OAUTH2_SERVICE_URI.'/me/friends';
        $method = 'GET';
        $method = strtoupper($method);
        $params = array();
        $accessToken = '';
        $customer = Mage::getSingleton('customer/session')->getCustomer();
        $idFacebook = $customer->getLeSocialloginFid();
        
        if($idFacebook){
            $access = $customer->getLeSocialloginFtoken();
           
            $obj = json_decode($access);
            
            $accessToken = $obj->access_token;
            
        }
        if($accessToken == ''){
            return;
        }
        $params = array_merge(array(
            'access_token' => 'CAAHcIfSDsZBYBAL9fjLt4e0x8QPb0yp2bLd3Izq06oQqTjjZCD998CAr0tg7kIS45hRft9CUPTEtSZASs5u0GQtzowoCGm46VQB3K0SVKZAFFKZCe3bZAQLZBSD3diVoLDDHBLEFdVxVODZAR7tZCPitXiPhv6RoRE6ZAIJKeD2xevHZBxrIzZChvSMW8IDLJqw1iYO1RcOZCIFwKwC7nxAdaPfAV'
        ), $params);
        //var_dump($this->token->access_token);die('')
        $response = $this->_httpRequest($url, $method, $params);
        $dataFriends = $response->data;
        // foreach ($data as $key => $value) {
        //     var_dump($value->name);
        //     var_dump($value->id);
        // https://graph.facebook.com/333814093447134/picture
        // }
        //var_dump($dataFriends);die('123');
        return $dataFriends;
    }

    public function apiGetRealId(){
        $url = self::OAUTH2_SERVICE_URI.'/me/friends';
        $method = 'GET';
        $method = strtoupper($method);
        $params = array();
        $accessToken = '';
        // $customer = Mage::getSingleton('customer/session')->getCustomer();
        // $idFacebook = $customer->getLeSocialloginFid();
        
        // if($idFacebook){
        //     $access = $customer->getLeSocialloginFtoken();
           
        //     $obj = json_decode($access);
            
        //     $accessToken = $obj->access_token;
            
        // }
        // if($accessToken == ''){
        //     return;
        // }
        $params = array_merge(array(
            'access_token' => 'CAAHcIfSDsZBYBAL9fjLt4e0x8QPb0yp2bLd3Izq06oQqTjjZCD998CAr0tg7kIS45hRft9CUPTEtSZASs5u0GQtzowoCGm46VQB3K0SVKZAFFKZCe3bZAQLZBSD3diVoLDDHBLEFdVxVODZAR7tZCPitXiPhv6RoRE6ZAIJKeD2xevHZBxrIzZChvSMW8IDLJqw1iYO1RcOZCIFwKwC7nxAdaPfAV'
        ), $params);
        
        $response = $this->_httpRequest($url, $method, $params);
        $file=file_get_contents('https://graph.facebook.com/me/friends?access_token=CAAHcIfSDsZBYBAL9fjLt4e0x8QPb0yp2bLd3Izq06oQqTjjZCD998CAr0tg7kIS45hRft9CUPTEtSZASs5u0GQtzowoCGm46VQB3K0SVKZAFFKZCe3bZAQLZBSD3diVoLDDHBLEFdVxVODZAR7tZCPitXiPhv6RoRE6ZAIJKeD2xevHZBxrIzZChvSMW8IDLJqw1iYO1RcOZCIFwKwC7nxAdaPfAV.');
        // var_dump($file);
        // var_dump($response);die('2222');
        $dataFriends = $response->paging;

        $realId = '';
        if(count($dataFriends)){
            foreach ($dataFriends as $key => $value) {
                $data = (explode('/',$value));
                $realId = $data[4];
            }
        }
        return $realId;
    }

    public function api($endpoint, $method = 'GET', $params = array())
    {
        if(empty($this->token)) {
            $this->fetchAccessToken();
        }
        // $url = self::OAUTH2_SERVICE_URI.'/me/friends';
        // $method = 'GET';
        // $method = strtoupper($method);
        // $params = array();
        // $params = array_merge(array(
        //     'access_token' => $this->token->access_token
        // ), $params);

        // $response = $this->_httpRequest($url, $method, $params);
        // $dataFriends = $response->data;
        // var_dump($dataFriends);die('111111');
        // foreach ($data as $key => $value) {
        //     var_dump($value->name);
        //     var_dump($value->id);
        // https://graph.facebook.com/".$id."/picture
        // }
        $url = self::OAUTH2_SERVICE_URI.$endpoint;

        $method = strtoupper($method);

        $params = array_merge(array(
            'access_token' => $this->token->access_token
        ), $params);

        $response = $this->_httpRequest($url, $method, $params);

        return $response;
    }
    
    protected function fetchAccessToken()
    {
        if(empty($_REQUEST['code'])) {
            throw new Exception(
                Mage::helper('le_sociallogin')
                    ->__('Unable to retrieve access code.')
            );
        }

        $response = $this->_httpRequest(
            self::OAUTH2_TOKEN_URI,
            'POST',
            array(
                'code' => $_REQUEST['code'],
                'redirect_uri' => $this->redirectUri,
                'client_id' => $this->clientId,
                'client_secret' => $this->clientSecret,
                'grant_type' => 'authorization_code'
            )
        );

        $this->token = $response;
    }

    protected function _httpRequest($url, $method = 'GET', $params = array())
    {
        $client = new Zend_Http_Client($url, array('timeout' => 60));

        switch ($method) {
            case 'GET':
                $client->setParameterGet($params);
                break;
            case 'POST':
                $client->setParameterPost($params);
                break;
            case 'DELETE':
                $client->setParameterGet($params);
                break;
            default:
                throw new Exception(
                    Mage::helper('le_sociallogin')
                        ->__('Required HTTP method is not supported.')
                );
        }

        $response = $client->request($method);

        Mage::log($response->getStatus().' - '. $response->getBody());

        $decoded_response = json_decode($response->getBody());

        /*
         * Per http://tools.ietf.org/html/draft-ietf-oauth-v2-27#section-5.1
         * Facebook should return data using the "application/json" media type.
         * Facebook violates OAuth2 specification and returns string. If this
         * ever gets fixed, following condition will not be used anymore.
         */
        if(empty($decoded_response)) {
            $parsed_response = array();
            parse_str($response->getBody(), $parsed_response);

            $decoded_response = json_decode(json_encode($parsed_response));
        }

        if($response->isError()) {
            $status = $response->getStatus();
            if(($status == 400 || $status == 401)) {
                if(isset($decoded_response->error->message)) {
                    $message = $decoded_response->error->message;
                } else {
                    $message = Mage::helper('le_sociallogin')
                        ->__('Unspecified OAuth error occurred.');
                }

                throw new LitExtension_SocialLogin_FacebookOAuthException($message);
            } else {
                $message = sprintf(
                    Mage::helper('le_sociallogin')
                        ->__('HTTP error %d occurred while issuing request.'),
                    $status
                );

                throw new Exception($message);
            }
        }

        return $decoded_response;
    }

    protected function _isEnabled()
    {
        return $this->_getStoreConfig(self::XML_PATH_ENABLED);
    }

    protected function _getClientId()
    {
        return $this->_getStoreConfig(self::XML_PATH_CLIENT_ID);
    }

    protected function _getClientSecret()
    {
        return $this->_getStoreConfig(self::XML_PATH_CLIENT_SECRET);
    }

    protected function _getStoreConfig($xmlPath)
    {
        return Mage::getStoreConfig($xmlPath, Mage::app()->getStore()->getId());
    }

}

class LitExtension_SocialLogin_FacebookOAuthException extends Exception
{}