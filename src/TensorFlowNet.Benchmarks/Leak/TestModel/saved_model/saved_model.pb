��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
+
IsNan
x"T
y
"
Ttype:
2
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
�
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12v2.4.0-49-g85c8b2a817f8�u
�
enc/conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameenc/conv1d/kernel
{
%enc/conv1d/kernel/Read/ReadVariableOpReadVariableOpenc/conv1d/kernel*"
_output_shapes
:*
dtype0
v
enc/conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameenc/conv1d/bias
o
#enc/conv1d/bias/Read/ReadVariableOpReadVariableOpenc/conv1d/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
filters
strides
subsection_sizes
subsection_filters
encoder
decoder
	keras_api

signatures
 
 
 
 
\
	conv

trainable_variables
regularization_losses
	variables
	keras_api


t_conv
	keras_api
 
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api

0
1
 

0
1
�
layer_metrics

trainable_variables
layer_regularization_losses
regularization_losses
	variables
non_trainable_variables
metrics

layers

	keras_api
 
US
VARIABLE_VALUEenc/conv1d/kernel.encoder/conv/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEenc/conv1d/bias,encoder/conv/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
layer_metrics
trainable_variables
layer_regularization_losses
regularization_losses
	variables
non_trainable_variables
metrics

 layers
 
 
 
 

	0
 
 
 
 
 
 
�
inference_inputPlaceholder*4
_output_shapes"
 :������������������`*
dtype0*)
shape :������������������`
�
StatefulPartitionedCallStatefulPartitionedCallinference_inputenc/conv1d/kernelenc/conv1d/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference_signature_wrapper_210
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%enc/conv1d/kernel/Read/ReadVariableOp#enc/conv1d/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *%
f R
__inference__traced_save_241
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameenc/conv1d/kernelenc/conv1d/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_restore_257�^
�/
�
__inference_<lambda>_109	
input:
6enc_conv1d_conv1d_expanddims_1_readvariableop_resource.
*enc_conv1d_biasadd_readvariableop_resource
identity

identity_1

identity_2��!enc/conv1d/BiasAdd/ReadVariableOp�-enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp�
enc/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
enc/Sum/reduction_indices�
enc/SumSuminput"enc/Sum/reduction_indices:output:0*
T0*+
_output_shapes
:���������`*
	keep_dims(2	
enc/Sum�
enc/Min/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
enc/Min/reduction_indices�
enc/MinMinenc/Sum:output:0"enc/Min/reduction_indices:output:0*
T0*'
_output_shapes
:���������2	
enc/Mins
enc/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
enc/ExpandDims/dim�
enc/ExpandDims
ExpandDimsenc/Min:output:0enc/ExpandDims/dim:output:0*
T0*+
_output_shapes
:���������2
enc/ExpandDims�
enc/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
enc/Max/reduction_indices�
enc/MaxMaxenc/Sum:output:0"enc/Max/reduction_indices:output:0*
T0*'
_output_shapes
:���������2	
enc/Maxw
enc/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
enc/ExpandDims_1/dim�
enc/ExpandDims_1
ExpandDimsenc/Max:output:0enc/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:���������2
enc/ExpandDims_1z
enc/SubSubenc/Sum:output:0enc/ExpandDims:output:0*
T0*+
_output_shapes
:���������`2	
enc/Sub�
	enc/Sub_1Subenc/ExpandDims_1:output:0enc/ExpandDims:output:0*
T0*+
_output_shapes
:���������2
	enc/Sub_1w
enc/truedivRealDivenc/Sub:z:0enc/Sub_1:z:0*
T0*+
_output_shapes
:���������`2
enc/truedivf
	enc/IsNanIsNanenc/truediv:z:0*
T0*+
_output_shapes
:���������`2
	enc/IsNant
enc/zeros_like	ZerosLikeenc/truediv:z:0*
T0*+
_output_shapes
:���������`2
enc/zeros_like�
enc/SelectV2SelectV2enc/IsNan:y:0enc/zeros_like:y:0enc/truediv:z:0*
T0*+
_output_shapes
:���������`2
enc/SelectV2_
enc/SqueezeSqueezeenc/SelectV2:output:0*
T0*
_output_shapes
:2
enc/Squeezem
enc/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������2
enc/concat/axis�

enc/concatConcatV2enc/Squeeze:output:0enc/Squeeze:output:0enc/concat/axis:output:0*
N*
T0*
_output_shapes
:2

enc/concat{
enc/Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"����`      2
enc/Reshape/shape�
enc/ReshapeReshapeenc/concat:output:0enc/Reshape/shape:output:0*
T0*+
_output_shapes
:���������`2
enc/Reshape�
 enc/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2"
 enc/conv1d/conv1d/ExpandDims/dim�
enc/conv1d/conv1d/ExpandDims
ExpandDimsenc/Reshape:output:0)enc/conv1d/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������`2
enc/conv1d/conv1d/ExpandDims�
-enc/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp6enc_conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype02/
-enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp�
"enc/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2$
"enc/conv1d/conv1d/ExpandDims_1/dim�
enc/conv1d/conv1d/ExpandDims_1
ExpandDims5enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0+enc/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:2 
enc/conv1d/conv1d/ExpandDims_1�
enc/conv1d/conv1dConv2D%enc/conv1d/conv1d/ExpandDims:output:0'enc/conv1d/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
enc/conv1d/conv1d�
enc/conv1d/conv1d/SqueezeSqueezeenc/conv1d/conv1d:output:0*
T0*+
_output_shapes
:���������*
squeeze_dims

���������2
enc/conv1d/conv1d/Squeeze�
!enc/conv1d/BiasAdd/ReadVariableOpReadVariableOp*enc_conv1d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!enc/conv1d/BiasAdd/ReadVariableOp�
enc/conv1d/BiasAddBiasAdd"enc/conv1d/conv1d/Squeeze:output:0)enc/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������2
enc/conv1d/BiasAdd}
enc/conv1d/ReluReluenc/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:���������2
enc/conv1d/Relu{
enc/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2
enc/Reshape_1/shape�
enc/Reshape_1Reshapeenc/conv1d/Relu:activations:0enc/Reshape_1/shape:output:0*
T0*(
_output_shapes
:����������2
enc/Reshape_1�
IdentityIdentityenc/Reshape_1:output:0"^enc/conv1d/BiasAdd/ReadVariableOp.^enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity�

Identity_1Identityenc/Reshape_1:output:0"^enc/conv1d/BiasAdd/ReadVariableOp.^enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2Identityenc/Reshape_1:output:0"^enc/conv1d/BiasAdd/ReadVariableOp.^enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*;
_input_shapes*
(:������������������`::2F
!enc/conv1d/BiasAdd/ReadVariableOp!enc/conv1d/BiasAdd/ReadVariableOp2^
-enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp-enc/conv1d/conv1d/ExpandDims_1/ReadVariableOp:[ W
4
_output_shapes"
 :������������������`

_user_specified_nameinput
�
�
__inference__traced_save_241
file_prefix0
,savev2_enc_conv1d_kernel_read_readvariableop.
*savev2_enc_conv1d_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B.encoder/conv/kernel/.ATTRIBUTES/VARIABLE_VALUEB,encoder/conv/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_enc_conv1d_kernel_read_readvariableop*savev2_enc_conv1d_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
�
�
__inference__traced_restore_257
file_prefix&
"assignvariableop_enc_conv1d_kernel&
"assignvariableop_1_enc_conv1d_bias

identity_3��AssignVariableOp�AssignVariableOp_1�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B.encoder/conv/kernel/.ATTRIBUTES/VARIABLE_VALUEB,encoder/conv/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp"assignvariableop_enc_conv1d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_enc_conv1d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2�

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
!__inference_signature_wrapper_210	
input
unknown
	unknown_0
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *!
fR
__inference_<lambda>_1092
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*;
_input_shapes*
(:������������������`::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
4
_output_shapes"
 :������������������`

_user_specified_nameinput"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
	inference�
>
input5
inference_input:0������������������`=
output_01
StatefulPartitionedCall:0����������=
output_11
StatefulPartitionedCall:1����������=
output_21
StatefulPartitionedCall:2����������tensorflow/serving/predict:�1
�
filters
strides
subsection_sizes
subsection_filters
encoder
decoder
	keras_api

signatures"�
_tf_keras_model�{"class_name": "Tiny", "name": "tiny", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Tiny"}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	conv

trainable_variables
regularization_losses
	variables
	keras_api
*!&call_and_return_all_conditional_losses
"__call__"�
_tf_keras_layer�{"class_name": "Enc", "name": "enc", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "enc", "trainable": true, "dtype": "float32"}}
�

t_conv
	keras_api"�
_tf_keras_layer�{"class_name": "Dec", "name": "dec", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dec", "trainable": true, "dtype": "float32"}}
"
_generic_user_object
&
#	inference"
signature_map
�	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*$&call_and_return_all_conditional_losses
%__call__"�
_tf_keras_layer�{"class_name": "Conv1D", "name": "conv1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [8]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 2}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 96, 2]}}
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
layer_metrics

trainable_variables
layer_regularization_losses
regularization_losses
	variables
non_trainable_variables
metrics

layers
"__call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
	keras_api"�
_tf_keras_layer�{"class_name": "Conv1DTranspose", "name": "conv1d_transpose", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_transpose", "trainable": true, "dtype": "float32", "filters": 2, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [8]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {}}}}
"
_generic_user_object
':%2enc/conv1d/kernel
:2enc/conv1d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
layer_metrics
trainable_variables
layer_regularization_losses
regularization_losses
	variables
non_trainable_variables
metrics

 layers
%__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
trackable_list_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
!__inference_signature_wrapper_210input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference_signature_wrapper_210�D�A
� 
:�7
5
input,�)
input������������������`"���
/
output_0#� 
output_0����������
/
output_1#� 
output_1����������
/
output_2#� 
output_2����������