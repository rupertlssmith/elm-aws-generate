module AWS.SQS
    exposing
        ( service
        , addPermission
        , changeMessageVisibility
        , changeMessageVisibilityBatch
        , createQueue
        , CreateQueueOptions
        , deleteMessage
        , deleteMessageBatch
        , deleteQueue
        , getQueueAttributes
        , GetQueueAttributesOptions
        , getQueueUrl
        , GetQueueUrlOptions
        , listDeadLetterSourceQueues
        , listQueueTags
        , listQueues
        , ListQueuesOptions
        , purgeQueue
        , receiveMessage
        , ReceiveMessageOptions
        , removePermission
        , sendMessage
        , SendMessageOptions
        , sendMessageBatch
        , setQueueAttributes
        , tagQueue
        , untagQueue
        , BatchResultErrorEntry
        , ChangeMessageVisibilityBatchRequestEntry
        , ChangeMessageVisibilityBatchResult
        , ChangeMessageVisibilityBatchResultEntry
        , CreateQueueResult
        , DeleteMessageBatchRequestEntry
        , DeleteMessageBatchResult
        , DeleteMessageBatchResultEntry
        , GetQueueAttributesResult
        , GetQueueUrlResult
        , ListDeadLetterSourceQueuesResult
        , ListQueueTagsResult
        , ListQueuesResult
        , Message
        , MessageAttributeValue
        , MessageSystemAttributeName(..)
        , QueueAttributeName(..)
        , ReceiveMessageResult
        , SendMessageBatchRequestEntry
        , SendMessageBatchResult
        , SendMessageBatchResultEntry
        , SendMessageResult
        )

