??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
~
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer1/kernel
w
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel*&
_output_shapes
:*
dtype0
n
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer1/bias
g
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes
:*
dtype0
w
layer4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?B@*
shared_namelayer4/kernel
p
!layer4/kernel/Read/ReadVariableOpReadVariableOplayer4/kernel*
_output_shapes
:	?B@*
dtype0
n
layer4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namelayer4/bias
g
layer4/bias/Read/ReadVariableOpReadVariableOplayer4/bias*
_output_shapes
:@*
dtype0
w
layer5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*
shared_namelayer5/kernel
p
!layer5/kernel/Read/ReadVariableOpReadVariableOplayer5/kernel*
_output_shapes
:	@?*
dtype0
o
layer5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namelayer5/bias
h
layer5/bias/Read/ReadVariableOpReadVariableOplayer5/bias*
_output_shapes	
:?*
dtype0
~
eth_task1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_nameeth_task1/kernel
w
$eth_task1/kernel/Read/ReadVariableOpReadVariableOpeth_task1/kernel* 
_output_shapes
:
??*
dtype0
u
eth_task1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameeth_task1/bias
n
"eth_task1/bias/Read/ReadVariableOpReadVariableOpeth_task1/bias*
_output_shapes	
:?*
dtype0
?
gender_task1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*$
shared_namegender_task1/kernel
}
'gender_task1/kernel/Read/ReadVariableOpReadVariableOpgender_task1/kernel* 
_output_shapes
:
??*
dtype0
{
gender_task1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_namegender_task1/bias
t
%gender_task1/bias/Read/ReadVariableOpReadVariableOpgender_task1/bias*
_output_shapes	
:?*
dtype0
|
age_task/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_nameage_task/kernel
u
#age_task/kernel/Read/ReadVariableOpReadVariableOpage_task/kernel* 
_output_shapes
:
??*
dtype0
s
age_task/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameage_task/bias
l
!age_task/bias/Read/ReadVariableOpReadVariableOpage_task/bias*
_output_shapes	
:?*
dtype0
~
eth_task2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_nameeth_task2/kernel
w
$eth_task2/kernel/Read/ReadVariableOpReadVariableOpeth_task2/kernel* 
_output_shapes
:
??*
dtype0
u
eth_task2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameeth_task2/bias
n
"eth_task2/bias/Read/ReadVariableOpReadVariableOpeth_task2/bias*
_output_shapes	
:?*
dtype0
?
gender_task2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*$
shared_namegender_task2/kernel
|
'gender_task2/kernel/Read/ReadVariableOpReadVariableOpgender_task2/kernel*
_output_shapes
:	?@*
dtype0
z
gender_task2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namegender_task2/bias
s
%gender_task2/bias/Read/ReadVariableOpReadVariableOpgender_task2/bias*
_output_shapes
:@*
dtype0
q

age/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x*
shared_name
age/kernel
j
age/kernel/Read/ReadVariableOpReadVariableOp
age/kernel*
_output_shapes
:	?x*
dtype0
h
age/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*
shared_name
age/bias
a
age/bias/Read/ReadVariableOpReadVariableOpage/bias*
_output_shapes
:x*
dtype0
}
ethnicity/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*!
shared_nameethnicity/kernel
v
$ethnicity/kernel/Read/ReadVariableOpReadVariableOpethnicity/kernel*
_output_shapes
:	?*
dtype0
t
ethnicity/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameethnicity/bias
m
"ethnicity/bias/Read/ReadVariableOpReadVariableOpethnicity/bias*
_output_shapes
:*
dtype0
v
gender/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namegender/kernel
o
!gender/kernel/Read/ReadVariableOpReadVariableOpgender/kernel*
_output_shapes

:@*
dtype0
n
gender/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namegender/bias
g
gender/bias/Read/ReadVariableOpReadVariableOpgender/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
?
RMSprop/layer1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/layer1/kernel/rms
?
-RMSprop/layer1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer1/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/layer1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameRMSprop/layer1/bias/rms

+RMSprop/layer1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer1/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/layer4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?B@**
shared_nameRMSprop/layer4/kernel/rms
?
-RMSprop/layer4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer4/kernel/rms*
_output_shapes
:	?B@*
dtype0
?
RMSprop/layer4/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameRMSprop/layer4/bias/rms

+RMSprop/layer4/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer4/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/layer5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?**
shared_nameRMSprop/layer5/kernel/rms
?
-RMSprop/layer5/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer5/kernel/rms*
_output_shapes
:	@?*
dtype0
?
RMSprop/layer5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameRMSprop/layer5/bias/rms
?
+RMSprop/layer5/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer5/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/eth_task1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameRMSprop/eth_task1/kernel/rms
?
0RMSprop/eth_task1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task1/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/eth_task1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameRMSprop/eth_task1/bias/rms
?
.RMSprop/eth_task1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task1/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/gender_task1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*0
shared_name!RMSprop/gender_task1/kernel/rms
?
3RMSprop/gender_task1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task1/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/gender_task1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*.
shared_nameRMSprop/gender_task1/bias/rms
?
1RMSprop/gender_task1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task1/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/age_task/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*,
shared_nameRMSprop/age_task/kernel/rms
?
/RMSprop/age_task/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age_task/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/age_task/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_nameRMSprop/age_task/bias/rms
?
-RMSprop/age_task/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/age_task/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/eth_task2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*-
shared_nameRMSprop/eth_task2/kernel/rms
?
0RMSprop/eth_task2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task2/kernel/rms* 
_output_shapes
:
??*
dtype0
?
RMSprop/eth_task2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameRMSprop/eth_task2/bias/rms
?
.RMSprop/eth_task2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task2/bias/rms*
_output_shapes	
:?*
dtype0
?
RMSprop/gender_task2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*0
shared_name!RMSprop/gender_task2/kernel/rms
?
3RMSprop/gender_task2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task2/kernel/rms*
_output_shapes
:	?@*
dtype0
?
RMSprop/gender_task2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/gender_task2/bias/rms
?
1RMSprop/gender_task2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task2/bias/rms*
_output_shapes
:@*
dtype0
?
RMSprop/age/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?x*'
shared_nameRMSprop/age/kernel/rms
?
*RMSprop/age/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age/kernel/rms*
_output_shapes
:	?x*
dtype0
?
RMSprop/age/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*%
shared_nameRMSprop/age/bias/rms
y
(RMSprop/age/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/age/bias/rms*
_output_shapes
:x*
dtype0
?
RMSprop/ethnicity/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*-
shared_nameRMSprop/ethnicity/kernel/rms
?
0RMSprop/ethnicity/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/ethnicity/kernel/rms*
_output_shapes
:	?*
dtype0
?
RMSprop/ethnicity/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/ethnicity/bias/rms
?
.RMSprop/ethnicity/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/ethnicity/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/gender/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nameRMSprop/gender/kernel/rms
?
-RMSprop/gender/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender/kernel/rms*
_output_shapes

:@*
dtype0
?
RMSprop/gender/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameRMSprop/gender/bias/rms

+RMSprop/gender/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?~
value?~B?~ B?~
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer_with_weights-9
layer-12
layer_with_weights-10
layer-13
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
?

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
?

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*
?

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses*
?

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
?

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses*
?

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses*
?

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses*
?

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses*
?
}iter
	~decay
learning_rate
?momentum
?rho
rms?
rms?
-rms?
.rms?
5rms?
6rms?
=rms?
>rms?
Erms?
Frms?
Mrms?
Nrms?
Urms?
Vrms?
]rms?
^rms?
erms?
frms?
mrms?
nrms?
urms?
vrms?*


?0* 
?
0
1
-2
.3
54
65
=6
>7
E8
F9
M10
N11
U12
V13
]14
^15
e16
f17
m18
n19
u20
v21*
?
0
1
-2
.3
54
65
=6
>7
E8
F9
M10
N11
U12
V13
]14
^15
e16
f17
m18
n19
u20
v21*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

?serving_default* 
]W
VARIABLE_VALUElayer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUElayer4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUElayer5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEeth_task1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEeth_task1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEgender_task1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEgender_task1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

E0
F1*

E0
F1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEage_task/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEage_task/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

M0
N1*

M0
N1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEeth_task2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEeth_task2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

U0
V1*

U0
V1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEgender_task2/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEgender_task2/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

]0
^1*

]0
^1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*
* 
* 
ZT
VARIABLE_VALUE
age/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEage/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

e0
f1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEethnicity/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEethnicity/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

m0
n1*

m0
n1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEgender/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEgender/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

u0
v1*

u0
v1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
j
0
1
2
3
4
5
6
7
	8

9
10
11
12
13*
<
?0
?1
?2
?3
?4
?5
?6*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
<

?total

?count
?	variables
?	keras_api*
<

?total

?count
?	variables
?	keras_api*
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_54keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_54keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_64keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_64keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUERMSprop/layer1/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/layer1/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/layer4/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/layer4/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/layer5/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/layer5/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/eth_task1/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/eth_task1/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/gender_task1/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/gender_task1/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/age_task/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUERMSprop/age_task/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/eth_task2/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/eth_task2/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/gender_task2/kernel/rmsTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/gender_task2/bias/rmsRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUERMSprop/age/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUERMSprop/age/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/ethnicity/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/ethnicity/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/gender/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUERMSprop/gender/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_6Placeholder*/
_output_shapes
:?????????00*
dtype0*$
shape:?????????00
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6layer1/kernellayer1/biaslayer4/kernellayer4/biaslayer5/kernellayer5/biasgender_task1/kernelgender_task1/biaseth_task1/kerneleth_task1/biasgender_task2/kernelgender_task2/biaseth_task2/kerneleth_task2/biasage_task/kernelage_task/biasgender/kernelgender/biasethnicity/kernelethnicity/bias
age/kernelage/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????x:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_261791
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer4/kernel/Read/ReadVariableOplayer4/bias/Read/ReadVariableOp!layer5/kernel/Read/ReadVariableOplayer5/bias/Read/ReadVariableOp$eth_task1/kernel/Read/ReadVariableOp"eth_task1/bias/Read/ReadVariableOp'gender_task1/kernel/Read/ReadVariableOp%gender_task1/bias/Read/ReadVariableOp#age_task/kernel/Read/ReadVariableOp!age_task/bias/Read/ReadVariableOp$eth_task2/kernel/Read/ReadVariableOp"eth_task2/bias/Read/ReadVariableOp'gender_task2/kernel/Read/ReadVariableOp%gender_task2/bias/Read/ReadVariableOpage/kernel/Read/ReadVariableOpage/bias/Read/ReadVariableOp$ethnicity/kernel/Read/ReadVariableOp"ethnicity/bias/Read/ReadVariableOp!gender/kernel/Read/ReadVariableOpgender/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOp-RMSprop/layer1/kernel/rms/Read/ReadVariableOp+RMSprop/layer1/bias/rms/Read/ReadVariableOp-RMSprop/layer4/kernel/rms/Read/ReadVariableOp+RMSprop/layer4/bias/rms/Read/ReadVariableOp-RMSprop/layer5/kernel/rms/Read/ReadVariableOp+RMSprop/layer5/bias/rms/Read/ReadVariableOp0RMSprop/eth_task1/kernel/rms/Read/ReadVariableOp.RMSprop/eth_task1/bias/rms/Read/ReadVariableOp3RMSprop/gender_task1/kernel/rms/Read/ReadVariableOp1RMSprop/gender_task1/bias/rms/Read/ReadVariableOp/RMSprop/age_task/kernel/rms/Read/ReadVariableOp-RMSprop/age_task/bias/rms/Read/ReadVariableOp0RMSprop/eth_task2/kernel/rms/Read/ReadVariableOp.RMSprop/eth_task2/bias/rms/Read/ReadVariableOp3RMSprop/gender_task2/kernel/rms/Read/ReadVariableOp1RMSprop/gender_task2/bias/rms/Read/ReadVariableOp*RMSprop/age/kernel/rms/Read/ReadVariableOp(RMSprop/age/bias/rms/Read/ReadVariableOp0RMSprop/ethnicity/kernel/rms/Read/ReadVariableOp.RMSprop/ethnicity/bias/rms/Read/ReadVariableOp-RMSprop/gender/kernel/rms/Read/ReadVariableOp+RMSprop/gender/bias/rms/Read/ReadVariableOpConst*L
TinE
C2A	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_262245
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biaslayer4/kernellayer4/biaslayer5/kernellayer5/biaseth_task1/kerneleth_task1/biasgender_task1/kernelgender_task1/biasage_task/kernelage_task/biaseth_task2/kerneleth_task2/biasgender_task2/kernelgender_task2/bias
age/kernelage/biasethnicity/kernelethnicity/biasgender/kernelgender/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1total_2count_2total_3count_3total_4count_4total_5count_5total_6count_6RMSprop/layer1/kernel/rmsRMSprop/layer1/bias/rmsRMSprop/layer4/kernel/rmsRMSprop/layer4/bias/rmsRMSprop/layer5/kernel/rmsRMSprop/layer5/bias/rmsRMSprop/eth_task1/kernel/rmsRMSprop/eth_task1/bias/rmsRMSprop/gender_task1/kernel/rmsRMSprop/gender_task1/bias/rmsRMSprop/age_task/kernel/rmsRMSprop/age_task/bias/rmsRMSprop/eth_task2/kernel/rmsRMSprop/eth_task2/bias/rmsRMSprop/gender_task2/kernel/rmsRMSprop/gender_task2/bias/rmsRMSprop/age/kernel/rmsRMSprop/age/bias/rmsRMSprop/ethnicity/kernel/rmsRMSprop/ethnicity/bias/rmsRMSprop/gender/kernel/rmsRMSprop/gender/bias/rms*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_262444??

?
?
&__inference_Logan_layer_call_fn_261513

inputs!
unknown:
	unknown_0:
	unknown_1:	?B@
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:@

unknown_16:

unknown_17:	?

unknown_18:

unknown_19:	?x

unknown_20:x
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????x:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_260939o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?

?
E__inference_eth_task2_layer_call_and_return_conditional_losses_260863

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_Logan_layer_call_fn_261566

inputs!
unknown:
	unknown_0:
	unknown_1:	?B@
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:@

unknown_16:

unknown_17:	?

unknown_18:

unknown_19:	?x

unknown_20:x
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????x:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_261224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?

?
H__inference_gender_task2_layer_call_and_return_conditional_losses_260846

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?	
A__inference_Logan_layer_call_and_return_conditional_losses_261224

inputs'
layer1_261164:
layer1_261166: 
layer4_261171:	?B@
layer4_261173:@ 
layer5_261176:	@?
layer5_261178:	?'
gender_task1_261181:
??"
gender_task1_261183:	?$
eth_task1_261186:
??
eth_task1_261188:	?&
gender_task2_261191:	?@!
gender_task2_261193:@$
eth_task2_261196:
??
eth_task2_261198:	?#
age_task_261201:
??
age_task_261203:	?
gender_261206:@
gender_261208:#
ethnicity_261211:	?
ethnicity_261213:

age_261216:	?x

age_261218:x
identity

identity_1

identity_2??age/StatefulPartitionedCall? age_task/StatefulPartitionedCall?!eth_task1/StatefulPartitionedCall?!eth_task2/StatefulPartitionedCall?!ethnicity/StatefulPartitionedCall?gender/StatefulPartitionedCall?$gender_task1/StatefulPartitionedCall?$gender_task2/StatefulPartitionedCall?layer1/StatefulPartitionedCall?layer4/StatefulPartitionedCall?layer5/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_261164layer1_261166*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_260752?
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_260731?
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????B* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_260765?
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_261171layer4_261173*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_260778?
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_261176layer5_261178*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_260795?
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0gender_task1_261181gender_task1_261183*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_260812?
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0eth_task1_261186eth_task1_261188*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_260829?
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_261191gender_task2_261193*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_260846?
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_261196eth_task2_261198*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_260863?
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0age_task_261201age_task_261203*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_260880?
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_261206gender_261208*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_260897?
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_261211ethnicity_261213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_260914?
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_261216
age_261218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_260930s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 2:
age/StatefulPartitionedCallage/StatefulPartitionedCall2D
 age_task/StatefulPartitionedCall age_task/StatefulPartitionedCall2F
!eth_task1/StatefulPartitionedCall!eth_task1/StatefulPartitionedCall2F
!eth_task2/StatefulPartitionedCall!eth_task2/StatefulPartitionedCall2F
!ethnicity/StatefulPartitionedCall!ethnicity/StatefulPartitionedCall2@
gender/StatefulPartitionedCallgender/StatefulPartitionedCall2L
$gender_task1/StatefulPartitionedCall$gender_task1/StatefulPartitionedCall2L
$gender_task2/StatefulPartitionedCall$gender_task2/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
-__inference_gender_task2_layer_call_fn_261961

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_260846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_layer4_layer_call_fn_261841

inputs
unknown:	?B@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_260778o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????B: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????B
 
_user_specified_nameinputs
?

?
H__inference_gender_task2_layer_call_and_return_conditional_losses_261972

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_ethnicity_layer_call_and_return_conditional_losses_260914

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_age_task_layer_call_fn_261921

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_260880p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_gender_layer_call_and_return_conditional_losses_262031

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?@
?	
A__inference_Logan_layer_call_and_return_conditional_losses_260939

inputs'
layer1_260753:
layer1_260755: 
layer4_260779:	?B@
layer4_260781:@ 
layer5_260796:	@?
layer5_260798:	?'
gender_task1_260813:
??"
gender_task1_260815:	?$
eth_task1_260830:
??
eth_task1_260832:	?&
gender_task2_260847:	?@!
gender_task2_260849:@$
eth_task2_260864:
??
eth_task2_260866:	?#
age_task_260881:
??
age_task_260883:	?
gender_260898:@
gender_260900:#
ethnicity_260915:	?
ethnicity_260917:

age_260931:	?x

age_260933:x
identity

identity_1

identity_2??age/StatefulPartitionedCall? age_task/StatefulPartitionedCall?!eth_task1/StatefulPartitionedCall?!eth_task2/StatefulPartitionedCall?!ethnicity/StatefulPartitionedCall?gender/StatefulPartitionedCall?$gender_task1/StatefulPartitionedCall?$gender_task2/StatefulPartitionedCall?layer1/StatefulPartitionedCall?layer4/StatefulPartitionedCall?layer5/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_260753layer1_260755*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_260752?
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_260731?
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????B* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_260765?
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_260779layer4_260781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_260778?
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_260796layer5_260798*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_260795?
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0gender_task1_260813gender_task1_260815*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_260812?
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0eth_task1_260830eth_task1_260832*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_260829?
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_260847gender_task2_260849*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_260846?
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_260864eth_task2_260866*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_260863?
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0age_task_260881age_task_260883*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_260880?
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_260898gender_260900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_260897?
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_260915ethnicity_260917*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_260914?
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_260931
age_260933*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_260930s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 2:
age/StatefulPartitionedCallage/StatefulPartitionedCall2D
 age_task/StatefulPartitionedCall age_task/StatefulPartitionedCall2F