{-| <p>Welcome to the <i>Amazon Simple Queue Service API Reference</i>.</p> <p>Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable hosted queue for storing messages as they travel between applications or microservices. Amazon SQS moves data between distributed application components and helps you decouple these components.</p> <p>You can use <a href="http://aws.amazon.com/tools/#sdk">AWS SDKs</a> to access Amazon SQS using your favorite programming language. The SDKs perform tasks such as the following automatically:</p> <ul> <li> <p>Cryptographically sign your service requests</p> </li> <li> <p>Retry requests</p> </li> <li> <p>Handle error responses</p> </li> </ul> <p> <b>Additional Information</b> </p> <ul> <li> <p> <a href="http://aws.amazon.com/sqs/">Amazon SQS Product Page</a> </p> </li> <li> <p> <i>Amazon Simple Queue Service Developer Guide</i> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html">Making API Requests</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Amazon SQS Message Attributes</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Amazon SQS Dead-Letter Queues</a> </p> </li> </ul> </li> <li> <p> <a href="http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html">Amazon SQS in the <i>AWS CLI Command Reference</i> </a> </p> </li> <li> <p> <i>Amazon Web Services General Reference</i> </p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region">Regions and Endpoints</a> </p> </li> </ul> </li> </ul>

@docs service

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [addPermission](#addPermission)
* [changeMessageVisibility](#changeMessageVisibility)
* [changeMessageVisibilityBatch](#changeMessageVisibilityBatch)
* [createQueue](#createQueue)
* [CreateQueueOptions](#CreateQueueOptions)
* [deleteMessage](#deleteMessage)
* [deleteMessageBatch](#deleteMessageBatch)
* [deleteQueue](#deleteQueue)
* [getQueueAttributes](#getQueueAttributes)
* [GetQueueAttributesOptions](#GetQueueAttributesOptions)
* [getQueueUrl](#getQueueUrl)
* [GetQueueUrlOptions](#GetQueueUrlOptions)
* [listDeadLetterSourceQueues](#listDeadLetterSourceQueues)
* [listQueueTags](#listQueueTags)
* [listQueues](#listQueues)
* [ListQueuesOptions](#ListQueuesOptions)
* [purgeQueue](#purgeQueue)
* [receiveMessage](#receiveMessage)
* [ReceiveMessageOptions](#ReceiveMessageOptions)
* [removePermission](#removePermission)
* [sendMessage](#sendMessage)
* [SendMessageOptions](#SendMessageOptions)
* [sendMessageBatch](#sendMessageBatch)
* [setQueueAttributes](#setQueueAttributes)
* [tagQueue](#tagQueue)
* [untagQueue](#untagQueue)


@docs addPermission,changeMessageVisibility,changeMessageVisibilityBatch,createQueue,CreateQueueOptions,deleteMessage,deleteMessageBatch,deleteQueue,getQueueAttributes,GetQueueAttributesOptions,getQueueUrl,GetQueueUrlOptions,listDeadLetterSourceQueues,listQueueTags,listQueues,ListQueuesOptions,purgeQueue,receiveMessage,ReceiveMessageOptions,removePermission,sendMessage,SendMessageOptions,sendMessageBatch,setQueueAttributes,tagQueue,untagQueue

## Responses

* [ChangeMessageVisibilityBatchResult](#ChangeMessageVisibilityBatchResult)
* [CreateQueueResult](#CreateQueueResult)
* [DeleteMessageBatchResult](#DeleteMessageBatchResult)
* [GetQueueAttributesResult](#GetQueueAttributesResult)
* [GetQueueUrlResult](#GetQueueUrlResult)
* [ListDeadLetterSourceQueuesResult](#ListDeadLetterSourceQueuesResult)
* [ListQueueTagsResult](#ListQueueTagsResult)
* [ListQueuesResult](#ListQueuesResult)
* [ReceiveMessageResult](#ReceiveMessageResult)
* [SendMessageBatchResult](#SendMessageBatchResult)
* [SendMessageResult](#SendMessageResult)


@docs ChangeMessageVisibilityBatchResult,CreateQueueResult,DeleteMessageBatchResult,GetQueueAttributesResult,GetQueueUrlResult,ListDeadLetterSourceQueuesResult,ListQueueTagsResult,ListQueuesResult,ReceiveMessageResult,SendMessageBatchResult,SendMessageResult

## Records

* [BatchResultErrorEntry](#BatchResultErrorEntry)
* [ChangeMessageVisibilityBatchRequestEntry](#ChangeMessageVisibilityBatchRequestEntry)
* [ChangeMessageVisibilityBatchResultEntry](#ChangeMessageVisibilityBatchResultEntry)
* [DeleteMessageBatchRequestEntry](#DeleteMessageBatchRequestEntry)
* [DeleteMessageBatchResultEntry](#DeleteMessageBatchResultEntry)
* [Message](#Message)
* [MessageAttributeValue](#MessageAttributeValue)
* [SendMessageBatchRequestEntry](#SendMessageBatchRequestEntry)
* [SendMessageBatchResultEntry](#SendMessageBatchResultEntry)


@docs BatchResultErrorEntry,ChangeMessageVisibilityBatchRequestEntry,ChangeMessageVisibilityBatchResultEntry,DeleteMessageBatchRequestEntry,DeleteMessageBatchResultEntry,Message,MessageAttributeValue,SendMessageBatchRequestEntry,SendMessageBatchResultEntry

## Unions

* [MessageSystemAttributeName](#MessageSystemAttributeName)
* [QueueAttributeName](#QueueAttributeName)


@docs MessageSystemAttributeName,QueueAttributeName

-}

import AWS.Core.Decode
import AWS.Core.Encode
import AWS.Core.Http
import AWS.Core.Service
import Json.Decode as JD
import Json.Decode.Pipeline as JDP

import Dict exposing (Dict)


{-| Configuration for this service.
-}
service : AWS.Core.Service.Region -> AWS.Core.Service.Service
service =
    AWS.Core.Service.defineRegional
        "sqs"
        "2012-11-05"
        AWS.Core.Service.query
        AWS.Core.Service.signV4
        (AWS.Core.Service.setXmlNamespace "http://queue.amazonaws.com/doc/2012-11-05/")



-- OPERATIONS

{-| <p>Adds a permission to a queue for a specific <a href="https://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a>. This allows sharing access to the queue.</p> <p>When you create a queue, you have full control access rights for the queue. Only you, the owner of the queue, can grant or deny permissions to the queue. For more information about these permissions, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue">Allow Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <ul> <li> <p> <code>AddPermission</code> generates a policy for you. You can use <code> <a>SetQueueAttributes</a> </code> to upload your policy. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-creating-custom-policies.html">Using Custom Policies with the Amazon SQS Access Policy Language</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p>An Amazon SQS policy can have a maximum of 7 actions.</p> </li> <li> <p>To remove the ability to change queue permissions, you must deny permission to the <code>AddPermission</code>, <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions in your IAM policy.</p> </li> </ul> </note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=first</code> </p> <p> <code>&amp;Attribute.2=second</code> </p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `label` __:__ `String`
* `aWSAccountIds` __:__ `(List String)`
* `actions` __:__ `(List String)`


-}

addPermission :
  
    String ->
  
    String ->
  
    (List String) ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

addPermission queueUrl label aWSAccountIds actions =
    
    let
        requestInput = AddPermissionRequest
            
            queueUrl
            
            label
            
            aWSAccountIds
            
            actions
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "AddPermission")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs addPermissionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "AddPermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Changes the visibility timeout of a specified message in a queue to a new value. The default visibility timeout for a message is 30 seconds. The minimum is 0 seconds. The maximum is 12 hours. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>For example, you have a message with a visibility timeout of 5 minutes. After 3 minutes, you call <code>ChangeMessageVisibility</code> with a timeout of 10 minutes. You can continue to call <code>ChangeMessageVisibility</code> to extend the visibility timeout to the maximum allowed time. If you try to extend the visibility timeout beyond the maximum, your request is rejected.</p> <p>An Amazon SQS message has three basic states:</p> <ol> <li> <p>Sent to a queue by a producer.</p> </li> <li> <p>Received from the queue by a consumer.</p> </li> <li> <p>Deleted from the queue.</p> </li> </ol> <p>A message is considered to be <i>stored</i> after it is sent to a queue by a producer, but not yet received from the queue by a consumer (that is, between states 1 and 2). There is no limit to the number of stored messages. A message is considered to be <i>in flight</i> after it is received from a queue by a consumer, but not yet deleted from the queue (that is, between states 2 and 3). There is a limit to the number of inflight messages.</p> <p>Limits that apply to inflight messages are unrelated to the <i>unlimited</i> number of stored messages.</p> <p>For most standard queues (depending on queue traffic and message backlog), there can be a maximum of approximately 120,000 inflight messages (received from a queue by a consumer, but not yet deleted from the queue). If you reach this limit, Amazon SQS returns the <code>OverLimit</code> error message. To avoid reaching the limit, you should delete messages from the queue after they're processed. You can also increase the number of queues you use to process your messages. To request a limit increase, <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-sqs">file a support request</a>.</p> <p>For FIFO queues, there can be a maximum of 20,000 inflight messages (received from a queue by a consumer, but not yet deleted from the queue). If you reach this limit, Amazon SQS returns no error messages.</p> <important> <p>If you attempt to set the <code>VisibilityTimeout</code> to a value greater than the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't automatically recalculate and increase the timeout to the maximum remaining time.</p> <p>Unlike with a queue, when you change the visibility timeout for a specific message the timeout value is applied immediately but isn't saved in memory for that message. If you don't delete a message after it is received, the visibility timeout for the message reverts to the original timeout value (not to the value you set using the <code>ChangeMessageVisibility</code> action) the next time the message is received.</p> </important>

__Required Parameters__

* `queueUrl` __:__ `String`
* `receiptHandle` __:__ `String`
* `visibilityTimeout` __:__ `Int`


-}

changeMessageVisibility :
  
    String ->
  
    String ->
  
    Int ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

changeMessageVisibility queueUrl receiptHandle visibilityTimeout =
    
    let
        requestInput = ChangeMessageVisibilityRequest
            
            queueUrl
            
            receiptHandle
            
            visibilityTimeout
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ChangeMessageVisibility")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs changeMessageVisibilityRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ChangeMessageVisibility"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Changes the visibility timeout of multiple messages. This is a batch version of <code> <a>ChangeMessageVisibility</a>.</code> The result of the action on each message is reported individually in the response. You can send up to 10 <code> <a>ChangeMessageVisibility</a> </code> requests with each <code>ChangeMessageVisibilityBatch</code> action.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=first</code> </p> <p> <code>&amp;Attribute.2=second</code> </p>

__Required Parameters__

* `queueUrl` __:__ `String`
* `entries` __:__ `(List ChangeMessageVisibilityBatchRequestEntry)`


-}

changeMessageVisibilityBatch :
  
    String ->
  
    (List ChangeMessageVisibilityBatchRequestEntry) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ChangeMessageVisibilityBatchResult)

changeMessageVisibilityBatch queueUrl entries =
    
    let
        requestInput = ChangeMessageVisibilityBatchRequest
            
            queueUrl
            
            entries
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ChangeMessageVisibilityBatch")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs changeMessageVisibilityBatchRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ChangeMessageVisibilityBatch"
                
                (AWS.Core.Decode.ResultDecoder "ChangeMessageVisibilityBatchResult" changeMessageVisibilityBatchResultDecoder)
                
            )





{-| <p>Creates a new standard or FIFO queue. You can pass one or more attributes in the request. Keep the following caveats in mind:</p> <ul> <li> <p>If you don't specify the <code>FifoQueue</code> attribute, Amazon SQS creates a standard queue.</p> <note> <p>You can't change the queue type after you create it and you can't convert an existing standard queue into a FIFO queue. You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving">Moving From a Standard Queue to a FIFO Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> </note> </li> <li> <p>If you don't provide a value for an attribute, the queue is created with the default value for the attribute.</p> </li> <li> <p>If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.</p> </li> </ul> <p>To successfully create a new queue, you must provide a queue name that adheres to the <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">limits related to queues</a> and is unique within the scope of your queues.</p> <p>To get the queue URL, use the <code> <a>GetQueueUrl</a> </code> action. <code> <a>GetQueueUrl</a> </code> requires only the <code>QueueName</code> parameter. be aware of existing queue names:</p> <ul> <li> <p>If you provide the name of an existing queue along with the exact names and values of all the queue's attributes, <code>CreateQueue</code> returns the queue URL for the existing queue.</p> </li> <li> <p>If the queue name, attribute names, or attribute values don't match an existing queue, <code>CreateQueue</code> returns an error.</p> </li> </ul> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=first</code> </p> <p> <code>&amp;Attribute.2=second</code> </p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__

* `queueName` __:__ `String`


-}

createQueue :
  
    String ->
  
  
    ( CreateQueueOptions -> CreateQueueOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper CreateQueueResult)

createQueue queueName setOptions =
    
    let
        requestInput = CreateQueueRequest
            
            queueName
            
            options.attributes
            
        
        options = setOptions (CreateQueueOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "CreateQueue")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs createQueueRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "CreateQueue"
                
                (AWS.Core.Decode.ResultDecoder "CreateQueueResult" createQueueResultDecoder)
                
            )



{-| Options for a createQueue request
-}
type alias CreateQueueOptions =
    {
    attributes : Maybe (Dict String String)
    }



{-| <p>Deletes the specified message from the specified queue. To select the message to delete, use the <code>ReceiptHandle</code> of the message (<i>not</i> the <code>MessageId</code> which you receive when you send the message). Amazon SQS can delete a message from a queue even if a visibility timeout setting causes the message to be locked by another consumer. Amazon SQS automatically deletes messages left in a queue longer than the retention period configured for the queue. </p> <note> <p>The <code>ReceiptHandle</code> is associated with a <i>specific instance</i> of receiving a message. If you receive a message more than once, the <code>ReceiptHandle</code> is different each time you receive a message. When you use the <code>DeleteMessage</code> action, you must provide the most recently received <code>ReceiptHandle</code> for the message (otherwise, the request succeeds, but the message might not be deleted).</p> <p>For standard queues, it is possible to receive a message even after you delete it. This might happen on rare occasions if one of the servers which stores a copy of the message is unavailable when you send the request to delete the message. The copy remains on the server and might be returned to you during a subsequent receive request. You should ensure that your application is idempotent, so that receiving a message more than once does not cause issues.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `receiptHandle` __:__ `String`


-}

deleteMessage :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteMessage queueUrl receiptHandle =
    
    let
        requestInput = DeleteMessageRequest
            
            queueUrl
            
            receiptHandle
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteMessage")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteMessageRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteMessage"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Deletes up to ten messages from the specified queue. This is a batch version of <code> <a>DeleteMessage</a>.</code> The result of the action on each message is reported individually in the response.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=first</code> </p> <p> <code>&amp;Attribute.2=second</code> </p>

__Required Parameters__

* `queueUrl` __:__ `String`
* `entries` __:__ `(List DeleteMessageBatchRequestEntry)`


-}

deleteMessageBatch :
  
    String ->
  
    (List DeleteMessageBatchRequestEntry) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper DeleteMessageBatchResult)

deleteMessageBatch queueUrl entries =
    
    let
        requestInput = DeleteMessageBatchRequest
            
            queueUrl
            
            entries
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteMessageBatch")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteMessageBatchRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteMessageBatch"
                
                (AWS.Core.Decode.ResultDecoder "DeleteMessageBatchResult" deleteMessageBatchResultDecoder)
                
            )





{-| <p>Deletes the queue specified by the <code>QueueUrl</code>, regardless of the queue's contents. If the specified queue doesn't exist, Amazon SQS returns a successful response.</p> <important> <p>Be careful with the <code>DeleteQueue</code> action: When you delete a queue, any messages in the queue are no longer available. </p> </important> <p>When you delete a queue, the deletion process takes up to 60 seconds. Requests you send involving that queue during the 60 seconds might succeed. For example, a <code> <a>SendMessage</a> </code> request might succeed, but after 60 seconds the queue and the message you sent no longer exist.</p> <p>When you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`


-}

deleteQueue :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

deleteQueue queueUrl =
    
    let
        requestInput = DeleteQueueRequest
            
            queueUrl
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "DeleteQueue")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs deleteQueueRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "DeleteQueue"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Gets attributes for the specified queue.</p> <note> <p>To determine whether a queue is <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=first</code> </p> <p> <code>&amp;Attribute.2=second</code> </p>

__Required Parameters__

* `queueUrl` __:__ `String`


-}

getQueueAttributes :
  
    String ->
  
  
    ( GetQueueAttributesOptions -> GetQueueAttributesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueueAttributesResult)

getQueueAttributes queueUrl setOptions =
    
    let
        requestInput = GetQueueAttributesRequest
            
            queueUrl
            
            options.attributeNames
            
        
        options = setOptions (GetQueueAttributesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetQueueAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getQueueAttributesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetQueueAttributes"
                
                (AWS.Core.Decode.ResultDecoder "GetQueueAttributesResult" getQueueAttributesResultDecoder)
                
            )



{-| Options for a getQueueAttributes request
-}
type alias GetQueueAttributesOptions =
    {
    attributeNames : Maybe (List QueueAttributeName)
    }



{-| <p>Returns the URL of an existing Amazon SQS queue.</p> <p>To access a queue that belongs to another AWS account, use the <code>QueueOwnerAWSAccountId</code> parameter to specify the account ID of the queue's owner. The queue's owner must grant you permission to access the queue. For more information about shared queue access, see <code> <a>AddPermission</a> </code> or see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-writing-an-sqs-policy.html#write-messages-to-shared-queue">Allow Developers to Write Messages to a Shared Queue</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p>

__Required Parameters__

* `queueName` __:__ `String`


-}

getQueueUrl :
  
    String ->
  
  
    ( GetQueueUrlOptions -> GetQueueUrlOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper GetQueueUrlResult)

getQueueUrl queueName setOptions =
    
    let
        requestInput = GetQueueUrlRequest
            
            queueName
            
            options.queueOwnerAWSAccountId
            
        
        options = setOptions (GetQueueUrlOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "GetQueueUrl")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs getQueueUrlRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "GetQueueUrl"
                
                (AWS.Core.Decode.ResultDecoder "GetQueueUrlResult" getQueueUrlResultDecoder)
                
            )



{-| Options for a getQueueUrl request
-}
type alias GetQueueUrlOptions =
    {
    queueOwnerAWSAccountId : Maybe String
    }



{-| <p>Returns a list of your queues that have the <code>RedrivePolicy</code> queue attribute configured with a dead-letter queue.</p> <p>For more information about using dead-letter queues, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead-Letter Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>

__Required Parameters__

* `queueUrl` __:__ `String`


-}

listDeadLetterSourceQueues :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListDeadLetterSourceQueuesResult)

listDeadLetterSourceQueues queueUrl =
    
    let
        requestInput = ListDeadLetterSourceQueuesRequest
            
            queueUrl
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListDeadLetterSourceQueues")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listDeadLetterSourceQueuesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListDeadLetterSourceQueues"
                
                (AWS.Core.Decode.ResultDecoder "ListDeadLetterSourceQueuesResult" listDeadLetterSourceQueuesResultDecoder)
                
            )





{-| <p>List all cost allocation tags added to the specified Amazon SQS queue. For an overview, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`


-}

listQueueTags :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQueueTagsResult)

listQueueTags queueUrl =
    
    let
        requestInput = ListQueueTagsRequest
            
            queueUrl
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListQueueTags")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listQueueTagsRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListQueueTags"
                
                (AWS.Core.Decode.ResultDecoder "ListQueueTagsResult" listQueueTagsResultDecoder)
                
            )





{-| <p>Returns a list of your queues. The maximum number of queues that can be returned is 1,000. If you specify a value for the optional <code>QueueNamePrefix</code> parameter, only queues with a name that begins with the specified value are returned.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__



-}

listQueues :
  
  
    ( ListQueuesOptions -> ListQueuesOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ListQueuesResult)

listQueues setOptions =
    
    let
        requestInput = ListQueuesRequest
            
            options.queueNamePrefix
            
        
        options = setOptions (ListQueuesOptions Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ListQueues")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs listQueuesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ListQueues"
                
                (AWS.Core.Decode.ResultDecoder "ListQueuesResult" listQueuesResultDecoder)
                
            )



{-| Options for a listQueues request
-}
type alias ListQueuesOptions =
    {
    queueNamePrefix : Maybe String
    }



{-| <p>Deletes the messages in a queue specified by the <code>QueueURL</code> parameter.</p> <important> <p>When you use the <code>PurgeQueue</code> action, you can't retrieve any messages deleted from a queue.</p> <p>The message deletion process takes up to 60 seconds. We recommend waiting for 60 seconds regardless of your queue's size. </p> </important> <p>Messages sent to the queue <i>before</i> you call <code>PurgeQueue</code> might be received but are deleted within the next minute.</p> <p>Messages sent to the queue <i>after</i> you call <code>PurgeQueue</code> might be deleted while the queue is being purged.</p>

__Required Parameters__

* `queueUrl` __:__ `String`


-}

purgeQueue :
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

purgeQueue queueUrl =
    
    let
        requestInput = PurgeQueueRequest
            
            queueUrl
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "PurgeQueue")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs purgeQueueRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "PurgeQueue"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Retrieves one or more messages (up to 10), from the specified queue. Using the <code>WaitTimeSeconds</code> parameter enables long-poll support. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html">Amazon SQS Long Polling</a> in the <i>Amazon Simple Queue Service Developer Guide</i>. </p> <p>Short poll is the default behavior where a weighted random set of machines is sampled on a <code>ReceiveMessage</code> call. Thus, only the messages on the sampled machines are returned. If the number of messages in the queue is small (fewer than 1,000), you most likely get fewer messages than you requested per <code>ReceiveMessage</code> call. If the number of messages in the queue is extremely small, you might not receive any messages in a particular <code>ReceiveMessage</code> response. If this happens, repeat the request. </p> <p>For each message returned, the response includes the following:</p> <ul> <li> <p>The message body.</p> </li> <li> <p>An MD5 digest of the message body. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p> </li> <li> <p>The <code>MessageId</code> you received when you sent the message to the queue.</p> </li> <li> <p>The receipt handle.</p> </li> <li> <p>The message attributes.</p> </li> <li> <p>An MD5 digest of the message attributes.</p> </li> </ul> <p>The receipt handle is the identifier you must provide when deleting the message. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue and Message Identifiers</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>You can provide the <code>VisibilityTimeout</code> parameter in your request. The parameter is applied to the messages that Amazon SQS returns in the response. If you don't include the parameter, the overall visibility timeout for the queue is used for the returned messages. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>A message that isn't deleted or a message whose visibility isn't extended before the visibility timeout expires counts as a failed receive. Depending on the configuration of the queue, the message might be sent to the dead-letter queue.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`


-}

receiveMessage :
  
    String ->
  
  
    ( ReceiveMessageOptions -> ReceiveMessageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ReceiveMessageResult)

receiveMessage queueUrl setOptions =
    
    let
        requestInput = ReceiveMessageRequest
            
            queueUrl
            
            options.attributeNames
            
            options.messageAttributeNames
            
            options.maxNumberOfMessages
            
            options.visibilityTimeout
            
            options.waitTimeSeconds
            
            options.receiveRequestAttemptId
            
        
        options = setOptions (ReceiveMessageOptions Nothing Nothing Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "ReceiveMessage")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs receiveMessageRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "ReceiveMessage"
                
                (AWS.Core.Decode.ResultDecoder "ReceiveMessageResult" receiveMessageResultDecoder)
                
            )



{-| Options for a receiveMessage request
-}
type alias ReceiveMessageOptions =
    {
    attributeNames : Maybe (List QueueAttributeName),messageAttributeNames : Maybe (List String),maxNumberOfMessages : Maybe Int,visibilityTimeout : Maybe Int,waitTimeSeconds : Maybe Int,receiveRequestAttemptId : Maybe String
    }



{-| <p>Revokes any permissions in the queue policy that matches the specified <code>Label</code> parameter.</p> <note> <ul> <li> <p>Only the owner of a queue can remove permissions from it.</p> </li> <li> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p>To remove the ability to change queue permissions, you must deny permission to the <code>AddPermission</code>, <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions in your IAM policy.</p> </li> </ul> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `label` __:__ `String`


-}

removePermission :
  
    String ->
  
    String ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

removePermission queueUrl label =
    
    let
        requestInput = RemovePermissionRequest
            
            queueUrl
            
            label
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "RemovePermission")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs removePermissionRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "RemovePermission"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Delivers a message to the specified queue.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important>

__Required Parameters__

* `queueUrl` __:__ `String`
* `messageBody` __:__ `String`


-}

sendMessage :
  
    String ->
  
    String ->
  
  
    ( SendMessageOptions -> SendMessageOptions ) ->
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendMessageResult)

sendMessage queueUrl messageBody setOptions =
    
    let
        requestInput = SendMessageRequest
            
            queueUrl
            
            messageBody
            
            options.delaySeconds
            
            options.messageAttributes
            
            options.messageDeduplicationId
            
            options.messageGroupId
            
        
        options = setOptions (SendMessageOptions Nothing Nothing Nothing Nothing)
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SendMessage")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs sendMessageRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendMessage"
                
                (AWS.Core.Decode.ResultDecoder "SendMessageResult" sendMessageResultDecoder)
                
            )



{-| Options for a sendMessage request
-}
type alias SendMessageOptions =
    {
    delaySeconds : Maybe Int,messageAttributes : Maybe (Dict String MessageAttributeValue),messageDeduplicationId : Maybe String,messageGroupId : Maybe String
    }



{-| <p>Delivers up to ten messages to the specified queue. This is a batch version of <code> <a>SendMessage</a>.</code> For a FIFO queue, multiple messages within a single batch are enqueued in the order they are sent.</p> <p>The result of sending each message is reported individually in the response. Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> <p>The maximum allowed individual message size and the maximum total payload size (the sum of the individual lengths of all of the batched messages) are both 256 KB (262,144 bytes).</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important> <p>If you don't specify the <code>DelaySeconds</code> parameter for an entry, Amazon SQS uses the default value for the queue.</p> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=first</code> </p> <p> <code>&amp;Attribute.2=second</code> </p>

__Required Parameters__

* `queueUrl` __:__ `String`
* `entries` __:__ `(List SendMessageBatchRequestEntry)`


-}

sendMessageBatch :
  
    String ->
  
    (List SendMessageBatchRequestEntry) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper SendMessageBatchResult)

sendMessageBatch queueUrl entries =
    
    let
        requestInput = SendMessageBatchRequest
            
            queueUrl
            
            entries
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SendMessageBatch")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs sendMessageBatchRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SendMessageBatch"
                
                (AWS.Core.Decode.ResultDecoder "SendMessageBatchResult" sendMessageBatchResultDecoder)
                
            )





{-| <p>Sets the value of one or more queue attributes. When you change a queue's attributes, the change can take up to 60 seconds for most of the attributes to propagate throughout the Amazon SQS system. Changes made to the <code>MessageRetentionPeriod</code> attribute can take up to 15 minutes.</p> <note> <ul> <li> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </li> <li> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </li> <li> <p>To remove the ability to change queue permissions, you must deny permission to the <code>AddPermission</code>, <code>RemovePermission</code>, and <code>SetQueueAttributes</code> actions in your IAM policy.</p> </li> </ul> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}

setQueueAttributes :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

setQueueAttributes queueUrl attributes =
    
    let
        requestInput = SetQueueAttributesRequest
            
            queueUrl
            
            attributes
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "SetQueueAttributes")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs setQueueAttributesRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "SetQueueAttributes"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Add cost allocation tags to the specified Amazon SQS queue. For an overview, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <p>When you use queue tags, keep the following guidelines in mind:</p> <ul> <li> <p>Adding more than 50 tags to a queue isn't recommended.</p> </li> <li> <p>Tags don't have any semantic meaning. Amazon SQS interprets tags as character strings.</p> </li> <li> <p>Tags are case-sensitive.</p> </li> <li> <p>A new tag with a key identical to that of an existing tag overwrites the existing tag.</p> </li> <li> <p>Tagging actions are limited to 5 TPS per AWS account. If your application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p> </li> </ul> <p>For a full list of tag restrictions, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-limits.html#limits-queues">Limits Related to Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}

tagQueue :
  
    String ->
  
    (Dict String String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

tagQueue queueUrl tags =
    
    let
        requestInput = TagQueueRequest
            
            queueUrl
            
            tags
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "TagQueue")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs tagQueueRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "TagQueue"
                
                (AWS.Core.Decode.FixedResult ())
                
            )





{-| <p>Remove cost allocation tags from the specified Amazon SQS queue. For an overview, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-tags.html">Tagging Your Amazon SQS Queues</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <note> <p>Cross-account permissions don't apply to this action. For more information, see <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-customer-managed-policy-examples.html#grant-cross-account-permissions-to-role-and-user-name">Grant Cross-Account Permissions to a Role and a User Name</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}

untagQueue :
  
    String ->
  
    (List String) ->
  
  
    AWS.Core.Http.Request (AWS.Core.Decode.ResponseWrapper ())

untagQueue queueUrl tagKeys =
    
    let
        requestInput = UntagQueueRequest
            
            queueUrl
            
            tagKeys
            
        
    in
    
        AWS.Core.Http.request
            AWS.Core.Http.POST
            "/"

            
            -- ([("Action", "UntagQueue")]
            -- 
            --     |> AWS.Core.Encode.addRecordToQueryArgs untagQueueRequestEncoder "" requestInput
            -- 
            -- )
            

            
            AWS.Core.Http.emptyBody
            

            (AWS.Core.Decode.responseWrapperDecoder
                "UntagQueue"
                
                (AWS.Core.Decode.FixedResult ())
                
            )






{-| <p>Gives a detailed description of the result of an action on each entry in the request.</p>
-}
type alias BatchResultErrorEntry =
    { id : String
    , senderFault : Bool
    , code : String
    , message : Maybe String
    }



batchResultErrorEntryDecoder : JD.Decoder BatchResultErrorEntry
batchResultErrorEntryDecoder =
    JD.succeed BatchResultErrorEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["SenderFault", "senderFault"]
            JD.bool
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Code", "code"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Message", "message"]
            JD.string
        )
        




batchResultErrorEntryToString : BatchResultErrorEntry -> String -- List (String, String)
batchResultErrorEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "senderFault" "" -- val.senderFault
        
    --     |> Dict.insert
    --         "code" "" -- val.code
        
    --     |> Dict.insert
    --         "message" "" -- val.message
        
    --     |> Dict.toList
    ""



{-| <p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=your_receipt_handle</code> </p> <p> <code>&amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>
-}
type alias ChangeMessageVisibilityBatchRequestEntry =
    { id : String
    , receiptHandle : String
    , visibilityTimeout : Maybe Int
    }



changeMessageVisibilityBatchRequestEntryDecoder : JD.Decoder ChangeMessageVisibilityBatchRequestEntry
changeMessageVisibilityBatchRequestEntryDecoder =
    JD.succeed ChangeMessageVisibilityBatchRequestEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReceiptHandle", "receiptHandle"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["VisibilityTimeout", "visibilityTimeout"]
            JD.int
        )
        




changeMessageVisibilityBatchRequestEntryToString : ChangeMessageVisibilityBatchRequestEntry -> String -- List (String, String)
changeMessageVisibilityBatchRequestEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "receiptHandle" "" -- val.receiptHandle
        
    --     |> Dict.insert
    --         "visibilityTimeout" "" -- val.visibilityTimeout
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from changeMessageVisibilityBat
-}
type alias ChangeMessageVisibilityBatchResult =
    { successful : (List ChangeMessageVisibilityBatchResultEntry)
    , failed : (List BatchResultErrorEntry)
    }



changeMessageVisibilityBatchResultDecoder : JD.Decoder ChangeMessageVisibilityBatchResult
changeMessageVisibilityBatchResultDecoder =
    JD.succeed ChangeMessageVisibilityBatchResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Successful", "successful"]
            (JD.list changeMessageVisibilityBatchResultEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Failed", "failed"]
            (JD.list batchResultErrorEntryDecoder)
        )
        




changeMessageVisibilityBatchResultToString : ChangeMessageVisibilityBatchResult -> String -- List (String, String)
changeMessageVisibilityBatchResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successful" "" -- val.successful
        
    --     |> Dict.insert
    --         "failed" "" -- val.failed
        
    --     |> Dict.toList
    ""



{-| <p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>
-}
type alias ChangeMessageVisibilityBatchResultEntry =
    { id : String
    }



changeMessageVisibilityBatchResultEntryDecoder : JD.Decoder ChangeMessageVisibilityBatchResultEntry
changeMessageVisibilityBatchResultEntryDecoder =
    JD.succeed ChangeMessageVisibilityBatchResultEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        




changeMessageVisibilityBatchResultEntryToString : ChangeMessageVisibilityBatchResultEntry -> String -- List (String, String)
changeMessageVisibilityBatchResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from createQue
-}
type alias CreateQueueResult =
    { queueUrl : Maybe String
    }



createQueueResultDecoder : JD.Decoder CreateQueueResult
createQueueResultDecoder =
    JD.succeed CreateQueueResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QueueUrl", "queueUrl"]
            JD.string
        )
        




createQueueResultToString : CreateQueueResult -> String -- List (String, String)
createQueueResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queueUrl" "" -- val.queueUrl
        
    --     |> Dict.toList
    ""



{-| <p>Encloses a receipt handle and an identifier for it.</p>
-}
type alias DeleteMessageBatchRequestEntry =
    { id : String
    , receiptHandle : String
    }



deleteMessageBatchRequestEntryDecoder : JD.Decoder DeleteMessageBatchRequestEntry
deleteMessageBatchRequestEntryDecoder =
    JD.succeed DeleteMessageBatchRequestEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["ReceiptHandle", "receiptHandle"]
            JD.string
        )
        




deleteMessageBatchRequestEntryToString : DeleteMessageBatchRequestEntry -> String -- List (String, String)
deleteMessageBatchRequestEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "receiptHandle" "" -- val.receiptHandle
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from deleteMessageBat
-}
type alias DeleteMessageBatchResult =
    { successful : (List DeleteMessageBatchResultEntry)
    , failed : (List BatchResultErrorEntry)
    }



deleteMessageBatchResultDecoder : JD.Decoder DeleteMessageBatchResult
deleteMessageBatchResultDecoder =
    JD.succeed DeleteMessageBatchResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Successful", "successful"]
            (JD.list deleteMessageBatchResultEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Failed", "failed"]
            (JD.list batchResultErrorEntryDecoder)
        )
        




deleteMessageBatchResultToString : DeleteMessageBatchResult -> String -- List (String, String)
deleteMessageBatchResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successful" "" -- val.successful
        
    --     |> Dict.insert
    --         "failed" "" -- val.failed
        
    --     |> Dict.toList
    ""



{-| <p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>
-}
type alias DeleteMessageBatchResultEntry =
    { id : String
    }



deleteMessageBatchResultEntryDecoder : JD.Decoder DeleteMessageBatchResultEntry
deleteMessageBatchResultEntryDecoder =
    JD.succeed DeleteMessageBatchResultEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        




deleteMessageBatchResultEntryToString : DeleteMessageBatchResultEntry -> String -- List (String, String)
deleteMessageBatchResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getQueueAttribut
-}
type alias GetQueueAttributesResult =
    { attributes : Maybe (Dict String String)
    }



getQueueAttributesResultDecoder : JD.Decoder GetQueueAttributesResult
getQueueAttributesResultDecoder =
    JD.succeed GetQueueAttributesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        




getQueueAttributesResultToString : GetQueueAttributesResult -> String -- List (String, String)
getQueueAttributesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from getQueueU
-}
type alias GetQueueUrlResult =
    { queueUrl : Maybe String
    }



getQueueUrlResultDecoder : JD.Decoder GetQueueUrlResult
getQueueUrlResultDecoder =
    JD.succeed GetQueueUrlResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QueueUrl", "queueUrl"]
            JD.string
        )
        




getQueueUrlResultToString : GetQueueUrlResult -> String -- List (String, String)
getQueueUrlResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queueUrl" "" -- val.queueUrl
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listDeadLetterSourceQueu
-}
type alias ListDeadLetterSourceQueuesResult =
    { queueUrls : (List String)
    }



listDeadLetterSourceQueuesResultDecoder : JD.Decoder ListDeadLetterSourceQueuesResult
listDeadLetterSourceQueuesResultDecoder =
    JD.succeed ListDeadLetterSourceQueuesResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["queueUrls", "QueueUrls"]
            (JD.list JD.string)
        )
        




listDeadLetterSourceQueuesResultToString : ListDeadLetterSourceQueuesResult -> String -- List (String, String)
listDeadLetterSourceQueuesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queueUrls" "" -- val.queueUrls
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listQueueTa
-}
type alias ListQueueTagsResult =
    { tags : Maybe (Dict String String)
    }



listQueueTagsResultDecoder : JD.Decoder ListQueueTagsResult
listQueueTagsResultDecoder =
    JD.succeed ListQueueTagsResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Tags", "tags"]
            (AWS.Core.Decode.dict JD.string)
        )
        




listQueueTagsResultToString : ListQueueTagsResult -> String -- List (String, String)
listQueueTagsResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "tags" "" -- val.tags
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from listQueu
-}
type alias ListQueuesResult =
    { queueUrls : Maybe (List String)
    }



listQueuesResultDecoder : JD.Decoder ListQueuesResult
listQueuesResultDecoder =
    JD.succeed ListQueuesResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["QueueUrls", "queueUrls"]
            (JD.list JD.string)
        )
        




listQueuesResultToString : ListQueuesResult -> String -- List (String, String)
listQueuesResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "queueUrls" "" -- val.queueUrls
        
    --     |> Dict.toList
    ""



{-| <p>An Amazon SQS message.</p>
-}
type alias Message =
    { messageId : Maybe String
    , receiptHandle : Maybe String
    , mD5OfBody : Maybe String
    , body : Maybe String
    , attributes : Maybe (Dict String String)
    , mD5OfMessageAttributes : Maybe String
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    }



messageDecoder : JD.Decoder Message
messageDecoder =
    JD.succeed Message
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageId", "messageId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["ReceiptHandle", "receiptHandle"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MD5OfBody", "mD5OfBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Body", "body"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Attributes", "attributes"]
            (AWS.Core.Decode.dict JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MD5OfMessageAttributes", "mD5OfMessageAttributes"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageAttributes", "messageAttributes"]
            (AWS.Core.Decode.dict messageAttributeValueDecoder)
        )
        




messageToString : Message -> String -- List (String, String)
messageToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
        
    --     |> Dict.insert
    --         "receiptHandle" "" -- val.receiptHandle
        
    --     |> Dict.insert
    --         "mD5OfBody" "" -- val.mD5OfBody
        
    --     |> Dict.insert
    --         "body" "" -- val.body
        
    --     |> Dict.insert
    --         "attributes" "" -- val.attributes
        
    --     |> Dict.insert
    --         "mD5OfMessageAttributes" "" -- val.mD5OfMessageAttributes
        
    --     |> Dict.insert
    --         "messageAttributes" "" -- val.messageAttributes
        
    --     |> Dict.toList
    ""



{-| <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
-}
type alias MessageAttributeValue =
    { stringValue : Maybe String
    , binaryValue : Maybe String
    , stringListValues : Maybe (List String)
    , binaryListValues : Maybe (List String)
    , dataType : String
    }



messageAttributeValueDecoder : JD.Decoder MessageAttributeValue
messageAttributeValueDecoder =
    JD.succeed MessageAttributeValue
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StringValue", "stringValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BinaryValue", "binaryValue"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["StringListValues", "stringListValues"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["BinaryListValues", "binaryListValues"]
            (JD.list JD.string)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["DataType", "dataType"]
            JD.string
        )
        




messageAttributeValueToString : MessageAttributeValue -> String -- List (String, String)
messageAttributeValueToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "stringValue" "" -- val.stringValue
        
    --     |> Dict.insert
    --         "binaryValue" "" -- val.binaryValue
        
    --     |> Dict.insert
    --         "stringListValues" "" -- val.stringListValues
        
    --     |> Dict.insert
    --         "binaryListValues" "" -- val.binaryListValues
        
    --     |> Dict.insert
    --         "dataType" "" -- val.dataType
        
    --     |> Dict.toList
    ""



{-| One of

* `MessageSystemAttributeName_SenderId`
* `MessageSystemAttributeName_SentTimestamp`
* `MessageSystemAttributeName_ApproximateReceiveCount`
* `MessageSystemAttributeName_ApproximateFirstReceiveTimestamp`
* `MessageSystemAttributeName_SequenceNumber`
* `MessageSystemAttributeName_MessageDeduplicationId`
* `MessageSystemAttributeName_MessageGroupId`

-}
type MessageSystemAttributeName
    = MessageSystemAttributeName_SenderId
    | MessageSystemAttributeName_SentTimestamp
    | MessageSystemAttributeName_ApproximateReceiveCount
    | MessageSystemAttributeName_ApproximateFirstReceiveTimestamp
    | MessageSystemAttributeName_SequenceNumber
    | MessageSystemAttributeName_MessageDeduplicationId
    | MessageSystemAttributeName_MessageGroupId



messageSystemAttributeNameDecoder : JD.Decoder MessageSystemAttributeName
messageSystemAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SenderId" ->
                        JD.succeed MessageSystemAttributeName_SenderId

                    "SentTimestamp" ->
                        JD.succeed MessageSystemAttributeName_SentTimestamp

                    "ApproximateReceiveCount" ->
                        JD.succeed MessageSystemAttributeName_ApproximateReceiveCount

                    "ApproximateFirstReceiveTimestamp" ->
                        JD.succeed MessageSystemAttributeName_ApproximateFirstReceiveTimestamp

                    "SequenceNumber" ->
                        JD.succeed MessageSystemAttributeName_SequenceNumber

                    "MessageDeduplicationId" ->
                        JD.succeed MessageSystemAttributeName_MessageDeduplicationId

                    "MessageGroupId" ->
                        JD.succeed MessageSystemAttributeName_MessageGroupId


                    _ ->
                        JD.fail "bad thing"
            )




messageSystemAttributeNameToString : MessageSystemAttributeName -> String
messageSystemAttributeNameToString val =
    case val of
        MessageSystemAttributeName_SenderId ->
            "SenderId"

        MessageSystemAttributeName_SentTimestamp ->
            "SentTimestamp"

        MessageSystemAttributeName_ApproximateReceiveCount ->
            "ApproximateReceiveCount"

        MessageSystemAttributeName_ApproximateFirstReceiveTimestamp ->
            "ApproximateFirstReceiveTimestamp"

        MessageSystemAttributeName_SequenceNumber ->
            "SequenceNumber"

        MessageSystemAttributeName_MessageDeduplicationId ->
            "MessageDeduplicationId"

        MessageSystemAttributeName_MessageGroupId ->
            "MessageGroupId"




{-| One of

* `QueueAttributeName_All`
* `QueueAttributeName_Policy`
* `QueueAttributeName_VisibilityTimeout`
* `QueueAttributeName_MaximumMessageSize`
* `QueueAttributeName_MessageRetentionPeriod`
* `QueueAttributeName_ApproximateNumberOfMessages`
* `QueueAttributeName_ApproximateNumberOfMessagesNotVisible`
* `QueueAttributeName_CreatedTimestamp`
* `QueueAttributeName_LastModifiedTimestamp`
* `QueueAttributeName_QueueArn`
* `QueueAttributeName_ApproximateNumberOfMessagesDelayed`
* `QueueAttributeName_DelaySeconds`
* `QueueAttributeName_ReceiveMessageWaitTimeSeconds`
* `QueueAttributeName_RedrivePolicy`
* `QueueAttributeName_FifoQueue`
* `QueueAttributeName_ContentBasedDeduplication`
* `QueueAttributeName_KmsMasterKeyId`
* `QueueAttributeName_KmsDataKeyReusePeriodSeconds`

-}
type QueueAttributeName
    = QueueAttributeName_All
    | QueueAttributeName_Policy
    | QueueAttributeName_VisibilityTimeout
    | QueueAttributeName_MaximumMessageSize
    | QueueAttributeName_MessageRetentionPeriod
    | QueueAttributeName_ApproximateNumberOfMessages
    | QueueAttributeName_ApproximateNumberOfMessagesNotVisible
    | QueueAttributeName_CreatedTimestamp
    | QueueAttributeName_LastModifiedTimestamp
    | QueueAttributeName_QueueArn
    | QueueAttributeName_ApproximateNumberOfMessagesDelayed
    | QueueAttributeName_DelaySeconds
    | QueueAttributeName_ReceiveMessageWaitTimeSeconds
    | QueueAttributeName_RedrivePolicy
    | QueueAttributeName_FifoQueue
    | QueueAttributeName_ContentBasedDeduplication
    | QueueAttributeName_KmsMasterKeyId
    | QueueAttributeName_KmsDataKeyReusePeriodSeconds



queueAttributeNameDecoder : JD.Decoder QueueAttributeName
queueAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "All" ->
                        JD.succeed QueueAttributeName_All

                    "Policy" ->
                        JD.succeed QueueAttributeName_Policy

                    "VisibilityTimeout" ->
                        JD.succeed QueueAttributeName_VisibilityTimeout

                    "MaximumMessageSize" ->
                        JD.succeed QueueAttributeName_MaximumMessageSize

                    "MessageRetentionPeriod" ->
                        JD.succeed QueueAttributeName_MessageRetentionPeriod

                    "ApproximateNumberOfMessages" ->
                        JD.succeed QueueAttributeName_ApproximateNumberOfMessages

                    "ApproximateNumberOfMessagesNotVisible" ->
                        JD.succeed QueueAttributeName_ApproximateNumberOfMessagesNotVisible

                    "CreatedTimestamp" ->
                        JD.succeed QueueAttributeName_CreatedTimestamp

                    "LastModifiedTimestamp" ->
                        JD.succeed QueueAttributeName_LastModifiedTimestamp

                    "QueueArn" ->
                        JD.succeed QueueAttributeName_QueueArn

                    "ApproximateNumberOfMessagesDelayed" ->
                        JD.succeed QueueAttributeName_ApproximateNumberOfMessagesDelayed

                    "DelaySeconds" ->
                        JD.succeed QueueAttributeName_DelaySeconds

                    "ReceiveMessageWaitTimeSeconds" ->
                        JD.succeed QueueAttributeName_ReceiveMessageWaitTimeSeconds

                    "RedrivePolicy" ->
                        JD.succeed QueueAttributeName_RedrivePolicy

                    "FifoQueue" ->
                        JD.succeed QueueAttributeName_FifoQueue

                    "ContentBasedDeduplication" ->
                        JD.succeed QueueAttributeName_ContentBasedDeduplication

                    "KmsMasterKeyId" ->
                        JD.succeed QueueAttributeName_KmsMasterKeyId

                    "KmsDataKeyReusePeriodSeconds" ->
                        JD.succeed QueueAttributeName_KmsDataKeyReusePeriodSeconds


                    _ ->
                        JD.fail "bad thing"
            )




queueAttributeNameToString : QueueAttributeName -> String
queueAttributeNameToString val =
    case val of
        QueueAttributeName_All ->
            "All"

        QueueAttributeName_Policy ->
            "Policy"

        QueueAttributeName_VisibilityTimeout ->
            "VisibilityTimeout"

        QueueAttributeName_MaximumMessageSize ->
            "MaximumMessageSize"

        QueueAttributeName_MessageRetentionPeriod ->
            "MessageRetentionPeriod"

        QueueAttributeName_ApproximateNumberOfMessages ->
            "ApproximateNumberOfMessages"

        QueueAttributeName_ApproximateNumberOfMessagesNotVisible ->
            "ApproximateNumberOfMessagesNotVisible"

        QueueAttributeName_CreatedTimestamp ->
            "CreatedTimestamp"

        QueueAttributeName_LastModifiedTimestamp ->
            "LastModifiedTimestamp"

        QueueAttributeName_QueueArn ->
            "QueueArn"

        QueueAttributeName_ApproximateNumberOfMessagesDelayed ->
            "ApproximateNumberOfMessagesDelayed"

        QueueAttributeName_DelaySeconds ->
            "DelaySeconds"

        QueueAttributeName_ReceiveMessageWaitTimeSeconds ->
            "ReceiveMessageWaitTimeSeconds"

        QueueAttributeName_RedrivePolicy ->
            "RedrivePolicy"

        QueueAttributeName_FifoQueue ->
            "FifoQueue"

        QueueAttributeName_ContentBasedDeduplication ->
            "ContentBasedDeduplication"

        QueueAttributeName_KmsMasterKeyId ->
            "KmsMasterKeyId"

        QueueAttributeName_KmsDataKeyReusePeriodSeconds ->
            "KmsDataKeyReusePeriodSeconds"




{-| Type of HTTP response from receiveMessa
-}
type alias ReceiveMessageResult =
    { messages : Maybe (List Message)
    }



receiveMessageResultDecoder : JD.Decoder ReceiveMessageResult
receiveMessageResultDecoder =
    JD.succeed ReceiveMessageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["Messages", "messages"]
            (JD.list messageDecoder)
        )
        




receiveMessageResultToString : ReceiveMessageResult -> String -- List (String, String)
receiveMessageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "messages" "" -- val.messages
        
    --     |> Dict.toList
    ""



{-| <p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>
-}
type alias SendMessageBatchRequestEntry =
    { id : String
    , messageBody : String
    , delaySeconds : Maybe Int
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    , messageDeduplicationId : Maybe String
    , messageGroupId : Maybe String
    }



sendMessageBatchRequestEntryDecoder : JD.Decoder SendMessageBatchRequestEntry
sendMessageBatchRequestEntryDecoder =
    JD.succeed SendMessageBatchRequestEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MessageBody", "messageBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["DelaySeconds", "delaySeconds"]
            JD.int
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageAttributes", "messageAttributes"]
            (AWS.Core.Decode.dict messageAttributeValueDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageDeduplicationId", "messageDeduplicationId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageGroupId", "messageGroupId"]
            JD.string
        )
        




sendMessageBatchRequestEntryToString : SendMessageBatchRequestEntry -> String -- List (String, String)
sendMessageBatchRequestEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "messageBody" "" -- val.messageBody
        
    --     |> Dict.insert
    --         "delaySeconds" "" -- val.delaySeconds
        
    --     |> Dict.insert
    --         "messageAttributes" "" -- val.messageAttributes
        
    --     |> Dict.insert
    --         "messageDeduplicationId" "" -- val.messageDeduplicationId
        
    --     |> Dict.insert
    --         "messageGroupId" "" -- val.messageGroupId
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sendMessageBat
-}
type alias SendMessageBatchResult =
    { successful : (List SendMessageBatchResultEntry)
    , failed : (List BatchResultErrorEntry)
    }



sendMessageBatchResultDecoder : JD.Decoder SendMessageBatchResult
sendMessageBatchResultDecoder =
    JD.succeed SendMessageBatchResult
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Successful", "successful"]
            (JD.list sendMessageBatchResultEntryDecoder)
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Failed", "failed"]
            (JD.list batchResultErrorEntryDecoder)
        )
        




sendMessageBatchResultToString : SendMessageBatchResult -> String -- List (String, String)
sendMessageBatchResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "successful" "" -- val.successful
        
    --     |> Dict.insert
    --         "failed" "" -- val.failed
        
    --     |> Dict.toList
    ""



{-| <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>
-}
type alias SendMessageBatchResultEntry =
    { id : String
    , messageId : String
    , mD5OfMessageBody : String
    , mD5OfMessageAttributes : Maybe String
    , sequenceNumber : Maybe String
    }



sendMessageBatchResultEntryDecoder : JD.Decoder SendMessageBatchResultEntry
sendMessageBatchResultEntryDecoder =
    JD.succeed SendMessageBatchResultEntry
        
        |> JDP.custom (AWS.Core.Decode.required
            ["Id", "id"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MessageId", "messageId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.required
            ["MD5OfMessageBody", "mD5OfMessageBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MD5OfMessageAttributes", "mD5OfMessageAttributes"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SequenceNumber", "sequenceNumber"]
            JD.string
        )
        




sendMessageBatchResultEntryToString : SendMessageBatchResultEntry -> String -- List (String, String)
sendMessageBatchResultEntryToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "id" "" -- val.id
        
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
        
    --     |> Dict.insert
    --         "mD5OfMessageBody" "" -- val.mD5OfMessageBody
        
    --     |> Dict.insert
    --         "mD5OfMessageAttributes" "" -- val.mD5OfMessageAttributes
        
    --     |> Dict.insert
    --         "sequenceNumber" "" -- val.sequenceNumber
        
    --     |> Dict.toList
    ""



{-| Type of HTTP response from sendMessa
-}
type alias SendMessageResult =
    { mD5OfMessageBody : Maybe String
    , mD5OfMessageAttributes : Maybe String
    , messageId : Maybe String
    , sequenceNumber : Maybe String
    }



sendMessageResultDecoder : JD.Decoder SendMessageResult
sendMessageResultDecoder =
    JD.succeed SendMessageResult
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MD5OfMessageBody", "mD5OfMessageBody"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MD5OfMessageAttributes", "mD5OfMessageAttributes"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["MessageId", "messageId"]
            JD.string
        )
        
        |> JDP.custom (AWS.Core.Decode.optional
            ["SequenceNumber", "sequenceNumber"]
            JD.string
        )
        




sendMessageResultToString : SendMessageResult -> String -- List (String, String)
sendMessageResultToString val =
    -- Dict.empty
        
    --     |> Dict.insert
    --         "mD5OfMessageBody" "" -- val.mD5OfMessageBody
        
    --     |> Dict.insert
    --         "mD5OfMessageAttributes" "" -- val.mD5OfMessageAttributes
        
    --     |> Dict.insert
    --         "messageId" "" -- val.messageId
        
    --     |> Dict.insert
    --         "sequenceNumber" "" -- val.sequenceNumber
        
    --     |> Dict.toList
    ""






{-| <p/>
-}
type alias AddPermissionRequest =
    { queueUrl : String
    , label : String
    , aWSAccountIds : (List String)
    , actions : (List String)
    }


{-| <p/>
-}
type alias ChangeMessageVisibilityBatchRequest =
    { queueUrl : String
    , entries : (List ChangeMessageVisibilityBatchRequestEntry)
    }


{-| undefined
-}
type alias ChangeMessageVisibilityRequest =
    { queueUrl : String
    , receiptHandle : String
    , visibilityTimeout : Int
    }


{-| <p/>
-}
type alias CreateQueueRequest =
    { queueName : String
    , attributes : Maybe (Dict String String)
    }


{-| <p/>
-}
type alias DeleteMessageBatchRequest =
    { queueUrl : String
    , entries : (List DeleteMessageBatchRequestEntry)
    }


{-| <p/>
-}
type alias DeleteMessageRequest =
    { queueUrl : String
    , receiptHandle : String
    }


{-| <p/>
-}
type alias DeleteQueueRequest =
    { queueUrl : String
    }


{-| <p/>
-}
type alias GetQueueAttributesRequest =
    { queueUrl : String
    , attributeNames : Maybe (List QueueAttributeName)
    }


{-| <p/>
-}
type alias GetQueueUrlRequest =
    { queueName : String
    , queueOwnerAWSAccountId : Maybe String
    }


{-| <p/>
-}
type alias ListDeadLetterSourceQueuesRequest =
    { queueUrl : String
    }


{-| undefined
-}
type alias ListQueueTagsRequest =
    { queueUrl : String
    }


{-| <p/>
-}
type alias ListQueuesRequest =
    { queueNamePrefix : Maybe String
    }


{-| <p/>
-}
type alias PurgeQueueRequest =
    { queueUrl : String
    }


{-| <p/>
-}
type alias ReceiveMessageRequest =
    { queueUrl : String
    , attributeNames : Maybe (List QueueAttributeName)
    , messageAttributeNames : Maybe (List String)
    , maxNumberOfMessages : Maybe Int
    , visibilityTimeout : Maybe Int
    , waitTimeSeconds : Maybe Int
    , receiveRequestAttemptId : Maybe String
    }


{-| <p/>
-}
type alias RemovePermissionRequest =
    { queueUrl : String
    , label : String
    }


{-| <p/>
-}
type alias SendMessageBatchRequest =
    { queueUrl : String
    , entries : (List SendMessageBatchRequestEntry)
    }


{-| <p/>
-}
type alias SendMessageRequest =
    { queueUrl : String
    , messageBody : String
    , delaySeconds : Maybe Int
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    , messageDeduplicationId : Maybe String
    , messageGroupId : Maybe String
    }


{-| <p/>
-}
type alias SetQueueAttributesRequest =
    { queueUrl : String
    , attributes : (Dict String String)
    }


{-| undefined
-}
type alias TagQueueRequest =
    { queueUrl : String
    , tags : (Dict String String)
    }


{-| undefined
-}
type alias UntagQueueRequest =
    { queueUrl : String
    , tagKeys : (List String)
    }








addPermissionRequestEncoder : AddPermissionRequest -> List (String, String)
addPermissionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Label" data.label
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs identity "") "AWSAccountIds" data.aWSAccountIds
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs identity "") "Actions" data.actions
        
        






batchResultErrorEntryEncoder : BatchResultErrorEntry -> List (String, String)
batchResultErrorEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs AWS.Core.Encode.bool "SenderFault" data.senderFault
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Code" data.code
        
        
        
        |> (case data.message of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Message" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






changeMessageVisibilityBatchRequestEncoder : ChangeMessageVisibilityBatchRequest -> List (String, String)
changeMessageVisibilityBatchRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs changeMessageVisibilityBatchRequestEntryEncoder "") "Entries" data.entries
        
        






changeMessageVisibilityBatchRequestEntryEncoder : ChangeMessageVisibilityBatchRequestEntry -> List (String, String)
changeMessageVisibilityBatchRequestEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReceiptHandle" data.receiptHandle
        
        
        
        |> (case data.visibilityTimeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "VisibilityTimeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






changeMessageVisibilityBatchResultEncoder : ChangeMessageVisibilityBatchResult -> List (String, String)
changeMessageVisibilityBatchResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs changeMessageVisibilityBatchResultEntryEncoder "") "Successful" data.successful
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs batchResultErrorEntryEncoder "") "Failed" data.failed
        
        






changeMessageVisibilityBatchResultEntryEncoder : ChangeMessageVisibilityBatchResultEntry -> List (String, String)
changeMessageVisibilityBatchResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        






changeMessageVisibilityRequestEncoder : ChangeMessageVisibilityRequest -> List (String, String)
changeMessageVisibilityRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReceiptHandle" data.receiptHandle
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs String.fromInt "VisibilityTimeout" data.visibilityTimeout
        
        






createQueueRequestEncoder : CreateQueueRequest -> List (String, String)
createQueueRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueName" data.queueName
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






createQueueResultEncoder : CreateQueueResult -> List (String, String)
createQueueResultEncoder data =
    []
        
        
        |> (case data.queueUrl of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






deleteMessageBatchRequestEncoder : DeleteMessageBatchRequest -> List (String, String)
deleteMessageBatchRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs deleteMessageBatchRequestEntryEncoder "") "Entries" data.entries
        
        






deleteMessageBatchRequestEntryEncoder : DeleteMessageBatchRequestEntry -> List (String, String)
deleteMessageBatchRequestEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReceiptHandle" data.receiptHandle
        
        






deleteMessageBatchResultEncoder : DeleteMessageBatchResult -> List (String, String)
deleteMessageBatchResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs deleteMessageBatchResultEntryEncoder "") "Successful" data.successful
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs batchResultErrorEntryEncoder "") "Failed" data.failed
        
        