!eth_task1/StatefulPartitionedCall!eth_task1/StatefulPartitionedCall2F
!eth_task2/StatefulPartitionedCall!eth_task2/StatefulPartitionedCall2F
!ethnicity/StatefulPartitionedCall!ethnicity/StatefulPartitionedCall2@
gender/StatefulPartitionedCallgender/StatefulPartitionedCall2L
$gender_task1/StatefulPartitionedCall$gender_task1/StatefulPartitionedCall2L
$gender_task2/StatefulPartitionedCall$gender_task2/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?u
?
__inference__traced_save_262245
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer4_kernel_read_readvariableop*
&savev2_layer4_bias_read_readvariableop,
(savev2_layer5_kernel_read_readvariableop*
&savev2_layer5_bias_read_readvariableop/
+savev2_eth_task1_kernel_read_readvariableop-
)savev2_eth_task1_bias_read_readvariableop2
.savev2_gender_task1_kernel_read_readvariableop0
,savev2_gender_task1_bias_read_readvariableop.
*savev2_age_task_kernel_read_readvariableop,
(savev2_age_task_bias_read_readvariableop/
+savev2_eth_task2_kernel_read_readvariableop-
)savev2_eth_task2_bias_read_readvariableop2
.savev2_gender_task2_kernel_read_readvariableop0
,savev2_gender_task2_bias_read_readvariableop)
%savev2_age_kernel_read_readvariableop'
#savev2_age_bias_read_readvariableop/
+savev2_ethnicity_kernel_read_readvariableop-
)savev2_ethnicity_bias_read_readvariableop,
(savev2_gender_kernel_read_readvariableop*
&savev2_gender_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop8
4savev2_rmsprop_layer1_kernel_rms_read_readvariableop6
2savev2_rmsprop_layer1_bias_rms_read_readvariableop8
4savev2_rmsprop_layer4_kernel_rms_read_readvariableop6
2savev2_rmsprop_layer4_bias_rms_read_readvariableop8
4savev2_rmsprop_layer5_kernel_rms_read_readvariableop6
2savev2_rmsprop_layer5_bias_rms_read_readvariableop;
7savev2_rmsprop_eth_task1_kernel_rms_read_readvariableop9
5savev2_rmsprop_eth_task1_bias_rms_read_readvariableop>
:savev2_rmsprop_gender_task1_kernel_rms_read_readvariableop<
8savev2_rmsprop_gender_task1_bias_rms_read_readvariableop:
6savev2_rmsprop_age_task_kernel_rms_read_readvariableop8
4savev2_rmsprop_age_task_bias_rms_read_readvariableop;
7savev2_rmsprop_eth_task2_kernel_rms_read_readvariableop9
5savev2_rmsprop_eth_task2_bias_rms_read_readvariableop>
:savev2_rmsprop_gender_task2_kernel_rms_read_readvariableop<
8savev2_rmsprop_gender_task2_bias_rms_read_readvariableop5
1savev2_rmsprop_age_kernel_rms_read_readvariableop3
/savev2_rmsprop_age_bias_rms_read_readvariableop;
7savev2_rmsprop_ethnicity_kernel_rms_read_readvariableop9
5savev2_rmsprop_ethnicity_bias_rms_read_readvariableop8
4savev2_rmsprop_gender_kernel_rms_read_readvariableop6
2savev2_rmsprop_gender_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ? 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*? 
value? B? @B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_layer5_kernel_read_readvariableop&savev2_layer5_bias_read_readvariableop+savev2_eth_task1_kernel_read_readvariableop)savev2_eth_task1_bias_read_readvariableop.savev2_gender_task1_kernel_read_readvariableop,savev2_gender_task1_bias_read_readvariableop*savev2_age_task_kernel_read_readvariableop(savev2_age_task_bias_read_readvariableop+savev2_eth_task2_kernel_read_readvariableop)savev2_eth_task2_bias_read_readvariableop.savev2_gender_task2_kernel_read_readvariableop,savev2_gender_task2_bias_read_readvariableop%savev2_age_kernel_read_readvariableop#savev2_age_bias_read_readvariableop+savev2_ethnicity_kernel_read_readvariableop)savev2_ethnicity_bias_read_readvariableop(savev2_gender_kernel_read_readvariableop&savev2_gender_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop4savev2_rmsprop_layer1_kernel_rms_read_readvariableop2savev2_rmsprop_layer1_bias_rms_read_readvariableop4savev2_rmsprop_layer4_kernel_rms_read_readvariableop2savev2_rmsprop_layer4_bias_rms_read_readvariableop4savev2_rmsprop_layer5_kernel_rms_read_readvariableop2savev2_rmsprop_layer5_bias_rms_read_readvariableop7savev2_rmsprop_eth_task1_kernel_rms_read_readvariableop5savev2_rmsprop_eth_task1_bias_rms_read_readvariableop:savev2_rmsprop_gender_task1_kernel_rms_read_readvariableop8savev2_rmsprop_gender_task1_bias_rms_read_readvariableop6savev2_rmsprop_age_task_kernel_rms_read_readvariableop4savev2_rmsprop_age_task_bias_rms_read_readvariableop7savev2_rmsprop_eth_task2_kernel_rms_read_readvariableop5savev2_rmsprop_eth_task2_bias_rms_read_readvariableop:savev2_rmsprop_gender_task2_kernel_rms_read_readvariableop8savev2_rmsprop_gender_task2_bias_rms_read_readvariableop1savev2_rmsprop_age_kernel_rms_read_readvariableop/savev2_rmsprop_age_bias_rms_read_readvariableop7savev2_rmsprop_ethnicity_kernel_rms_read_readvariableop5savev2_rmsprop_ethnicity_bias_rms_read_readvariableop4savev2_rmsprop_gender_kernel_rms_read_readvariableop2savev2_rmsprop_gender_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *N
dtypesD
B2@	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::	?B@:@:	@?:?:
??:?:
??:?:
??:?:
??:?:	?@:@:	?x:x:	?::@:: : : : : : : : : : : : : : : : : : : :::	?B@:@:	@?:?:
??:?:
??:?:
??:?:
??:?:	?@:@:	?x:x:	?::@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	?B@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:%!

_output_shapes
:	?x: 

_output_shapes
:x:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :,*(
&
_output_shapes
:: +

_output_shapes
::%,!

_output_shapes
:	?B@: -

_output_shapes
:@:%.!

_output_shapes
:	@?:!/

_output_shapes	
:?:&0"
 
_output_shapes
:
??:!1

_output_shapes	
:?:&2"
 
_output_shapes
:
??:!3

_output_shapes	
:?:&4"
 
_output_shapes
:
??:!5

_output_shapes	
:?:&6"
 
_output_shapes
:
??:!7

_output_shapes	
:?:%8!

_output_shapes
:	?@: 9

_output_shapes
:@:%:!

_output_shapes
:	?x: ;

_output_shapes
:x:%<!

_output_shapes
:	?: =

_output_shapes
::$> 

_output_shapes

:@: ?

_output_shapes
::@

_output_shapes
: 
?
^
B__inference_layer2_layer_call_and_return_conditional_losses_261821

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?c
?
A__inference_Logan_layer_call_and_return_conditional_losses_261651

inputs?
%layer1_conv2d_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:8
%layer4_matmul_readvariableop_resource:	?B@4
&layer4_biasadd_readvariableop_resource:@8
%layer5_matmul_readvariableop_resource:	@?5
&layer5_biasadd_readvariableop_resource:	??
+gender_task1_matmul_readvariableop_resource:
??;
,gender_task1_biasadd_readvariableop_resource:	?<
(eth_task1_matmul_readvariableop_resource:
??8
)eth_task1_biasadd_readvariableop_resource:	?>
+gender_task2_matmul_readvariableop_resource:	?@:
,gender_task2_biasadd_readvariableop_resource:@<
(eth_task2_matmul_readvariableop_resource:
??8
)eth_task2_biasadd_readvariableop_resource:	?;
'age_task_matmul_readvariableop_resource:
??7
(age_task_biasadd_readvariableop_resource:	?7
%gender_matmul_readvariableop_resource:@4
&gender_biasadd_readvariableop_resource:;
(ethnicity_matmul_readvariableop_resource:	?7
)ethnicity_biasadd_readvariableop_resource:5
"age_matmul_readvariableop_resource:	?x1
#age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2??age/BiasAdd/ReadVariableOp?age/MatMul/ReadVariableOp?age_task/BiasAdd/ReadVariableOp?age_task/MatMul/ReadVariableOp? eth_task1/BiasAdd/ReadVariableOp?eth_task1/MatMul/ReadVariableOp? eth_task2/BiasAdd/ReadVariableOp?eth_task2/MatMul/ReadVariableOp? ethnicity/BiasAdd/ReadVariableOp?ethnicity/MatMul/ReadVariableOp?gender/BiasAdd/ReadVariableOp?gender/MatMul/ReadVariableOp?#gender_task1/BiasAdd/ReadVariableOp?"gender_task1/MatMul/ReadVariableOp?#gender_task2/BiasAdd/ReadVariableOp?"gender_task2/MatMul/ReadVariableOp?layer1/BiasAdd/ReadVariableOp?layer1/Conv2D/ReadVariableOp?layer4/BiasAdd/ReadVariableOp?layer4/MatMul/ReadVariableOp?layer5/BiasAdd/ReadVariableOp?layer5/MatMul/ReadVariableOp?
layer1/Conv2D/ReadVariableOpReadVariableOp%layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
layer1/Conv2DConv2Dinputs$layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//*
paddingVALID*
strides
?
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
layer1/BiasAddBiasAddlayer1/Conv2D:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//f
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????//?
layer2/MaxPoolMaxPoollayer1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
]
layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????!  |
layer3/ReshapeReshapelayer2/MaxPool:output:0layer3/Const:output:0*
T0*(
_output_shapes
:??????????B?
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes
:	?B@*
dtype0?
layer4/MatMulMatMullayer3/Reshape:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@^
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"gender_task1/MatMul/ReadVariableOpReadVariableOp+gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gender_task1/MatMulMatMullayer5/Relu:activations:0*gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#gender_task1/BiasAdd/ReadVariableOpReadVariableOp,gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
gender_task1/BiasAddBiasAddgender_task1/MatMul:product:0+gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
gender_task1/ReluRelugender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
eth_task1/MatMul/ReadVariableOpReadVariableOp(eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
eth_task1/MatMulMatMullayer5/Relu:activations:0'eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 eth_task1/BiasAdd/ReadVariableOpReadVariableOp)eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
eth_task1/BiasAddBiasAddeth_task1/MatMul:product:0(eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
eth_task1/ReluRelueth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"gender_task2/MatMul/ReadVariableOpReadVariableOp+gender_task2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
gender_task2/MatMulMatMulgender_task1/Relu:activations:0*gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
#gender_task2/BiasAdd/ReadVariableOpReadVariableOp,gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
gender_task2/BiasAddBiasAddgender_task2/MatMul:product:0+gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@j
gender_task2/ReluRelugender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
eth_task2/MatMul/ReadVariableOpReadVariableOp(eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
eth_task2/MatMulMatMuleth_task1/Relu:activations:0'eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 eth_task2/BiasAdd/ReadVariableOpReadVariableOp)eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
eth_task2/BiasAddBiasAddeth_task2/MatMul:product:0(eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
eth_task2/ReluRelueth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
age_task/MatMul/ReadVariableOpReadVariableOp'age_task_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
age_task/MatMulMatMullayer5/Relu:activations:0&age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
age_task/BiasAdd/ReadVariableOpReadVariableOp(age_task_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
age_task/BiasAddBiasAddage_task/MatMul:product:0'age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
age_task/ReluReluage_task/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
gender/MatMul/ReadVariableOpReadVariableOp%gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
gender/MatMulMatMulgender_task2/Relu:activations:0$gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
gender/BiasAdd/ReadVariableOpReadVariableOp&gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
gender/BiasAddBiasAddgender/MatMul:product:0%gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
gender/SigmoidSigmoidgender/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
ethnicity/MatMul/ReadVariableOpReadVariableOp(ethnicity_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
ethnicity/MatMulMatMuleth_task2/Relu:activations:0'ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 ethnicity/BiasAdd/ReadVariableOpReadVariableOp)ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
ethnicity/BiasAddBiasAddethnicity/MatMul:product:0(ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
ethnicity/SigmoidSigmoidethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:?????????}
age/MatMul/ReadVariableOpReadVariableOp"age_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype0?

age/MatMulMatMulage_task/Relu:activations:0!age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xz
age/BiasAdd/ReadVariableOpReadVariableOp#age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0?
age/BiasAddBiasAddage/MatMul:product:0"age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xc
IdentityIdentityage/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????xf

Identity_1Identityethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????c

Identity_2Identitygender/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^age/BiasAdd/ReadVariableOp^age/MatMul/ReadVariableOp ^age_task/BiasAdd/ReadVariableOp^age_task/MatMul/ReadVariableOp!^eth_task1/BiasAdd/ReadVariableOp ^eth_task1/MatMul/ReadVariableOp!^eth_task2/BiasAdd/ReadVariableOp ^eth_task2/MatMul/ReadVariableOp!^ethnicity/BiasAdd/ReadVariableOp ^ethnicity/MatMul/ReadVariableOp^gender/BiasAdd/ReadVariableOp^gender/MatMul/ReadVariableOp$^gender_task1/BiasAdd/ReadVariableOp#^gender_task1/MatMul/ReadVariableOp$^gender_task2/BiasAdd/ReadVariableOp#^gender_task2/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/Conv2D/ReadVariableOp^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^layer5/BiasAdd/ReadVariableOp^layer5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 28
age/BiasAdd/ReadVariableOpage/BiasAdd/ReadVariableOp26
age/MatMul/ReadVariableOpage/MatMul/ReadVariableOp2B
age_task/BiasAdd/ReadVariableOpage_task/BiasAdd/ReadVariableOp2@
age_task/MatMul/ReadVariableOpage_task/MatMul/ReadVariableOp2D
 eth_task1/BiasAdd/ReadVariableOp eth_task1/BiasAdd/ReadVariableOp2B
eth_task1/MatMul/ReadVariableOpeth_task1/MatMul/ReadVariableOp2D
 eth_task2/BiasAdd/ReadVariableOp eth_task2/BiasAdd/ReadVariableOp2B
eth_task2/MatMul/ReadVariableOpeth_task2/MatMul/ReadVariableOp2D
 ethnicity/BiasAdd/ReadVariableOp ethnicity/BiasAdd/ReadVariableOp2B
ethnicity/MatMul/ReadVariableOpethnicity/MatMul/ReadVariableOp2>
gender/BiasAdd/ReadVariableOpgender/BiasAdd/ReadVariableOp2<
gender/MatMul/ReadVariableOpgender/MatMul/ReadVariableOp2J
#gender_task1/BiasAdd/ReadVariableOp#gender_task1/BiasAdd/ReadVariableOp2H
"gender_task1/MatMul/ReadVariableOp"gender_task1/MatMul/ReadVariableOp2J
#gender_task2/BiasAdd/ReadVariableOp#gender_task2/BiasAdd/ReadVariableOp2H
"gender_task2/MatMul/ReadVariableOp"gender_task2/MatMul/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/Conv2D/ReadVariableOplayer1/Conv2D/ReadVariableOp2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
layer5/BiasAdd/ReadVariableOplayer5/BiasAdd/ReadVariableOp2<
layer5/MatMul/ReadVariableOplayer5/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
&__inference_Logan_layer_call_fn_261328
input_6!
unknown:
	unknown_0:
	unknown_1:	?B@
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:@

unknown_16:

unknown_17:	?

unknown_18:

unknown_19:	?x

unknown_20:x
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????x:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_261224o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????00
!
_user_specified_name	input_6
?

?
E__inference_eth_task1_layer_call_and_return_conditional_losses_260829

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_age_task_layer_call_and_return_conditional_losses_261932

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_gender_task1_layer_call_fn_261901

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_260812p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_layer3_layer_call_and_return_conditional_losses_260765

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????!  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????BY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????B"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_eth_task1_layer_call_and_return_conditional_losses_261892

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_layer4_layer_call_and_return_conditional_losses_260778

inputs1
matmul_readvariableop_resource:	?B@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?B@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????B: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????B
 
_user_specified_nameinputs
?o
?
!__inference__wrapped_model_260722
input_6E
+logan_layer1_conv2d_readvariableop_resource::
,logan_layer1_biasadd_readvariableop_resource:>
+logan_layer4_matmul_readvariableop_resource:	?B@:
,logan_layer4_biasadd_readvariableop_resource:@>
+logan_layer5_matmul_readvariableop_resource:	@?;
,logan_layer5_biasadd_readvariableop_resource:	?E
1logan_gender_task1_matmul_readvariableop_resource:
??A
2logan_gender_task1_biasadd_readvariableop_resource:	?B
.logan_eth_task1_matmul_readvariableop_resource:
??>
/logan_eth_task1_biasadd_readvariableop_resource:	?D
1logan_gender_task2_matmul_readvariableop_resource:	?@@
2logan_gender_task2_biasadd_readvariableop_resource:@B
.logan_eth_task2_matmul_readvariableop_resource:
??>
/logan_eth_task2_biasadd_readvariableop_resource:	?A
-logan_age_task_matmul_readvariableop_resource:
??=
.logan_age_task_biasadd_readvariableop_resource:	?=
+logan_gender_matmul_readvariableop_resource:@:
,logan_gender_biasadd_readvariableop_resource:A
.logan_ethnicity_matmul_readvariableop_resource:	?=
/logan_ethnicity_biasadd_readvariableop_resource:;
(logan_age_matmul_readvariableop_resource:	?x7
)logan_age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2?? Logan/age/BiasAdd/ReadVariableOp?Logan/age/MatMul/ReadVariableOp?%Logan/age_task/BiasAdd/ReadVariableOp?$Logan/age_task/MatMul/ReadVariableOp?&Logan/eth_task1/BiasAdd/ReadVariableOp?%Logan/eth_task1/MatMul/ReadVariableOp?&Logan/eth_task2/BiasAdd/ReadVariableOp?%Logan/eth_task2/MatMul/ReadVariableOp?&Logan/ethnicity/BiasAdd/ReadVariableOp?%Logan/ethnicity/MatMul/ReadVariableOp?#Logan/gender/BiasAdd/ReadVariableOp?"Logan/gender/MatMul/ReadVariableOp?)Logan/gender_task1/BiasAdd/ReadVariableOp?(Logan/gender_task1/MatMul/ReadVariableOp?)Logan/gender_task2/BiasAdd/ReadVariableOp?(Logan/gender_task2/MatMul/ReadVariableOp?#Logan/layer1/BiasAdd/ReadVariableOp?"Logan/layer1/Conv2D/ReadVariableOp?#Logan/layer4/BiasAdd/ReadVariableOp?"Logan/layer4/MatMul/ReadVariableOp?#Logan/layer5/BiasAdd/ReadVariableOp?"Logan/layer5/MatMul/ReadVariableOp?
"Logan/layer1/Conv2D/ReadVariableOpReadVariableOp+logan_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Logan/layer1/Conv2DConv2Dinput_6*Logan/layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//*
paddingVALID*
strides
?
#Logan/layer1/BiasAdd/ReadVariableOpReadVariableOp,logan_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Logan/layer1/BiasAddBiasAddLogan/layer1/Conv2D:output:0+Logan/layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//r
Logan/layer1/ReluReluLogan/layer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????//?
Logan/layer2/MaxPoolMaxPoolLogan/layer1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
c
Logan/layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????!  ?
Logan/layer3/ReshapeReshapeLogan/layer2/MaxPool:output:0Logan/layer3/Const:output:0*
T0*(
_output_shapes
:??????????B?
"Logan/layer4/MatMul/ReadVariableOpReadVariableOp+logan_layer4_matmul_readvariableop_resource*
_output_shapes
:	?B@*
dtype0?
Logan/layer4/MatMulMatMulLogan/layer3/Reshape:output:0*Logan/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
#Logan/layer4/BiasAdd/ReadVariableOpReadVariableOp,logan_layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
Logan/layer4/BiasAddBiasAddLogan/layer4/MatMul:product:0+Logan/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@j
Logan/layer4/ReluReluLogan/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
"Logan/layer5/MatMul/ReadVariableOpReadVariableOp+logan_layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
Logan/layer5/MatMulMatMulLogan/layer4/Relu:activations:0*Logan/layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#Logan/layer5/BiasAdd/ReadVariableOpReadVariableOp,logan_layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Logan/layer5/BiasAddBiasAddLogan/layer5/MatMul:product:0+Logan/layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
Logan/layer5/ReluReluLogan/layer5/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
(Logan/gender_task1/MatMul/ReadVariableOpReadVariableOp1logan_gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Logan/gender_task1/MatMulMatMulLogan/layer5/Relu:activations:00Logan/gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
)Logan/gender_task1/BiasAdd/ReadVariableOpReadVariableOp2logan_gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Logan/gender_task1/BiasAddBiasAdd#Logan/gender_task1/MatMul:product:01Logan/gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????w
Logan/gender_task1/ReluRelu#Logan/gender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
%Logan/eth_task1/MatMul/ReadVariableOpReadVariableOp.logan_eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Logan/eth_task1/MatMulMatMulLogan/layer5/Relu:activations:0-Logan/eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&Logan/eth_task1/BiasAdd/ReadVariableOpReadVariableOp/logan_eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Logan/eth_task1/BiasAddBiasAdd Logan/eth_task1/MatMul:product:0.Logan/eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
Logan/eth_task1/ReluRelu Logan/eth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
(Logan/gender_task2/MatMul/ReadVariableOpReadVariableOp1logan_gender_task2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
Logan/gender_task2/MatMulMatMul%Logan/gender_task1/Relu:activations:00Logan/gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
)Logan/gender_task2/BiasAdd/ReadVariableOpReadVariableOp2logan_gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
Logan/gender_task2/BiasAddBiasAdd#Logan/gender_task2/MatMul:product:01Logan/gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@v
Logan/gender_task2/ReluRelu#Logan/gender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
%Logan/eth_task2/MatMul/ReadVariableOpReadVariableOp.logan_eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Logan/eth_task2/MatMulMatMul"Logan/eth_task1/Relu:activations:0-Logan/eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
&Logan/eth_task2/BiasAdd/ReadVariableOpReadVariableOp/logan_eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Logan/eth_task2/BiasAddBiasAdd Logan/eth_task2/MatMul:product:0.Logan/eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
Logan/eth_task2/ReluRelu Logan/eth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
$Logan/age_task/MatMul/ReadVariableOpReadVariableOp-logan_age_task_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
Logan/age_task/MatMulMatMulLogan/layer5/Relu:activations:0,Logan/age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%Logan/age_task/BiasAdd/ReadVariableOpReadVariableOp.logan_age_task_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Logan/age_task/BiasAddBiasAddLogan/age_task/MatMul:product:0-Logan/age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????o
Logan/age_task/ReluReluLogan/age_task/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"Logan/gender/MatMul/ReadVariableOpReadVariableOp+logan_gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
Logan/gender/MatMulMatMul%Logan/gender_task2/Relu:activations:0*Logan/gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
#Logan/gender/BiasAdd/ReadVariableOpReadVariableOp,logan_gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Logan/gender/BiasAddBiasAddLogan/gender/MatMul:product:0+Logan/gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
Logan/gender/SigmoidSigmoidLogan/gender/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
%Logan/ethnicity/MatMul/ReadVariableOpReadVariableOp.logan_ethnicity_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
Logan/ethnicity/MatMulMatMul"Logan/eth_task2/Relu:activations:0-Logan/ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
&Logan/ethnicity/BiasAdd/ReadVariableOpReadVariableOp/logan_ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Logan/ethnicity/BiasAddBiasAdd Logan/ethnicity/MatMul:product:0.Logan/ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????v
Logan/ethnicity/SigmoidSigmoid Logan/ethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
Logan/age/MatMul/ReadVariableOpReadVariableOp(logan_age_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype0?
Logan/age/MatMulMatMul!Logan/age_task/Relu:activations:0'Logan/age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x?
 Logan/age/BiasAdd/ReadVariableOpReadVariableOp)logan_age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0?
Logan/age/BiasAddBiasAddLogan/age/MatMul:product:0(Logan/age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xi
IdentityIdentityLogan/age/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????xl

Identity_1IdentityLogan/ethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????i

Identity_2IdentityLogan/gender/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Logan/age/BiasAdd/ReadVariableOp ^Logan/age/MatMul/ReadVariableOp&^Logan/age_task/BiasAdd/ReadVariableOp%^Logan/age_task/MatMul/ReadVariableOp'^Logan/eth_task1/BiasAdd/ReadVariableOp&^Logan/eth_task1/MatMul/ReadVariableOp'^Logan/eth_task2/BiasAdd/ReadVariableOp&^Logan/eth_task2/MatMul/ReadVariableOp'^Logan/ethnicity/BiasAdd/ReadVariableOp&^Logan/ethnicity/MatMul/ReadVariableOp$^Logan/gender/BiasAdd/ReadVariableOp#^Logan/gender/MatMul/ReadVariableOp*^Logan/gender_task1/BiasAdd/ReadVariableOp)^Logan/gender_task1/MatMul/ReadVariableOp*^Logan/gender_task2/BiasAdd/ReadVariableOp)^Logan/gender_task2/MatMul/ReadVariableOp$^Logan/layer1/BiasAdd/ReadVariableOp#^Logan/layer1/Conv2D/ReadVariableOp$^Logan/layer4/BiasAdd/ReadVariableOp#^Logan/layer4/MatMul/ReadVariableOp$^Logan/layer5/BiasAdd/ReadVariableOp#^Logan/layer5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 2D
 Logan/age/BiasAdd/ReadVariableOp Logan/age/BiasAdd/ReadVariableOp2B
Logan/age/MatMul/ReadVariableOpLogan/age/MatMul/ReadVariableOp2N
%Logan/age_task/BiasAdd/ReadVariableOp%Logan/age_task/BiasAdd/ReadVariableOp2L
$Logan/age_task/MatMul/ReadVariableOp$Logan/age_task/MatMul/ReadVariableOp2P
&Logan/eth_task1/BiasAdd/ReadVariableOp&Logan/eth_task1/BiasAdd/ReadVariableOp2N
%Logan/eth_task1/MatMul/ReadVariableOp%Logan/eth_task1/MatMul/ReadVariableOp2P
&Logan/eth_task2/BiasAdd/ReadVariableOp&Logan/eth_task2/BiasAdd/ReadVariableOp2N
%Logan/eth_task2/MatMul/ReadVariableOp%Logan/eth_task2/MatMul/ReadVariableOp2P
&Logan/ethnicity/BiasAdd/ReadVariableOp&Logan/ethnicity/BiasAdd/ReadVariableOp2N
%Logan/ethnicity/MatMul/ReadVariableOp%Logan/ethnicity/MatMul/ReadVariableOp2J
#Logan/gender/BiasAdd/ReadVariableOp#Logan/gender/BiasAdd/ReadVariableOp2H
"Logan/gender/MatMul/ReadVariableOp"Logan/gender/MatMul/ReadVariableOp2V
)Logan/gender_task1/BiasAdd/ReadVariableOp)Logan/gender_task1/BiasAdd/ReadVariableOp2T
(Logan/gender_task1/MatMul/ReadVariableOp(Logan/gender_task1/MatMul/ReadVariableOp2V
)Logan/gender_task2/BiasAdd/ReadVariableOp)Logan/gender_task2/BiasAdd/ReadVariableOp2T
(Logan/gender_task2/MatMul/ReadVariableOp(Logan/gender_task2/MatMul/ReadVariableOp2J
#Logan/layer1/BiasAdd/ReadVariableOp#Logan/layer1/BiasAdd/ReadVariableOp2H
"Logan/layer1/Conv2D/ReadVariableOp"Logan/layer1/Conv2D/ReadVariableOp2J
#Logan/layer4/BiasAdd/ReadVariableOp#Logan/layer4/BiasAdd/ReadVariableOp2H
"Logan/layer4/MatMul/ReadVariableOp"Logan/layer4/MatMul/ReadVariableOp2J
#Logan/layer5/BiasAdd/ReadVariableOp#Logan/layer5/BiasAdd/ReadVariableOp2H
"Logan/layer5/MatMul/ReadVariableOp"Logan/layer5/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????00
!
_user_specified_name	input_6
?
C
'__inference_layer2_layer_call_fn_261816

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_260731?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
H__inference_gender_task1_layer_call_and_return_conditional_losses_261912

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
C
'__inference_layer3_layer_call_fn_261826

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????B* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_260765a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????B"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
B__inference_layer4_layer_call_and_return_conditional_losses_261852

inputs1
matmul_readvariableop_resource:	?B@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?B@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????B: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????B
 
_user_specified_nameinputs
?

?
B__inference_layer5_layer_call_and_return_conditional_losses_260795

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
?__inference_age_layer_call_and_return_conditional_losses_261991

inputs1
matmul_readvariableop_resource:	?x-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????xw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
E__inference_ethnicity_layer_call_and_return_conditional_losses_262011

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?	
A__inference_Logan_layer_call_and_return_conditional_losses_261454
input_6'
layer1_261394:
layer1_261396: 
layer4_261401:	?B@
layer4_261403:@ 
layer5_261406:	@?
layer5_261408:	?'
gender_task1_261411:
??"
gender_task1_261413:	?$
eth_task1_261416:
??
eth_task1_261418:	?&
gender_task2_261421:	?@!
gender_task2_261423:@$
eth_task2_261426:
??
eth_task2_261428:	?#
age_task_261431:
??
age_task_261433:	?
gender_261436:@
gender_261438:#
ethnicity_261441:	?
ethnicity_261443:

age_261446:	?x

age_261448:x
identity

identity_1

identity_2??age/StatefulPartitionedCall? age_task/StatefulPartitionedCall?!eth_task1/StatefulPartitionedCall?!eth_task2/StatefulPartitionedCall?!ethnicity/StatefulPartitionedCall?gender/StatefulPartitionedCall?$gender_task1/StatefulPartitionedCall?$gender_task2/StatefulPartitionedCall?layer1/StatefulPartitionedCall?layer4/StatefulPartitionedCall?layer5/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_6layer1_261394layer1_261396*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_260752?
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_260731?
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????B* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_260765?
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_261401layer4_261403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_260778?
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_261406layer5_261408*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_260795?
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0gender_task1_261411gender_task1_261413*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_260812?
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0eth_task1_261416eth_task1_261418*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_260829?
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_261421gender_task2_261423*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_260846?
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_261426eth_task2_261428*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_260863?
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0age_task_261431age_task_261433*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_260880?
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_261436gender_261438*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_260897?
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_261441ethnicity_261443*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_260914?
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_261446
age_261448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_260930s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 2:
age/StatefulPartitionedCallage/StatefulPartitionedCall2D
 age_task/StatefulPartitionedCall age_task/StatefulPartitionedCall2F
!eth_task1/StatefulPartitionedCall!eth_task1/StatefulPartitionedCall2F
!eth_task2/StatefulPartitionedCall!eth_task2/StatefulPartitionedCall2F
!ethnicity/StatefulPartitionedCall!ethnicity/StatefulPartitionedCall2@
gender/StatefulPartitionedCallgender/StatefulPartitionedCall2L
$gender_task1/StatefulPartitionedCall$gender_task1/StatefulPartitionedCall2L
$gender_task2/StatefulPartitionedCall$gender_task2/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall:X T
/
_output_shapes
:?????????00
!
_user_specified_name	input_6
?

?
D__inference_age_task_layer_call_and_return_conditional_losses_260880

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_age_layer_call_fn_261981

inputs
unknown:	?x
	unknown_0:x
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_260930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?%
"__inference__traced_restore_262444
file_prefix8
assignvariableop_layer1_kernel:,
assignvariableop_1_layer1_bias:3
 assignvariableop_2_layer4_kernel:	?B@,
assignvariableop_3_layer4_bias:@3
 assignvariableop_4_layer5_kernel:	@?-
assignvariableop_5_layer5_bias:	?7
#assignvariableop_6_eth_task1_kernel:
??0
!assignvariableop_7_eth_task1_bias:	?:
&assignvariableop_8_gender_task1_kernel:
??3
$assignvariableop_9_gender_task1_bias:	?7
#assignvariableop_10_age_task_kernel:
??0
!assignvariableop_11_age_task_bias:	?8
$assignvariableop_12_eth_task2_kernel:
??1
"assignvariableop_13_eth_task2_bias:	?:
'assignvariableop_14_gender_task2_kernel:	?@3
%assignvariableop_15_gender_task2_bias:@1
assignvariableop_16_age_kernel:	?x*
assignvariableop_17_age_bias:x7
$assignvariableop_18_ethnicity_kernel:	?0
"assignvariableop_19_ethnicity_bias:3
!assignvariableop_20_gender_kernel:@-
assignvariableop_21_gender_bias:*
 assignvariableop_22_rmsprop_iter:	 +
!assignvariableop_23_rmsprop_decay: 3
)assignvariableop_24_rmsprop_learning_rate: .
$assignvariableop_25_rmsprop_momentum: )
assignvariableop_26_rmsprop_rho: #
assignvariableop_27_total: #
assignvariableop_28_count: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: %
assignvariableop_31_total_2: %
assignvariableop_32_count_2: %
assignvariableop_33_total_3: %
assignvariableop_34_count_3: %
assignvariableop_35_total_4: %
assignvariableop_36_count_4: %
assignvariableop_37_total_5: %
assignvariableop_38_count_5: %
assignvariableop_39_total_6: %
assignvariableop_40_count_6: G
-assignvariableop_41_rmsprop_layer1_kernel_rms:9
+assignvariableop_42_rmsprop_layer1_bias_rms:@
-assignvariableop_43_rmsprop_layer4_kernel_rms:	?B@9
+assignvariableop_44_rmsprop_layer4_bias_rms:@@
-assignvariableop_45_rmsprop_layer5_kernel_rms:	@?:
+assignvariableop_46_rmsprop_layer5_bias_rms:	?D
0assignvariableop_47_rmsprop_eth_task1_kernel_rms:
??=
.assignvariableop_48_rmsprop_eth_task1_bias_rms:	?G
3assignvariableop_49_rmsprop_gender_task1_kernel_rms:
??@
1assignvariableop_50_rmsprop_gender_task1_bias_rms:	?C
/assignvariableop_51_rmsprop_age_task_kernel_rms:
??<
-assignvariableop_52_rmsprop_age_task_bias_rms:	?D
0assignvariableop_53_rmsprop_eth_task2_kernel_rms:
??=
.assignvariableop_54_rmsprop_eth_task2_bias_rms:	?F
3assignvariableop_55_rmsprop_gender_task2_kernel_rms:	?@?
1assignvariableop_56_rmsprop_gender_task2_bias_rms:@=
*assignvariableop_57_rmsprop_age_kernel_rms:	?x6
(assignvariableop_58_rmsprop_age_bias_rms:xC
0assignvariableop_59_rmsprop_ethnicity_kernel_rms:	?<
.assignvariableop_60_rmsprop_ethnicity_bias_rms:?
-assignvariableop_61_rmsprop_gender_kernel_rms:@9
+assignvariableop_62_rmsprop_gender_bias_rms:
identity_64??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9? 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*? 
value? B? @B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*?
value?B?@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_layer5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_eth_task1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_eth_task1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp&assignvariableop_8_gender_task1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_gender_task1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_age_task_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_age_task_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_eth_task2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_eth_task2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp'assignvariableop_14_gender_task2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp%assignvariableop_15_gender_task2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_age_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_age_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_ethnicity_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_ethnicity_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp!assignvariableop_20_gender_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_gender_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp assignvariableop_22_rmsprop_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp!assignvariableop_23_rmsprop_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_rmsprop_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp$assignvariableop_25_rmsprop_momentumIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_rmsprop_rhoIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_2Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_3Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_3Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_4Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_4Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_5Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_5Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_6Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_6Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp-assignvariableop_41_rmsprop_layer1_kernel_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp+assignvariableop_42_rmsprop_layer1_bias_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp-assignvariableop_43_rmsprop_layer4_kernel_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp+assignvariableop_44_rmsprop_layer4_bias_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp-assignvariableop_45_rmsprop_layer5_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp+assignvariableop_46_rmsprop_layer5_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp0assignvariableop_47_rmsprop_eth_task1_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp.assignvariableop_48_rmsprop_eth_task1_bias_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp3assignvariableop_49_rmsprop_gender_task1_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp1assignvariableop_50_rmsprop_gender_task1_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp/assignvariableop_51_rmsprop_age_task_kernel_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp-assignvariableop_52_rmsprop_age_task_bias_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp0assignvariableop_53_rmsprop_eth_task2_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp.assignvariableop_54_rmsprop_eth_task2_bias_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp3assignvariableop_55_rmsprop_gender_task2_kernel_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp1assignvariableop_56_rmsprop_gender_task2_bias_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp*assignvariableop_57_rmsprop_age_kernel_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp(assignvariableop_58_rmsprop_age_bias_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp0assignvariableop_59_rmsprop_ethnicity_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp.assignvariableop_60_rmsprop_ethnicity_bias_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp-assignvariableop_61_rmsprop_gender_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp+assignvariableop_62_rmsprop_gender_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_64IdentityIdentity_63:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_64Identity_64:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
'__inference_layer5_layer_call_fn_261861

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_260795p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
*__inference_eth_task1_layer_call_fn_261881

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_260829p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_gender_layer_call_and_return_conditional_losses_260897

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
B__inference_layer1_layer_call_and_return_conditional_losses_260752

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????//i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????//w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
*__inference_ethnicity_layer_call_fn_262000

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_260914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_261791
input_6!
unknown:
	unknown_0:
	unknown_1:	?B@
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:@

unknown_16:

unknown_17:	?

unknown_18:

unknown_19:	?x

unknown_20:x
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????x:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_260722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????00
!
_user_specified_name	input_6
?@
?	
A__inference_Logan_layer_call_and_return_conditional_losses_261391
input_6'
layer1_261331:
layer1_261333: 
layer4_261338:	?B@
layer4_261340:@ 
layer5_261343:	@?
layer5_261345:	?'
gender_task1_261348:
??"
gender_task1_261350:	?$
eth_task1_261353:
??
eth_task1_261355:	?&
gender_task2_261358:	?@!
gender_task2_261360:@$
eth_task2_261363:
??
eth_task2_261365:	?#
age_task_261368:
??
age_task_261370:	?
gender_261373:@
gender_261375:#
ethnicity_261378:	?
ethnicity_261380:

age_261383:	?x

age_261385:x
identity

identity_1

identity_2??age/StatefulPartitionedCall? age_task/StatefulPartitionedCall?!eth_task1/StatefulPartitionedCall?!eth_task2/StatefulPartitionedCall?!ethnicity/StatefulPartitionedCall?gender/StatefulPartitionedCall?$gender_task1/StatefulPartitionedCall?$gender_task2/StatefulPartitionedCall?layer1/StatefulPartitionedCall?layer4/StatefulPartitionedCall?layer5/StatefulPartitionedCall?
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_6layer1_261331layer1_261333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_260752?
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_260731?
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????B* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_260765?
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_261338layer4_261340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_260778?
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_261343layer5_261345*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_260795?
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0gender_task1_261348gender_task1_261350*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_260812?
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0eth_task1_261353eth_task1_261355*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_260829?
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_261358gender_task2_261360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_260846?
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_261363eth_task2_261365*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_260863?
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0age_task_261368age_task_261370*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_260880?
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_261373gender_261375*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_260897?
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_261378ethnicity_261380*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_260914?
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_261383
age_261385*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_260930s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 2:
age/StatefulPartitionedCallage/StatefulPartitionedCall2D
 age_task/StatefulPartitionedCall age_task/StatefulPartitionedCall2F
!eth_task1/StatefulPartitionedCall!eth_task1/StatefulPartitionedCall2F
!eth_task2/StatefulPartitionedCall!eth_task2/StatefulPartitionedCall2F
!ethnicity/StatefulPartitionedCall!ethnicity/StatefulPartitionedCall2@
gender/StatefulPartitionedCallgender/StatefulPartitionedCall2L
$gender_task1/StatefulPartitionedCall$gender_task1/StatefulPartitionedCall2L
$gender_task2/StatefulPartitionedCall$gender_task2/StatefulPartitionedCall2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall:X T
/
_output_shapes
:?????????00
!
_user_specified_name	input_6
?
^
B__inference_layer3_layer_call_and_return_conditional_losses_261832

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????!  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????BY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????B"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
H__inference_gender_task1_layer_call_and_return_conditional_losses_260812

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_Logan_layer_call_fn_260990
input_6!
unknown:
	unknown_0:
	unknown_1:	?B@
	unknown_2:@
	unknown_3:	@?
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?@

unknown_10:@

unknown_11:
??

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:@

unknown_16:

unknown_17:	?

unknown_18:

unknown_19:	?x

unknown_20:x
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:?????????x:?????????:?????????*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_260939o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????00
!
_user_specified_name	input_6
?
?
B__inference_layer1_layer_call_and_return_conditional_losses_261811

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????//i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????//w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?	
?
?__inference_age_layer_call_and_return_conditional_losses_260930

inputs1
matmul_readvariableop_resource:	?x-
biasadd_readvariableop_resource:x
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????xw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_layer5_layer_call_and_return_conditional_losses_261872

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
E__inference_eth_task2_layer_call_and_return_conditional_losses_261952

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_eth_task2_layer_call_fn_261941

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_260863p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_layer1_layer_call_fn_261800

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_260752w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????//`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?c
?
A__inference_Logan_layer_call_and_return_conditional_losses_261736

inputs?
%layer1_conv2d_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:8
%layer4_matmul_readvariableop_resource:	?B@4
&layer4_biasadd_readvariableop_resource:@8
%layer5_matmul_readvariableop_resource:	@?5
&layer5_biasadd_readvariableop_resource:	??
+gender_task1_matmul_readvariableop_resource:
??;
,gender_task1_biasadd_readvariableop_resource:	?<
(eth_task1_matmul_readvariableop_resource:
??8
)eth_task1_biasadd_readvariableop_resource:	?>
+gender_task2_matmul_readvariableop_resource:	?@:
,gender_task2_biasadd_readvariableop_resource:@<
(eth_task2_matmul_readvariableop_resource:
??8
)eth_task2_biasadd_readvariableop_resource:	?;
'age_task_matmul_readvariableop_resource:
??7
(age_task_biasadd_readvariableop_resource:	?7
%gender_matmul_readvariableop_resource:@4
&gender_biasadd_readvariableop_resource:;
(ethnicity_matmul_readvariableop_resource:	?7
)ethnicity_biasadd_readvariableop_resource:5
"age_matmul_readvariableop_resource:	?x1
#age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2??age/BiasAdd/ReadVariableOp?age/MatMul/ReadVariableOp?age_task/BiasAdd/ReadVariableOp?age_task/MatMul/ReadVariableOp? eth_task1/BiasAdd/ReadVariableOp?eth_task1/MatMul/ReadVariableOp? eth_task2/BiasAdd/ReadVariableOp?eth_task2/MatMul/ReadVariableOp? ethnicity/BiasAdd/ReadVariableOp?ethnicity/MatMul/ReadVariableOp?gender/BiasAdd/ReadVariableOp?gender/MatMul/ReadVariableOp?#gender_task1/BiasAdd/ReadVariableOp?"gender_task1/MatMul/ReadVariableOp?#gender_task2/BiasAdd/ReadVariableOp?"gender_task2/MatMul/ReadVariableOp?layer1/BiasAdd/ReadVariableOp?layer1/Conv2D/ReadVariableOp?layer4/BiasAdd/ReadVariableOp?layer4/MatMul/ReadVariableOp?layer5/BiasAdd/ReadVariableOp?layer5/MatMul/ReadVariableOp?
layer1/Conv2D/ReadVariableOpReadVariableOp%layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
layer1/Conv2DConv2Dinputs$layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//*
paddingVALID*
strides
?
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
layer1/BiasAddBiasAddlayer1/Conv2D:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????//f
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????//?
layer2/MaxPoolMaxPoollayer1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
]
layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????!  |
layer3/ReshapeReshapelayer2/MaxPool:output:0layer3/Const:output:0*
T0*(
_output_shapes
:??????????B?
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes
:	?B@*
dtype0?
layer4/MatMulMatMullayer3/Reshape:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@^
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????_
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"gender_task1/MatMul/ReadVariableOpReadVariableOp+gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
gender_task1/MatMulMatMullayer5/Relu:activations:0*gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#gender_task1/BiasAdd/ReadVariableOpReadVariableOp,gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
gender_task1/BiasAddBiasAddgender_task1/MatMul:product:0+gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
gender_task1/ReluRelugender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
eth_task1/MatMul/ReadVariableOpReadVariableOp(eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
eth_task1/MatMulMatMullayer5/Relu:activations:0'eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 eth_task1/BiasAdd/ReadVariableOpReadVariableOp)eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
eth_task1/BiasAddBiasAddeth_task1/MatMul:product:0(eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
eth_task1/ReluRelueth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"gender_task2/MatMul/ReadVariableOpReadVariableOp+gender_task2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
gender_task2/MatMulMatMulgender_task1/Relu:activations:0*gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
#gender_task2/BiasAdd/ReadVariableOpReadVariableOp,gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
gender_task2/BiasAddBiasAddgender_task2/MatMul:product:0+gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@j
gender_task2/ReluRelugender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
eth_task2/MatMul/ReadVariableOpReadVariableOp(eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
eth_task2/MatMulMatMuleth_task1/Relu:activations:0'eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
 eth_task2/BiasAdd/ReadVariableOpReadVariableOp)eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
eth_task2/BiasAddBiasAddeth_task2/MatMul:product:0(eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????e
eth_task2/ReluRelueth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
age_task/MatMul/ReadVariableOpReadVariableOp'age_task_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
age_task/MatMulMatMullayer5/Relu:activations:0&age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
age_task/BiasAdd/ReadVariableOpReadVariableOp(age_task_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
age_task/BiasAddBiasAddage_task/MatMul:product:0'age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????c
age_task/ReluReluage_task/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
gender/MatMul/ReadVariableOpReadVariableOp%gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0?
gender/MatMulMatMulgender_task2/Relu:activations:0$gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
gender/BiasAdd/ReadVariableOpReadVariableOp&gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
gender/BiasAddBiasAddgender/MatMul:product:0%gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
gender/SigmoidSigmoidgender/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
ethnicity/MatMul/ReadVariableOpReadVariableOp(ethnicity_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
ethnicity/MatMulMatMuleth_task2/Relu:activations:0'ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 ethnicity/BiasAdd/ReadVariableOpReadVariableOp)ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
ethnicity/BiasAddBiasAddethnicity/MatMul:product:0(ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????j
ethnicity/SigmoidSigmoidethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:?????????}
age/MatMul/ReadVariableOpReadVariableOp"age_matmul_readvariableop_resource*
_output_shapes
:	?x*
dtype0?

age/MatMulMatMulage_task/Relu:activations:0!age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xz
age/BiasAdd/ReadVariableOpReadVariableOp#age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0?
age/BiasAddBiasAddage/MatMul:product:0"age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????xc
IdentityIdentityage/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????xf

Identity_1Identityethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????c

Identity_2Identitygender/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^age/BiasAdd/ReadVariableOp^age/MatMul/ReadVariableOp ^age_task/BiasAdd/ReadVariableOp^age_task/MatMul/ReadVariableOp!^eth_task1/BiasAdd/ReadVariableOp ^eth_task1/MatMul/ReadVariableOp!^eth_task2/BiasAdd/ReadVariableOp ^eth_task2/MatMul/ReadVariableOp!^ethnicity/BiasAdd/ReadVariableOp ^ethnicity/MatMul/ReadVariableOp^gender/BiasAdd/ReadVariableOp^gender/MatMul/ReadVariableOp$^gender_task1/BiasAdd/ReadVariableOp#^gender_task1/MatMul/ReadVariableOp$^gender_task2/BiasAdd/ReadVariableOp#^gender_task2/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/Conv2D/ReadVariableOp^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^layer5/BiasAdd/ReadVariableOp^layer5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????00: : : : : : : : : : : : : : : : : : : : : : 28
age/BiasAdd/ReadVariableOpage/BiasAdd/ReadVariableOp26
age/MatMul/ReadVariableOpage/MatMul/ReadVariableOp2B
age_task/BiasAdd/ReadVariableOpage_task/BiasAdd/ReadVariableOp2@
age_task/MatMul/ReadVariableOpage_task/MatMul/ReadVariableOp2D
 eth_task1/BiasAdd/ReadVariableOp eth_task1/BiasAdd/ReadVariableOp2B
eth_task1/MatMul/ReadVariableOpeth_task1/MatMul/ReadVariableOp2D
 eth_task2/BiasAdd/ReadVariableOp eth_task2/BiasAdd/ReadVariableOp2B
eth_task2/MatMul/ReadVariableOpeth_task2/MatMul/ReadVariableOp2D
 ethnicity/BiasAdd/ReadVariableOp ethnicity/BiasAdd/ReadVariableOp2B
ethnicity/MatMul/ReadVariableOpethnicity/MatMul/ReadVariableOp2>
gender/BiasAdd/ReadVariableOpgender/BiasAdd/ReadVariableOp2<
gender/MatMul/ReadVariableOpgender/MatMul/ReadVariableOp2J
#gender_task1/BiasAdd/ReadVariableOp#gender_task1/BiasAdd/ReadVariableOp2H
"gender_task1/MatMul/ReadVariableOp"gender_task1/MatMul/ReadVariableOp2J
#gender_task2/BiasAdd/ReadVariableOp#gender_task2/BiasAdd/ReadVariableOp2H
"gender_task2/MatMul/ReadVariableOp"gender_task2/MatMul/ReadVariableOp2>
layer1/BiasAdd/ReadVariableOplayer1/BiasAdd/ReadVariableOp2<
layer1/Conv2D/ReadVariableOplayer1/Conv2D/ReadVariableOp2>
layer4/BiasAdd/ReadVariableOplayer4/BiasAdd/ReadVariableOp2<
layer4/MatMul/ReadVariableOplayer4/MatMul/ReadVariableOp2>
layer5/BiasAdd/ReadVariableOplayer5/BiasAdd/ReadVariableOp2<
layer5/MatMul/ReadVariableOplayer5/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????00
 
_user_specified_nameinputs
?
?
'__inference_gender_layer_call_fn_262020

inputs
unknown:@
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_260897o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
^
B__inference_layer2_layer_call_and_return_conditional_losses_260731

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_68
serving_default_input_6:0?????????007
age0
StatefulPartitionedCall:0?????????x=
	ethnicity0
StatefulPartitionedCall:1?????????:
gender0
StatefulPartitionedCall:2?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer_with_weights-9
layer-12
layer_with_weights-10
layer-13
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
?

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
?

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
?

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ekernel
Fbias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Mkernel
Nbias
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Ukernel
Vbias
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
?

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
?

ekernel
fbias
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
?

mkernel
nbias
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
?

ukernel
vbias
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses"
_tf_keras_layer
?
}iter
	~decay
learning_rate
?momentum
?rho
rms?
rms?
-rms?
.rms?
5rms?
6rms?
=rms?
>rms?
Erms?
Frms?
Mrms?
Nrms?
Urms?
Vrms?
]rms?
^rms?
erms?
frms?
mrms?
nrms?
urms?
vrms?"
	optimizer
)
?0"
trackable_tuple_wrapper
?
0
1
-2
.3
54
65
=6
>7
E8
F9
M10
N11
U12
V13
]14
^15
e16
f17
m18
n19
u20
v21"
trackable_list_wrapper
?
0
1
-2
.3
54
65
=6
>7
E8
F9
M10
N11
U12
V13
]14
^15
e16
f17
m18
n19
u20
v21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_Logan_layer_call_fn_260990
&__inference_Logan_layer_call_fn_261513
&__inference_Logan_layer_call_fn_261566
&__inference_Logan_layer_call_fn_261328?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_Logan_layer_call_and_return_conditional_losses_261651
A__inference_Logan_layer_call_and_return_conditional_losses_261736
A__inference_Logan_layer_call_and_return_conditional_losses_261391
A__inference_Logan_layer_call_and_return_conditional_losses_261454?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_260722input_6"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-
?serving_default"
signature_map
':%2layer1/kernel
:2layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_layer1_layer_call_fn_261800?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_layer1_layer_call_and_return_conditional_losses_261811?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_layer2_layer_call_fn_261816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_layer2_layer_call_and_return_conditional_losses_261821?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_layer3_layer_call_fn_261826?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_layer3_layer_call_and_return_conditional_losses_261832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :	?B@2layer4/kernel
:@2layer4/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_layer4_layer_call_fn_261841?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_layer4_layer_call_and_return_conditional_losses_261852?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :	@?2layer5/kernel
:?2layer5/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_layer5_layer_call_fn_261861?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_layer5_layer_call_and_return_conditional_losses_261872?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
$:"
??2eth_task1/kernel
:?2eth_task1/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_eth_task1_layer_call_fn_261881?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_eth_task1_layer_call_and_return_conditional_losses_261892?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
':%
??2gender_task1/kernel
 :?2gender_task1/bias
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_gender_task1_layer_call_fn_261901?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_gender_task1_layer_call_and_return_conditional_losses_261912?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
#:!
??2age_task/kernel
:?2age_task/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_age_task_layer_call_fn_261921?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_age_task_layer_call_and_return_conditional_losses_261932?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
$:"
??2eth_task2/kernel
:?2eth_task2/bias
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_eth_task2_layer_call_fn_261941?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_eth_task2_layer_call_and_return_conditional_losses_261952?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
&:$	?@2gender_task2/kernel
:@2gender_task2/bias
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_gender_task2_layer_call_fn_261961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_gender_task2_layer_call_and_return_conditional_losses_261972?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	?x2
age/kernel
:x2age/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
?2?
$__inference_age_layer_call_fn_261981?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_age_layer_call_and_return_conditional_losses_261991?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
#:!	?2ethnicity/kernel
:2ethnicity/bias
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_ethnicity_layer_call_fn_262000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_ethnicity_layer_call_and_return_conditional_losses_262011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:@2gender/kernel
:2gender/bias
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_gender_layer_call_fn_262020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_gender_layer_call_and_return_conditional_losses_262031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13"
trackable_list_wrapper
X
?0
?1
?2
?3
?4
?5
?6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_261791input_6"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
1:/2RMSprop/layer1/kernel/rms
#:!2RMSprop/layer1/bias/rms
*:(	?B@2RMSprop/layer4/kernel/rms
#:!@2RMSprop/layer4/bias/rms
*:(	@?2RMSprop/layer5/kernel/rms
$:"?2RMSprop/layer5/bias/rms
.:,
??2RMSprop/eth_task1/kernel/rms
':%?2RMSprop/eth_task1/bias/rms
1:/
??2RMSprop/gender_task1/kernel/rms
*:(?2RMSprop/gender_task1/bias/rms
-:+
??2RMSprop/age_task/kernel/rms
&:$?2RMSprop/age_task/bias/rms
.:,
??2RMSprop/eth_task2/kernel/rms
':%?2RMSprop/eth_task2/bias/rms
0:.	?@2RMSprop/gender_task2/kernel/rms
):'@2RMSprop/gender_task2/bias/rms
':%	?x2RMSprop/age/kernel/rms
 :x2RMSprop/age/bias/rms
-:+	?2RMSprop/ethnicity/kernel/rms
&:$2RMSprop/ethnicity/bias/rms
):'@2RMSprop/gender/kernel/rms
#:!2RMSprop/gender/bias/rms?
A__inference_Logan_layer_call_and_return_conditional_losses_261391?-.56EF=>]^UVMNuvmnef@?=
6?3
)?&
input_6?????????00
p 

 
? "j?g
`?]
?
0/0?????????x
?
0/1?????????
?
0/2?????????
? ?
A__inference_Logan_layer_call_and_return_conditional_losses_261454?-.56EF=>]^UVMNuvmnef@?=
6?3
)?&
input_6?????????00
p

 
? "j?g
`?]
?
0/0?????????x
?
0/1?????????
?
0/2?????????
? ?
A__inference_Logan_layer_call_and_return_conditional_losses_261651?-.56EF=>]^UVMNuvmnef??<
5?2
(?%
inputs?????????00
p 

 
? "j?g
`?]
?
0/0?????????x
?
0/1?????????
?
0/2?????????
? ?
A__inference_Logan_layer_call_and_return_conditional_losses_261736?-.56EF=>]^UVMNuvmnef??<
5?2
(?%
inputs?????????00
p

 
? "j?g
`?]
?
0/0?????????x
?
0/1?????????
?
0/2?????????
? ?
&__inference_Logan_layer_call_fn_260990?-.56EF=>]^UVMNuvmnef@?=
6?3
)?&
input_6?????????00
p 

 
? "Z?W
?
0?????????x
?
1?????????
?
2??????????
&__inference_Logan_layer_call_fn_261328?-.56EF=>]^UVMNuvmnef@?=
6?3
)?&
input_6?????????00
p

 
? "Z?W
?
0?????????x
?
1?????????
?
2??????????
&__inference_Logan_layer_call_fn_261513?-.56EF=>]^UVMNuvmnef??<
5?2
(?%
inputs?????????00
p 

 
? "Z?W
?
0?????????x
?
1?????????
?
2??????????
&__inference_Logan_layer_call_fn_261566?-.56EF=>]^UVMNuvmnef??<
5?2
(?%
inputs?????????00
p

 
? "Z?W
?
0?????????x
?
1?????????
?
2??????????
!__inference__wrapped_model_260722?-.56EF=>]^UVMNuvmnef8?5
.?+
)?&
input_6?????????00
? "???
$
age?
age?????????x
0
	ethnicity#? 
	ethnicity?????????
*
gender ?
gender??????????
?__inference_age_layer_call_and_return_conditional_losses_261991]ef0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????x
? x
$__inference_age_layer_call_fn_261981Pef0?-
&?#
!?
inputs??????????
? "??????????x?
D__inference_age_task_layer_call_and_return_conditional_losses_261932^MN0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_age_task_layer_call_fn_261921QMN0?-
&?#
!?
inputs??????????
? "????????????
E__inference_eth_task1_layer_call_and_return_conditional_losses_261892^=>0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_eth_task1_layer_call_fn_261881Q=>0?-
&?#
!?
inputs??????????
? "????????????
E__inference_eth_task2_layer_call_and_return_conditional_losses_261952^UV0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? 
*__inference_eth_task2_layer_call_fn_261941QUV0?-
&?#
!?
inputs??????????
? "????????????
E__inference_ethnicity_layer_call_and_return_conditional_losses_262011]mn0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_ethnicity_layer_call_fn_262000Pmn0?-
&?#
!?
inputs??????????
? "???????????
B__inference_gender_layer_call_and_return_conditional_losses_262031\uv/?,
%?"
 ?