deleteMessageBatchResultEntryEncoder : DeleteMessageBatchResultEntry -> List (String, String)
deleteMessageBatchResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        






deleteMessageRequestEncoder : DeleteMessageRequest -> List (String, String)
deleteMessageRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "ReceiptHandle" data.receiptHandle
        
        






deleteQueueRequestEncoder : DeleteQueueRequest -> List (String, String)
deleteQueueRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        






getQueueAttributesRequestEncoder : GetQueueAttributesRequest -> List (String, String)
getQueueAttributesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> (case data.attributeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs queueAttributeNameToString "") "AttributeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getQueueAttributesResultEncoder : GetQueueAttributesResult -> List (String, String)
getQueueAttributesResultEncoder data =
    []
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getQueueUrlRequestEncoder : GetQueueUrlRequest -> List (String, String)
getQueueUrlRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueName" data.queueName
        
        
        
        |> (case data.queueOwnerAWSAccountId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "QueueOwnerAWSAccountId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






getQueueUrlResultEncoder : GetQueueUrlResult -> List (String, String)
getQueueUrlResultEncoder data =
    []
        
        
        |> (case data.queueUrl of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listDeadLetterSourceQueuesRequestEncoder : ListDeadLetterSourceQueuesRequest -> List (String, String)
listDeadLetterSourceQueuesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        






listDeadLetterSourceQueuesResultEncoder : ListDeadLetterSourceQueuesResult -> List (String, String)
listDeadLetterSourceQueuesResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs identity "") "queueUrls" data.queueUrls
        
        






listQueueTagsRequestEncoder : ListQueueTagsRequest -> List (String, String)
listQueueTagsRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        






listQueueTagsResultEncoder : ListQueueTagsResult -> List (String, String)
listQueueTagsResultEncoder data =
    []
        
        
        |> (case data.tags of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Tags" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listQueuesRequestEncoder : ListQueuesRequest -> List (String, String)
listQueuesRequestEncoder data =
    []
        
        
        |> (case data.queueNamePrefix of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "QueueNamePrefix" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






listQueuesResultEncoder : ListQueuesResult -> List (String, String)
listQueuesResultEncoder data =
    []
        
        
        |> (case data.queueUrls of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs identity "") "QueueUrls" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






messageEncoder : Message -> List (String, String)
messageEncoder data =
    []
        
        
        |> (case data.messageId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.receiptHandle of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReceiptHandle" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.mD5OfBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MD5OfBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.body of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "Body" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.attributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.mD5OfMessageAttributes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MD5OfMessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageAttributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (messageAttributeValueToString) "MessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






messageAttributeValueEncoder : MessageAttributeValue -> List (String, String)
messageAttributeValueEncoder data =
    []
        
        
        |> (case data.stringValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "StringValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.binaryValue of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "BinaryValue" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.stringListValues of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "StringListValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.binaryListValues of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs False (AWS.Core.Encode.addOneToQueryArgs identity "") "BinaryListValues" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "DataType" data.dataType
        
        










purgeQueueRequestEncoder : PurgeQueueRequest -> List (String, String)
purgeQueueRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        










receiveMessageRequestEncoder : ReceiveMessageRequest -> List (String, String)
receiveMessageRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> (case data.attributeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs queueAttributeNameToString "") "AttributeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageAttributeNames of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs identity "") "MessageAttributeNames" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.maxNumberOfMessages of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "MaxNumberOfMessages" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.visibilityTimeout of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "VisibilityTimeout" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.waitTimeSeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "WaitTimeSeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.receiveRequestAttemptId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "ReceiveRequestAttemptId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






receiveMessageResultEncoder : ReceiveMessageResult -> List (String, String)
receiveMessageResultEncoder data =
    []
        
        
        |> (case data.messages of
            Just value ->
                AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs messageEncoder "") "Messages" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






removePermissionRequestEncoder : RemovePermissionRequest -> List (String, String)
removePermissionRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Label" data.label
        
        






sendMessageBatchRequestEncoder : SendMessageBatchRequest -> List (String, String)
sendMessageBatchRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs sendMessageBatchRequestEntryEncoder "") "Entries" data.entries
        
        






sendMessageBatchRequestEntryEncoder : SendMessageBatchRequestEntry -> List (String, String)
sendMessageBatchRequestEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MessageBody" data.messageBody
        
        
        
        |> (case data.delaySeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DelaySeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageAttributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (messageAttributeValueToString) "MessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageDeduplicationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageDeduplicationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageGroupId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageGroupId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sendMessageBatchResultEncoder : SendMessageBatchResult -> List (String, String)
sendMessageBatchResultEncoder data =
    []
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs sendMessageBatchResultEntryEncoder "") "Successful" data.successful
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addRecordToQueryArgs batchResultErrorEntryEncoder "") "Failed" data.failed
        
        






sendMessageBatchResultEntryEncoder : SendMessageBatchResultEntry -> List (String, String)
sendMessageBatchResultEntryEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "Id" data.id
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MessageId" data.messageId
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MD5OfMessageBody" data.mD5OfMessageBody
        
        
        
        |> (case data.mD5OfMessageAttributes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MD5OfMessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sequenceNumber of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SequenceNumber" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sendMessageRequestEncoder : SendMessageRequest -> List (String, String)
sendMessageRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "MessageBody" data.messageBody
        
        
        
        |> (case data.delaySeconds of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs String.fromInt "DelaySeconds" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageAttributes of
            Just value ->
                AWS.Core.Encode.addDictToQueryArgs (messageAttributeValueToString) "MessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageDeduplicationId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageDeduplicationId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageGroupId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageGroupId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






sendMessageResultEncoder : SendMessageResult -> List (String, String)
sendMessageResultEncoder data =
    []
        
        
        |> (case data.mD5OfMessageBody of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MD5OfMessageBody" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.mD5OfMessageAttributes of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MD5OfMessageAttributes" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.messageId of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "MessageId" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        
        
        |> (case data.sequenceNumber of
            Just value ->
                AWS.Core.Encode.addOneToQueryArgs identity "SequenceNumber" value
            Nothing ->
                AWS.Core.Encode.unchangedQueryArgs
        )
        
        






setQueueAttributesRequestEncoder : SetQueueAttributesRequest -> List (String, String)
setQueueAttributesRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addDictToQueryArgs (identity) "Attributes" data.attributes
        
        






tagQueueRequestEncoder : TagQueueRequest -> List (String, String)
tagQueueRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addDictToQueryArgs (identity) "Tags" data.tags
        
        






untagQueueRequestEncoder : UntagQueueRequest -> List (String, String)
untagQueueRequestEncoder data =
    []
        
        
        |> AWS.Core.Encode.addOneToQueryArgs identity "QueueUrl" data.queueUrl
        
        
        
        |> AWS.Core.Encode.addListToQueryArgs True (AWS.Core.Encode.addOneToQueryArgs identity "") "TagKeys" data.tagKeys
        
        