inputs?????????@
? "%?"
?
0?????????
? z
'__inference_gender_layer_call_fn_262020Ouv/?,
%?"
 ?
inputs?????????@
? "???????????
H__inference_gender_task1_layer_call_and_return_conditional_losses_261912^EF0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
-__inference_gender_task1_layer_call_fn_261901QEF0?-
&?#
!?
inputs??????????
? "????????????
H__inference_gender_task2_layer_call_and_return_conditional_losses_261972]]^0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? ?
-__inference_gender_task2_layer_call_fn_261961P]^0?-
&?#
!?
inputs??????????
? "??????????@?
B__inference_layer1_layer_call_and_return_conditional_losses_261811l7?4
-?*
(?%
inputs?????????00
? "-?*
#? 
0?????????//
? ?
'__inference_layer1_layer_call_fn_261800_7?4
-?*
(?%
inputs?????????00
? " ??????????//?
B__inference_layer2_layer_call_and_return_conditional_losses_261821?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
'__inference_layer2_layer_call_fn_261816?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_layer3_layer_call_and_return_conditional_losses_261832a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????B
? 
'__inference_layer3_layer_call_fn_261826T7?4
-?*
(?%
inputs?????????
? "???????????B?
B__inference_layer4_layer_call_and_return_conditional_losses_261852]-.0?-
&?#
!?
inputs??????????B
? "%?"
?
0?????????@
? {
'__inference_layer4_layer_call_fn_261841P-.0?-
&?#
!?
inputs??????????B
? "??????????@?
B__inference_layer5_layer_call_and_return_conditional_losses_261872]56/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? {
'__inference_layer5_layer_call_fn_261861P56/?,
%?"
 ?
inputs?????????@
? "????????????
$__inference_signature_wrapper_261791?-.56EF=>]^UVMNuvmnefC?@
? 
9?6
4
input_6)?&
input_6?????????00"???
$
age?
age?????????x
0
	ethnicity#? 
	ethnicity?????????
*
gender ?
gender?????????