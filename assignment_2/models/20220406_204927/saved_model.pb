¾ô
¾
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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

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

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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68æ
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
shape:	B@*
shared_namelayer4/kernel
p
!layer4/kernel/Read/ReadVariableOpReadVariableOplayer4/kernel*
_output_shapes
:	B@*
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
shape:	@*
shared_namelayer5/kernel
p
!layer5/kernel/Read/ReadVariableOpReadVariableOplayer5/kernel*
_output_shapes
:	@*
dtype0
o
layer5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer5/bias
h
layer5/bias/Read/ReadVariableOpReadVariableOplayer5/bias*
_output_shapes	
:*
dtype0
x
layer6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namelayer6/kernel
q
!layer6/kernel/Read/ReadVariableOpReadVariableOplayer6/kernel* 
_output_shapes
:
*
dtype0
o
layer6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer6/bias
h
layer6/bias/Read/ReadVariableOpReadVariableOplayer6/bias*
_output_shapes	
:*
dtype0
~
eth_task1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameeth_task1/kernel
w
$eth_task1/kernel/Read/ReadVariableOpReadVariableOpeth_task1/kernel* 
_output_shapes
:
*
dtype0
u
eth_task1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameeth_task1/bias
n
"eth_task1/bias/Read/ReadVariableOpReadVariableOpeth_task1/bias*
_output_shapes	
:*
dtype0

gender_task1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_namegender_task1/kernel
}
'gender_task1/kernel/Read/ReadVariableOpReadVariableOpgender_task1/kernel* 
_output_shapes
:
*
dtype0
{
gender_task1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namegender_task1/bias
t
%gender_task1/bias/Read/ReadVariableOpReadVariableOpgender_task1/bias*
_output_shapes	
:*
dtype0
|
age_task/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_nameage_task/kernel
u
#age_task/kernel/Read/ReadVariableOpReadVariableOpage_task/kernel* 
_output_shapes
:
*
dtype0
s
age_task/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameage_task/bias
l
!age_task/bias/Read/ReadVariableOpReadVariableOpage_task/bias*
_output_shapes	
:*
dtype0
~
eth_task2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameeth_task2/kernel
w
$eth_task2/kernel/Read/ReadVariableOpReadVariableOpeth_task2/kernel* 
_output_shapes
:
*
dtype0
u
eth_task2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameeth_task2/bias
n
"eth_task2/bias/Read/ReadVariableOpReadVariableOpeth_task2/bias*
_output_shapes	
:*
dtype0

gender_task2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*$
shared_namegender_task2/kernel
|
'gender_task2/kernel/Read/ReadVariableOpReadVariableOpgender_task2/kernel*
_output_shapes
:	@*
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
shape:	x*
shared_name
age/kernel
j
age/kernel/Read/ReadVariableOpReadVariableOp
age/kernel*
_output_shapes
:	x*
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
shape:	*!
shared_nameethnicity/kernel
v
$ethnicity/kernel/Read/ReadVariableOpReadVariableOpethnicity/kernel*
_output_shapes
:	*
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

RMSprop/layer1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/layer1/kernel/rms

-RMSprop/layer1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer1/kernel/rms*&
_output_shapes
:*
dtype0

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

RMSprop/layer4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	B@**
shared_nameRMSprop/layer4/kernel/rms

-RMSprop/layer4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer4/kernel/rms*
_output_shapes
:	B@*
dtype0

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

RMSprop/layer5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@**
shared_nameRMSprop/layer5/kernel/rms

-RMSprop/layer5/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer5/kernel/rms*
_output_shapes
:	@*
dtype0

RMSprop/layer5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameRMSprop/layer5/bias/rms

+RMSprop/layer5/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer5/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/layer6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_nameRMSprop/layer6/kernel/rms

-RMSprop/layer6/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer6/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/layer6/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameRMSprop/layer6/bias/rms

+RMSprop/layer6/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer6/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/eth_task1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameRMSprop/eth_task1/kernel/rms

0RMSprop/eth_task1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task1/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/eth_task1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/eth_task1/bias/rms

.RMSprop/eth_task1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task1/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/gender_task1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!RMSprop/gender_task1/kernel/rms

3RMSprop/gender_task1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task1/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/gender_task1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/gender_task1/bias/rms

1RMSprop/gender_task1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task1/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/age_task/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameRMSprop/age_task/kernel/rms

/RMSprop/age_task/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age_task/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/age_task/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/age_task/bias/rms

-RMSprop/age_task/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/age_task/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/eth_task2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*-
shared_nameRMSprop/eth_task2/kernel/rms

0RMSprop/eth_task2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task2/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/eth_task2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/eth_task2/bias/rms

.RMSprop/eth_task2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task2/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/gender_task2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*0
shared_name!RMSprop/gender_task2/kernel/rms

3RMSprop/gender_task2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task2/kernel/rms*
_output_shapes
:	@*
dtype0

RMSprop/gender_task2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/gender_task2/bias/rms

1RMSprop/gender_task2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task2/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/age/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	x*'
shared_nameRMSprop/age/kernel/rms

*RMSprop/age/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age/kernel/rms*
_output_shapes
:	x*
dtype0

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

RMSprop/ethnicity/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*-
shared_nameRMSprop/ethnicity/kernel/rms

0RMSprop/ethnicity/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/ethnicity/kernel/rms*
_output_shapes
:	*
dtype0

RMSprop/ethnicity/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/ethnicity/bias/rms

.RMSprop/ethnicity/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/ethnicity/bias/rms*
_output_shapes
:*
dtype0

RMSprop/gender/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nameRMSprop/gender/kernel/rms

-RMSprop/gender/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender/kernel/rms*
_output_shapes

:@*
dtype0

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

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Á
value¶B² Bª
Ø
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
layer_with_weights-11
layer-14
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses*

"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 

(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
¦

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses*
¦

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
¦

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
¦

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
¦

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
¦

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses*
¦

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
¦

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses*
¦

nkernel
obias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses*
¦

vkernel
wbias
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses*
¬

~kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
è
	iter

decay
learning_rate
momentum
rho
rmsþ
rmsÿ
.rms
/rms
6rms
7rms
>rms
?rms
Frms
Grms
Nrms
Orms
Vrms
Wrms
^rms
_rms
frms
grms
nrms
orms
vrms
wrms
~rms
rms*


0* 
º
0
1
.2
/3
64
75
>6
?7
F8
G9
N10
O11
V12
W13
^14
_15
f16
g17
n18
o19
v20
w21
~22
23*
º
0
1
.2
/3
64
75
>6
?7
F8
G9
N10
O11
V12
W13
^14
_15
f16
g17
n18
o19
v20
w21
~22
23*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
]W
VARIABLE_VALUElayer1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUElayer4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 

¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUElayer5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUElayer6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElayer6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

>0
?1*

>0
?1*
* 

«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEeth_task1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEeth_task1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 

°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEgender_task1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEgender_task1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

N0
O1*

N0
O1*
* 

µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEage_task/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEage_task/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

V0
W1*

V0
W1*
* 

ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEeth_task2/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEeth_task2/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

^0
_1*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEgender_task2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEgender_task2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

f0
g1*

f0
g1*
* 

Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*
* 
* 
ZT
VARIABLE_VALUE
age/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEage/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

n0
o1*

n0
o1*
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEethnicity/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEethnicity/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

v0
w1*

v0
w1*
* 

Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEgender/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEgender/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

~0
1*
* 

Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
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
r
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
13
14*
<
Ø0
Ù1
Ú2
Û3
Ü4
Ý5
Þ6*
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
* 
* 
* 
* 
* 
<

ßtotal

àcount
á	variables
â	keras_api*
<

ãtotal

äcount
å	variables
æ	keras_api*
<

çtotal

ècount
é	variables
ê	keras_api*
<

ëtotal

ìcount
í	variables
î	keras_api*
M

ïtotal

ðcount
ñ
_fn_kwargs
ò	variables
ó	keras_api*
M

ôtotal

õcount
ö
_fn_kwargs
÷	variables
ø	keras_api*
M

ùtotal

úcount
û
_fn_kwargs
ü	variables
ý	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ß0
à1*

á	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

ã0
ä1*

å	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

ç0
è1*

é	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

ë0
ì1*

í	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ï0
ð1*

ò	variables*
UO
VARIABLE_VALUEtotal_54keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_54keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ô0
õ1*

÷	variables*
UO
VARIABLE_VALUEtotal_64keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_64keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ù0
ú1*

ü	variables*

VARIABLE_VALUERMSprop/layer1/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUERMSprop/layer1/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/layer4/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUERMSprop/layer4/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/layer5/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUERMSprop/layer5/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/layer6/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUERMSprop/layer6/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/eth_task1/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/eth_task1/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/gender_task1/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/gender_task1/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/age_task/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/age_task/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/eth_task2/kernel/rmsTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/eth_task2/bias/rmsRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/gender_task2/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/gender_task2/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUERMSprop/age/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUERMSprop/age/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/ethnicity/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/ethnicity/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/gender/kernel/rmsUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUERMSprop/gender/bias/rmsSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_15Placeholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿ00

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_15layer1/kernellayer1/biaslayer4/kernellayer4/biaslayer5/kernellayer5/biaslayer6/kernellayer6/biasgender_task1/kernelgender_task1/biaseth_task1/kerneleth_task1/biasgender_task2/kernelgender_task2/biaseth_task2/kerneleth_task2/biasage_task/kernelage_task/biasgender/kernelgender/biasethnicity/kernelethnicity/bias
age/kernelage/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿx:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_886732
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
÷
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer4/kernel/Read/ReadVariableOplayer4/bias/Read/ReadVariableOp!layer5/kernel/Read/ReadVariableOplayer5/bias/Read/ReadVariableOp!layer6/kernel/Read/ReadVariableOplayer6/bias/Read/ReadVariableOp$eth_task1/kernel/Read/ReadVariableOp"eth_task1/bias/Read/ReadVariableOp'gender_task1/kernel/Read/ReadVariableOp%gender_task1/bias/Read/ReadVariableOp#age_task/kernel/Read/ReadVariableOp!age_task/bias/Read/ReadVariableOp$eth_task2/kernel/Read/ReadVariableOp"eth_task2/bias/Read/ReadVariableOp'gender_task2/kernel/Read/ReadVariableOp%gender_task2/bias/Read/ReadVariableOpage/kernel/Read/ReadVariableOpage/bias/Read/ReadVariableOp$ethnicity/kernel/Read/ReadVariableOp"ethnicity/bias/Read/ReadVariableOp!gender/kernel/Read/ReadVariableOpgender/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOp-RMSprop/layer1/kernel/rms/Read/ReadVariableOp+RMSprop/layer1/bias/rms/Read/ReadVariableOp-RMSprop/layer4/kernel/rms/Read/ReadVariableOp+RMSprop/layer4/bias/rms/Read/ReadVariableOp-RMSprop/layer5/kernel/rms/Read/ReadVariableOp+RMSprop/layer5/bias/rms/Read/ReadVariableOp-RMSprop/layer6/kernel/rms/Read/ReadVariableOp+RMSprop/layer6/bias/rms/Read/ReadVariableOp0RMSprop/eth_task1/kernel/rms/Read/ReadVariableOp.RMSprop/eth_task1/bias/rms/Read/ReadVariableOp3RMSprop/gender_task1/kernel/rms/Read/ReadVariableOp1RMSprop/gender_task1/bias/rms/Read/ReadVariableOp/RMSprop/age_task/kernel/rms/Read/ReadVariableOp-RMSprop/age_task/bias/rms/Read/ReadVariableOp0RMSprop/eth_task2/kernel/rms/Read/ReadVariableOp.RMSprop/eth_task2/bias/rms/Read/ReadVariableOp3RMSprop/gender_task2/kernel/rms/Read/ReadVariableOp1RMSprop/gender_task2/bias/rms/Read/ReadVariableOp*RMSprop/age/kernel/rms/Read/ReadVariableOp(RMSprop/age/bias/rms/Read/ReadVariableOp0RMSprop/ethnicity/kernel/rms/Read/ReadVariableOp.RMSprop/ethnicity/bias/rms/Read/ReadVariableOp-RMSprop/gender/kernel/rms/Read/ReadVariableOp+RMSprop/gender/bias/rms/Read/ReadVariableOpConst*P
TinI
G2E	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_887218
¶
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer1/kernellayer1/biaslayer4/kernellayer4/biaslayer5/kernellayer5/biaslayer6/kernellayer6/biaseth_task1/kerneleth_task1/biasgender_task1/kernelgender_task1/biasage_task/kernelage_task/biaseth_task2/kerneleth_task2/biasgender_task2/kernelgender_task2/bias
age/kernelage/biasethnicity/kernelethnicity/biasgender/kernelgender/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1total_2count_2total_3count_3total_4count_4total_5count_5total_6count_6RMSprop/layer1/kernel/rmsRMSprop/layer1/bias/rmsRMSprop/layer4/kernel/rmsRMSprop/layer4/bias/rmsRMSprop/layer5/kernel/rmsRMSprop/layer5/bias/rmsRMSprop/layer6/kernel/rmsRMSprop/layer6/bias/rmsRMSprop/eth_task1/kernel/rmsRMSprop/eth_task1/bias/rmsRMSprop/gender_task1/kernel/rmsRMSprop/gender_task1/bias/rmsRMSprop/age_task/kernel/rmsRMSprop/age_task/bias/rmsRMSprop/eth_task2/kernel/rmsRMSprop/eth_task2/bias/rmsRMSprop/gender_task2/kernel/rmsRMSprop/gender_task2/bias/rmsRMSprop/age/kernel/rmsRMSprop/age/bias/rmsRMSprop/ethnicity/kernel/rmsRMSprop/ethnicity/bias/rmsRMSprop/gender/kernel/rmsRMSprop/gender/bias/rms*O
TinH
F2D*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_887429å³

û
B__inference_layer1_layer_call_and_return_conditional_losses_886752

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
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
:ÿÿÿÿÿÿÿÿÿ//X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs

^
B__inference_layer2_layer_call_and_return_conditional_losses_886762

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

±
&__inference_Logan_layer_call_fn_885868
input_15!
unknown:
	unknown_0:
	unknown_1:	B@
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:


unknown_14:	

unknown_15:


unknown_16:	

unknown_17:@

unknown_18:

unknown_19:	

unknown_20:

unknown_21:	x

unknown_22:x
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿx:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_885813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
input_15
¡

õ
B__inference_layer5_layer_call_and_return_conditional_losses_885652

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ó
B__inference_gender_layer_call_and_return_conditional_losses_885771

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¨

ù
E__inference_eth_task2_layer_call_and_return_conditional_losses_886913

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
^
B__inference_layer3_layer_call_and_return_conditional_losses_886773

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ!  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿBY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ|
æ
__inference__traced_save_887218
file_prefix,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer4_kernel_read_readvariableop*
&savev2_layer4_bias_read_readvariableop,
(savev2_layer5_kernel_read_readvariableop*
&savev2_layer5_bias_read_readvariableop,
(savev2_layer6_kernel_read_readvariableop*
&savev2_layer6_bias_read_readvariableop/
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
2savev2_rmsprop_layer5_bias_rms_read_readvariableop8
4savev2_rmsprop_layer6_kernel_rms_read_readvariableop6
2savev2_rmsprop_layer6_bias_rms_read_readvariableop;
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

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: #
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*³"
value©"B¦"DB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHø
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B á
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_layer5_kernel_read_readvariableop&savev2_layer5_bias_read_readvariableop(savev2_layer6_kernel_read_readvariableop&savev2_layer6_bias_read_readvariableop+savev2_eth_task1_kernel_read_readvariableop)savev2_eth_task1_bias_read_readvariableop.savev2_gender_task1_kernel_read_readvariableop,savev2_gender_task1_bias_read_readvariableop*savev2_age_task_kernel_read_readvariableop(savev2_age_task_bias_read_readvariableop+savev2_eth_task2_kernel_read_readvariableop)savev2_eth_task2_bias_read_readvariableop.savev2_gender_task2_kernel_read_readvariableop,savev2_gender_task2_bias_read_readvariableop%savev2_age_kernel_read_readvariableop#savev2_age_bias_read_readvariableop+savev2_ethnicity_kernel_read_readvariableop)savev2_ethnicity_bias_read_readvariableop(savev2_gender_kernel_read_readvariableop&savev2_gender_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop4savev2_rmsprop_layer1_kernel_rms_read_readvariableop2savev2_rmsprop_layer1_bias_rms_read_readvariableop4savev2_rmsprop_layer4_kernel_rms_read_readvariableop2savev2_rmsprop_layer4_bias_rms_read_readvariableop4savev2_rmsprop_layer5_kernel_rms_read_readvariableop2savev2_rmsprop_layer5_bias_rms_read_readvariableop4savev2_rmsprop_layer6_kernel_rms_read_readvariableop2savev2_rmsprop_layer6_bias_rms_read_readvariableop7savev2_rmsprop_eth_task1_kernel_rms_read_readvariableop5savev2_rmsprop_eth_task1_bias_rms_read_readvariableop:savev2_rmsprop_gender_task1_kernel_rms_read_readvariableop8savev2_rmsprop_gender_task1_bias_rms_read_readvariableop6savev2_rmsprop_age_task_kernel_rms_read_readvariableop4savev2_rmsprop_age_task_bias_rms_read_readvariableop7savev2_rmsprop_eth_task2_kernel_rms_read_readvariableop5savev2_rmsprop_eth_task2_bias_rms_read_readvariableop:savev2_rmsprop_gender_task2_kernel_rms_read_readvariableop8savev2_rmsprop_gender_task2_bias_rms_read_readvariableop1savev2_rmsprop_age_kernel_rms_read_readvariableop/savev2_rmsprop_age_bias_rms_read_readvariableop7savev2_rmsprop_ethnicity_kernel_rms_read_readvariableop5savev2_rmsprop_ethnicity_bias_rms_read_readvariableop4savev2_rmsprop_gender_kernel_rms_read_readvariableop2savev2_rmsprop_gender_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *R
dtypesH
F2D	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*ù
_input_shapesç
ä: :::	B@:@:	@::
::
::
::
::
::	@:@:	x:x:	::@:: : : : : : : : : : : : : : : : : : : :::	B@:@:	@::
::
::
::
::
::	@:@:	x:x:	::@:: 2(
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
:	B@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:%!

_output_shapes
:	x: 

_output_shapes
:x:%!

_output_shapes
:	: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
::
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
: :*

_output_shapes
: :+

_output_shapes
: :,,(
&
_output_shapes
:: -

_output_shapes
::%.!

_output_shapes
:	B@: /

_output_shapes
:@:%0!

_output_shapes
:	@:!1

_output_shapes	
::&2"
 
_output_shapes
:
:!3

_output_shapes	
::&4"
 
_output_shapes
:
:!5

_output_shapes	
::&6"
 
_output_shapes
:
:!7

_output_shapes	
::&8"
 
_output_shapes
:
:!9

_output_shapes	
::&:"
 
_output_shapes
:
:!;

_output_shapes	
::%<!

_output_shapes
:	@: =

_output_shapes
:@:%>!

_output_shapes
:	x: ?

_output_shapes
:x:%@!

_output_shapes
:	: A

_output_shapes
::$B 

_output_shapes

:@: C

_output_shapes
::D

_output_shapes
: 
·E
Í

A__inference_Logan_layer_call_and_return_conditional_losses_885813

inputs'
layer1_885610:
layer1_885612: 
layer4_885636:	B@
layer4_885638:@ 
layer5_885653:	@
layer5_885655:	!
layer6_885670:

layer6_885672:	'
gender_task1_885687:
"
gender_task1_885689:	$
eth_task1_885704:

eth_task1_885706:	&
gender_task2_885721:	@!
gender_task2_885723:@$
eth_task2_885738:

eth_task2_885740:	#
age_task_885755:

age_task_885757:	
gender_885772:@
gender_885774:#
ethnicity_885789:	
ethnicity_885791:

age_885805:	x

age_885807:x
identity

identity_1

identity_2¢age/StatefulPartitionedCall¢ age_task/StatefulPartitionedCall¢!eth_task1/StatefulPartitionedCall¢!eth_task2/StatefulPartitionedCall¢!ethnicity/StatefulPartitionedCall¢gender/StatefulPartitionedCall¢$gender_task1/StatefulPartitionedCall¢$gender_task2/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢layer5/StatefulPartitionedCall¢layer6/StatefulPartitionedCallð
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_885610layer1_885612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_885609Ý
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_885588Î
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_885622
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_885636layer4_885638*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_885635
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_885653layer5_885655*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_885652
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_885670layer6_885672*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_885669¢
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_885687gender_task1_885689*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_885686
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_885704eth_task1_885706*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_885703§
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_885721gender_task2_885723*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_885720
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_885738eth_task2_885740*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_885737
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_885755age_task_885757*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_885754
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_885772gender_885774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_885771
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_885789ethnicity_885791*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_885788ÿ
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_885805
age_885807*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_885804s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
¦
C
'__inference_layer2_layer_call_fn_886757

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_885588
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½E
Ï

A__inference_Logan_layer_call_and_return_conditional_losses_886301
input_15'
layer1_886236:
layer1_886238: 
layer4_886243:	B@
layer4_886245:@ 
layer5_886248:	@
layer5_886250:	!
layer6_886253:

layer6_886255:	'
gender_task1_886258:
"
gender_task1_886260:	$
eth_task1_886263:

eth_task1_886265:	&
gender_task2_886268:	@!
gender_task2_886270:@$
eth_task2_886273:

eth_task2_886275:	#
age_task_886278:

age_task_886280:	
gender_886283:@
gender_886285:#
ethnicity_886288:	
ethnicity_886290:

age_886293:	x

age_886295:x
identity

identity_1

identity_2¢age/StatefulPartitionedCall¢ age_task/StatefulPartitionedCall¢!eth_task1/StatefulPartitionedCall¢!eth_task2/StatefulPartitionedCall¢!ethnicity/StatefulPartitionedCall¢gender/StatefulPartitionedCall¢$gender_task1/StatefulPartitionedCall¢$gender_task2/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢layer5/StatefulPartitionedCall¢layer6/StatefulPartitionedCallò
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_15layer1_886236layer1_886238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_885609Ý
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_885588Î
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_885622
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_886243layer4_886245*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_885635
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_886248layer5_886250*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_885652
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_886253layer6_886255*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_885669¢
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_886258gender_task1_886260*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_885686
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_886263eth_task1_886265*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_885703§
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_886268gender_task2_886270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_885720
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_886273eth_task2_886275*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_885737
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_886278age_task_886280*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_885754
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_886283gender_886285*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_885771
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_886288ethnicity_886290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_885788ÿ
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_886293
age_886295*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_885804s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
input_15


ô
B__inference_layer4_layer_call_and_return_conditional_losses_886793

inputs1
matmul_readvariableop_resource:	B@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	B@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs


÷
E__inference_ethnicity_layer_call_and_return_conditional_losses_886972

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

ù
E__inference_eth_task2_layer_call_and_return_conditional_losses_885737

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

*__inference_eth_task2_layer_call_fn_886902

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_885737p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§

ø
D__inference_age_task_layer_call_and_return_conditional_losses_885754

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ

-__inference_gender_task1_layer_call_fn_886862

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_885686p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ó
B__inference_gender_layer_call_and_return_conditional_losses_886992

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

±
&__inference_Logan_layer_call_fn_886233
input_15!
unknown:
	unknown_0:
	unknown_1:	B@
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:


unknown_14:	

unknown_15:


unknown_16:	

unknown_17:@

unknown_18:

unknown_19:	

unknown_20:

unknown_21:	x

unknown_22:x
identity

identity_1

identity_2¢StatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿx:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_886121o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
input_15
¡

õ
B__inference_layer5_layer_call_and_return_conditional_losses_886813

inputs1
matmul_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ôk

A__inference_Logan_layer_call_and_return_conditional_losses_886581

inputs?
%layer1_conv2d_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:8
%layer4_matmul_readvariableop_resource:	B@4
&layer4_biasadd_readvariableop_resource:@8
%layer5_matmul_readvariableop_resource:	@5
&layer5_biasadd_readvariableop_resource:	9
%layer6_matmul_readvariableop_resource:
5
&layer6_biasadd_readvariableop_resource:	?
+gender_task1_matmul_readvariableop_resource:
;
,gender_task1_biasadd_readvariableop_resource:	<
(eth_task1_matmul_readvariableop_resource:
8
)eth_task1_biasadd_readvariableop_resource:	>
+gender_task2_matmul_readvariableop_resource:	@:
,gender_task2_biasadd_readvariableop_resource:@<
(eth_task2_matmul_readvariableop_resource:
8
)eth_task2_biasadd_readvariableop_resource:	;
'age_task_matmul_readvariableop_resource:
7
(age_task_biasadd_readvariableop_resource:	7
%gender_matmul_readvariableop_resource:@4
&gender_biasadd_readvariableop_resource:;
(ethnicity_matmul_readvariableop_resource:	7
)ethnicity_biasadd_readvariableop_resource:5
"age_matmul_readvariableop_resource:	x1
#age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2¢age/BiasAdd/ReadVariableOp¢age/MatMul/ReadVariableOp¢age_task/BiasAdd/ReadVariableOp¢age_task/MatMul/ReadVariableOp¢ eth_task1/BiasAdd/ReadVariableOp¢eth_task1/MatMul/ReadVariableOp¢ eth_task2/BiasAdd/ReadVariableOp¢eth_task2/MatMul/ReadVariableOp¢ ethnicity/BiasAdd/ReadVariableOp¢ethnicity/MatMul/ReadVariableOp¢gender/BiasAdd/ReadVariableOp¢gender/MatMul/ReadVariableOp¢#gender_task1/BiasAdd/ReadVariableOp¢"gender_task1/MatMul/ReadVariableOp¢#gender_task2/BiasAdd/ReadVariableOp¢"gender_task2/MatMul/ReadVariableOp¢layer1/BiasAdd/ReadVariableOp¢layer1/Conv2D/ReadVariableOp¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢layer5/BiasAdd/ReadVariableOp¢layer5/MatMul/ReadVariableOp¢layer6/BiasAdd/ReadVariableOp¢layer6/MatMul/ReadVariableOp
layer1/Conv2D/ReadVariableOpReadVariableOp%layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¨
layer1/Conv2DConv2Dinputs$layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
paddingVALID*
strides

layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer1/BiasAddBiasAddlayer1/Conv2D:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//f
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//¡
layer2/MaxPoolMaxPoollayer1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
]
layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ!  |
layer3/ReshapeReshapelayer2/MaxPool:output:0layer3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes
:	B@*
dtype0
layer4/MatMulMatMullayer3/Reshape:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer6/MatMul/ReadVariableOpReadVariableOp%layer6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
layer6/MatMulMatMullayer5/Relu:activations:0$layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer6/BiasAdd/ReadVariableOpReadVariableOp&layer6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
layer6/BiasAddBiasAddlayer6/MatMul:product:0%layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
layer6/ReluRelulayer6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"gender_task1/MatMul/ReadVariableOpReadVariableOp+gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gender_task1/MatMulMatMullayer6/Relu:activations:0*gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#gender_task1/BiasAdd/ReadVariableOpReadVariableOp,gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
gender_task1/BiasAddBiasAddgender_task1/MatMul:product:0+gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
gender_task1/ReluRelugender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
eth_task1/MatMul/ReadVariableOpReadVariableOp(eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
eth_task1/MatMulMatMullayer6/Relu:activations:0'eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 eth_task1/BiasAdd/ReadVariableOpReadVariableOp)eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
eth_task1/BiasAddBiasAddeth_task1/MatMul:product:0(eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
eth_task1/ReluRelueth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"gender_task2/MatMul/ReadVariableOpReadVariableOp+gender_task2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
gender_task2/MatMulMatMulgender_task1/Relu:activations:0*gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#gender_task2/BiasAdd/ReadVariableOpReadVariableOp,gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
gender_task2/BiasAddBiasAddgender_task2/MatMul:product:0+gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
gender_task2/ReluRelugender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
eth_task2/MatMul/ReadVariableOpReadVariableOp(eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
eth_task2/MatMulMatMuleth_task1/Relu:activations:0'eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 eth_task2/BiasAdd/ReadVariableOpReadVariableOp)eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
eth_task2/BiasAddBiasAddeth_task2/MatMul:product:0(eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
eth_task2/ReluRelueth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
age_task/MatMul/ReadVariableOpReadVariableOp'age_task_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
age_task/MatMulMatMullayer6/Relu:activations:0&age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
age_task/BiasAdd/ReadVariableOpReadVariableOp(age_task_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
age_task/BiasAddBiasAddage_task/MatMul:product:0'age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
age_task/ReluReluage_task/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gender/MatMul/ReadVariableOpReadVariableOp%gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
gender/MatMulMatMulgender_task2/Relu:activations:0$gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gender/BiasAdd/ReadVariableOpReadVariableOp&gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
gender/BiasAddBiasAddgender/MatMul:product:0%gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gender/SoftmaxSoftmaxgender/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ethnicity/MatMul/ReadVariableOpReadVariableOp(ethnicity_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
ethnicity/MatMulMatMuleth_task2/Relu:activations:0'ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 ethnicity/BiasAdd/ReadVariableOpReadVariableOp)ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
ethnicity/BiasAddBiasAddethnicity/MatMul:product:0(ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ethnicity/SigmoidSigmoidethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
age/MatMul/ReadVariableOpReadVariableOp"age_matmul_readvariableop_resource*
_output_shapes
:	x*
dtype0

age/MatMulMatMulage_task/Relu:activations:0!age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxz
age/BiasAdd/ReadVariableOpReadVariableOp#age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0
age/BiasAddBiasAddage/MatMul:product:0"age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxc
IdentityIdentityage/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxf

Identity_1Identityethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi

Identity_2Identitygender/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp^age/BiasAdd/ReadVariableOp^age/MatMul/ReadVariableOp ^age_task/BiasAdd/ReadVariableOp^age_task/MatMul/ReadVariableOp!^eth_task1/BiasAdd/ReadVariableOp ^eth_task1/MatMul/ReadVariableOp!^eth_task2/BiasAdd/ReadVariableOp ^eth_task2/MatMul/ReadVariableOp!^ethnicity/BiasAdd/ReadVariableOp ^ethnicity/MatMul/ReadVariableOp^gender/BiasAdd/ReadVariableOp^gender/MatMul/ReadVariableOp$^gender_task1/BiasAdd/ReadVariableOp#^gender_task1/MatMul/ReadVariableOp$^gender_task2/BiasAdd/ReadVariableOp#^gender_task2/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/Conv2D/ReadVariableOp^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^layer5/BiasAdd/ReadVariableOp^layer5/MatMul/ReadVariableOp^layer6/BiasAdd/ReadVariableOp^layer6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 28
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
layer5/MatMul/ReadVariableOplayer5/MatMul/ReadVariableOp2>
layer6/BiasAdd/ReadVariableOplayer6/BiasAdd/ReadVariableOp2<
layer6/MatMul/ReadVariableOplayer6/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
Æ	
ñ
?__inference_age_layer_call_and_return_conditional_losses_885804

inputs1
matmul_readvariableop_resource:	x-
biasadd_readvariableop_resource:x
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç

*__inference_ethnicity_layer_call_fn_886961

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_885788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ö
B__inference_layer6_layer_call_and_return_conditional_losses_886833

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥

ö
B__inference_layer6_layer_call_and_return_conditional_losses_885669

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

'__inference_gender_layer_call_fn_886981

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_885771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Á

'__inference_layer4_layer_call_fn_886782

inputs
unknown:	B@
	unknown_0:@
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_885635o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs

û
B__inference_layer1_layer_call_and_return_conditional_losses_885609

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
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
:ÿÿÿÿÿÿÿÿÿ//X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
¨

ù
E__inference_eth_task1_layer_call_and_return_conditional_losses_885703

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

ú
H__inference_gender_task2_layer_call_and_return_conditional_losses_886933

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å

'__inference_layer6_layer_call_fn_886822

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_885669p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

ù
E__inference_eth_task1_layer_call_and_return_conditional_losses_886853

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«

ü
H__inference_gender_task1_layer_call_and_return_conditional_losses_885686

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ	
ñ
?__inference_age_layer_call_and_return_conditional_losses_886952

inputs1
matmul_readvariableop_resource:	x-
biasadd_readvariableop_resource:x
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

-__inference_gender_task2_layer_call_fn_886922

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_885720o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ô
B__inference_layer4_layer_call_and_return_conditional_losses_885635

inputs1
matmul_readvariableop_resource:	B@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	B@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
½E
Ï

A__inference_Logan_layer_call_and_return_conditional_losses_886369
input_15'
layer1_886304:
layer1_886306: 
layer4_886311:	B@
layer4_886313:@ 
layer5_886316:	@
layer5_886318:	!
layer6_886321:

layer6_886323:	'
gender_task1_886326:
"
gender_task1_886328:	$
eth_task1_886331:

eth_task1_886333:	&
gender_task2_886336:	@!
gender_task2_886338:@$
eth_task2_886341:

eth_task2_886343:	#
age_task_886346:

age_task_886348:	
gender_886351:@
gender_886353:#
ethnicity_886356:	
ethnicity_886358:

age_886361:	x

age_886363:x
identity

identity_1

identity_2¢age/StatefulPartitionedCall¢ age_task/StatefulPartitionedCall¢!eth_task1/StatefulPartitionedCall¢!eth_task2/StatefulPartitionedCall¢!ethnicity/StatefulPartitionedCall¢gender/StatefulPartitionedCall¢$gender_task1/StatefulPartitionedCall¢$gender_task2/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢layer5/StatefulPartitionedCall¢layer6/StatefulPartitionedCallò
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_15layer1_886304layer1_886306*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_885609Ý
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_885588Î
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_885622
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_886311layer4_886313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_885635
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_886316layer5_886318*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_885652
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_886321layer6_886323*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_885669¢
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_886326gender_task1_886328*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_885686
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_886331eth_task1_886333*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_885703§
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_886336gender_task2_886338*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_885720
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_886341eth_task2_886343*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_885737
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_886346age_task_886348*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_885754
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_886351gender_886353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_885771
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_886356ethnicity_886358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_885788ÿ
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_886361
age_886363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_885804s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
input_15
Ä
^
B__inference_layer3_layer_call_and_return_conditional_losses_885622

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ!  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿBY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»

$__inference_age_layer_call_fn_886942

inputs
unknown:	x
	unknown_0:x
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_885804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
&__inference_Logan_layer_call_fn_886489

inputs!
unknown:
	unknown_0:
	unknown_1:	B@
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:


unknown_14:	

unknown_15:


unknown_16:	

unknown_17:@

unknown_18:

unknown_19:	

unknown_20:

unknown_21:	x

unknown_22:x
identity

identity_1

identity_2¢StatefulPartitionedCall©
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿx:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_886121o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
É

)__inference_age_task_layer_call_fn_886882

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_885754p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

ú
H__inference_gender_task2_layer_call_and_return_conditional_losses_885720

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ôk

A__inference_Logan_layer_call_and_return_conditional_losses_886673

inputs?
%layer1_conv2d_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:8
%layer4_matmul_readvariableop_resource:	B@4
&layer4_biasadd_readvariableop_resource:@8
%layer5_matmul_readvariableop_resource:	@5
&layer5_biasadd_readvariableop_resource:	9
%layer6_matmul_readvariableop_resource:
5
&layer6_biasadd_readvariableop_resource:	?
+gender_task1_matmul_readvariableop_resource:
;
,gender_task1_biasadd_readvariableop_resource:	<
(eth_task1_matmul_readvariableop_resource:
8
)eth_task1_biasadd_readvariableop_resource:	>
+gender_task2_matmul_readvariableop_resource:	@:
,gender_task2_biasadd_readvariableop_resource:@<
(eth_task2_matmul_readvariableop_resource:
8
)eth_task2_biasadd_readvariableop_resource:	;
'age_task_matmul_readvariableop_resource:
7
(age_task_biasadd_readvariableop_resource:	7
%gender_matmul_readvariableop_resource:@4
&gender_biasadd_readvariableop_resource:;
(ethnicity_matmul_readvariableop_resource:	7
)ethnicity_biasadd_readvariableop_resource:5
"age_matmul_readvariableop_resource:	x1
#age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2¢age/BiasAdd/ReadVariableOp¢age/MatMul/ReadVariableOp¢age_task/BiasAdd/ReadVariableOp¢age_task/MatMul/ReadVariableOp¢ eth_task1/BiasAdd/ReadVariableOp¢eth_task1/MatMul/ReadVariableOp¢ eth_task2/BiasAdd/ReadVariableOp¢eth_task2/MatMul/ReadVariableOp¢ ethnicity/BiasAdd/ReadVariableOp¢ethnicity/MatMul/ReadVariableOp¢gender/BiasAdd/ReadVariableOp¢gender/MatMul/ReadVariableOp¢#gender_task1/BiasAdd/ReadVariableOp¢"gender_task1/MatMul/ReadVariableOp¢#gender_task2/BiasAdd/ReadVariableOp¢"gender_task2/MatMul/ReadVariableOp¢layer1/BiasAdd/ReadVariableOp¢layer1/Conv2D/ReadVariableOp¢layer4/BiasAdd/ReadVariableOp¢layer4/MatMul/ReadVariableOp¢layer5/BiasAdd/ReadVariableOp¢layer5/MatMul/ReadVariableOp¢layer6/BiasAdd/ReadVariableOp¢layer6/MatMul/ReadVariableOp
layer1/Conv2D/ReadVariableOpReadVariableOp%layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¨
layer1/Conv2DConv2Dinputs$layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
paddingVALID*
strides

layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
layer1/BiasAddBiasAddlayer1/Conv2D:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//f
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//¡
layer2/MaxPoolMaxPoollayer1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
]
layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ!  |
layer3/ReshapeReshapelayer2/MaxPool:output:0layer3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes
:	B@*
dtype0
layer4/MatMulMatMullayer3/Reshape:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer6/MatMul/ReadVariableOpReadVariableOp%layer6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
layer6/MatMulMatMullayer5/Relu:activations:0$layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
layer6/BiasAdd/ReadVariableOpReadVariableOp&layer6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
layer6/BiasAddBiasAddlayer6/MatMul:product:0%layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
layer6/ReluRelulayer6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"gender_task1/MatMul/ReadVariableOpReadVariableOp+gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
gender_task1/MatMulMatMullayer6/Relu:activations:0*gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#gender_task1/BiasAdd/ReadVariableOpReadVariableOp,gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
gender_task1/BiasAddBiasAddgender_task1/MatMul:product:0+gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
gender_task1/ReluRelugender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
eth_task1/MatMul/ReadVariableOpReadVariableOp(eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
eth_task1/MatMulMatMullayer6/Relu:activations:0'eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 eth_task1/BiasAdd/ReadVariableOpReadVariableOp)eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
eth_task1/BiasAddBiasAddeth_task1/MatMul:product:0(eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
eth_task1/ReluRelueth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"gender_task2/MatMul/ReadVariableOpReadVariableOp+gender_task2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
gender_task2/MatMulMatMulgender_task1/Relu:activations:0*gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#gender_task2/BiasAdd/ReadVariableOpReadVariableOp,gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
gender_task2/BiasAddBiasAddgender_task2/MatMul:product:0+gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
gender_task2/ReluRelugender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
eth_task2/MatMul/ReadVariableOpReadVariableOp(eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
eth_task2/MatMulMatMuleth_task1/Relu:activations:0'eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 eth_task2/BiasAdd/ReadVariableOpReadVariableOp)eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
eth_task2/BiasAddBiasAddeth_task2/MatMul:product:0(eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
eth_task2/ReluRelueth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
age_task/MatMul/ReadVariableOpReadVariableOp'age_task_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
age_task/MatMulMatMullayer6/Relu:activations:0&age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
age_task/BiasAdd/ReadVariableOpReadVariableOp(age_task_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
age_task/BiasAddBiasAddage_task/MatMul:product:0'age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
age_task/ReluReluage_task/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gender/MatMul/ReadVariableOpReadVariableOp%gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
gender/MatMulMatMulgender_task2/Relu:activations:0$gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
gender/BiasAdd/ReadVariableOpReadVariableOp&gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
gender/BiasAddBiasAddgender/MatMul:product:0%gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
gender/SoftmaxSoftmaxgender/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ethnicity/MatMul/ReadVariableOpReadVariableOp(ethnicity_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
ethnicity/MatMulMatMuleth_task2/Relu:activations:0'ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 ethnicity/BiasAdd/ReadVariableOpReadVariableOp)ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
ethnicity/BiasAddBiasAddethnicity/MatMul:product:0(ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ethnicity/SigmoidSigmoidethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
age/MatMul/ReadVariableOpReadVariableOp"age_matmul_readvariableop_resource*
_output_shapes
:	x*
dtype0

age/MatMulMatMulage_task/Relu:activations:0!age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxz
age/BiasAdd/ReadVariableOpReadVariableOp#age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0
age/BiasAddBiasAddage/MatMul:product:0"age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxc
IdentityIdentityage/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxf

Identity_1Identityethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi

Identity_2Identitygender/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
NoOpNoOp^age/BiasAdd/ReadVariableOp^age/MatMul/ReadVariableOp ^age_task/BiasAdd/ReadVariableOp^age_task/MatMul/ReadVariableOp!^eth_task1/BiasAdd/ReadVariableOp ^eth_task1/MatMul/ReadVariableOp!^eth_task2/BiasAdd/ReadVariableOp ^eth_task2/MatMul/ReadVariableOp!^ethnicity/BiasAdd/ReadVariableOp ^ethnicity/MatMul/ReadVariableOp^gender/BiasAdd/ReadVariableOp^gender/MatMul/ReadVariableOp$^gender_task1/BiasAdd/ReadVariableOp#^gender_task1/MatMul/ReadVariableOp$^gender_task2/BiasAdd/ReadVariableOp#^gender_task2/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/Conv2D/ReadVariableOp^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^layer5/BiasAdd/ReadVariableOp^layer5/MatMul/ReadVariableOp^layer6/BiasAdd/ReadVariableOp^layer6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 28
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
layer5/MatMul/ReadVariableOplayer5/MatMul/ReadVariableOp2>
layer6/BiasAdd/ReadVariableOplayer6/BiasAdd/ReadVariableOp2<
layer6/MatMul/ReadVariableOplayer6/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs


÷
E__inference_ethnicity_layer_call_and_return_conditional_losses_885788

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
x

!__inference__wrapped_model_885579
input_15E
+logan_layer1_conv2d_readvariableop_resource::
,logan_layer1_biasadd_readvariableop_resource:>
+logan_layer4_matmul_readvariableop_resource:	B@:
,logan_layer4_biasadd_readvariableop_resource:@>
+logan_layer5_matmul_readvariableop_resource:	@;
,logan_layer5_biasadd_readvariableop_resource:	?
+logan_layer6_matmul_readvariableop_resource:
;
,logan_layer6_biasadd_readvariableop_resource:	E
1logan_gender_task1_matmul_readvariableop_resource:
A
2logan_gender_task1_biasadd_readvariableop_resource:	B
.logan_eth_task1_matmul_readvariableop_resource:
>
/logan_eth_task1_biasadd_readvariableop_resource:	D
1logan_gender_task2_matmul_readvariableop_resource:	@@
2logan_gender_task2_biasadd_readvariableop_resource:@B
.logan_eth_task2_matmul_readvariableop_resource:
>
/logan_eth_task2_biasadd_readvariableop_resource:	A
-logan_age_task_matmul_readvariableop_resource:
=
.logan_age_task_biasadd_readvariableop_resource:	=
+logan_gender_matmul_readvariableop_resource:@:
,logan_gender_biasadd_readvariableop_resource:A
.logan_ethnicity_matmul_readvariableop_resource:	=
/logan_ethnicity_biasadd_readvariableop_resource:;
(logan_age_matmul_readvariableop_resource:	x7
)logan_age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2¢ Logan/age/BiasAdd/ReadVariableOp¢Logan/age/MatMul/ReadVariableOp¢%Logan/age_task/BiasAdd/ReadVariableOp¢$Logan/age_task/MatMul/ReadVariableOp¢&Logan/eth_task1/BiasAdd/ReadVariableOp¢%Logan/eth_task1/MatMul/ReadVariableOp¢&Logan/eth_task2/BiasAdd/ReadVariableOp¢%Logan/eth_task2/MatMul/ReadVariableOp¢&Logan/ethnicity/BiasAdd/ReadVariableOp¢%Logan/ethnicity/MatMul/ReadVariableOp¢#Logan/gender/BiasAdd/ReadVariableOp¢"Logan/gender/MatMul/ReadVariableOp¢)Logan/gender_task1/BiasAdd/ReadVariableOp¢(Logan/gender_task1/MatMul/ReadVariableOp¢)Logan/gender_task2/BiasAdd/ReadVariableOp¢(Logan/gender_task2/MatMul/ReadVariableOp¢#Logan/layer1/BiasAdd/ReadVariableOp¢"Logan/layer1/Conv2D/ReadVariableOp¢#Logan/layer4/BiasAdd/ReadVariableOp¢"Logan/layer4/MatMul/ReadVariableOp¢#Logan/layer5/BiasAdd/ReadVariableOp¢"Logan/layer5/MatMul/ReadVariableOp¢#Logan/layer6/BiasAdd/ReadVariableOp¢"Logan/layer6/MatMul/ReadVariableOp
"Logan/layer1/Conv2D/ReadVariableOpReadVariableOp+logan_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0¶
Logan/layer1/Conv2DConv2Dinput_15*Logan/layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*
paddingVALID*
strides

#Logan/layer1/BiasAdd/ReadVariableOpReadVariableOp,logan_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¤
Logan/layer1/BiasAddBiasAddLogan/layer1/Conv2D:output:0+Logan/layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//r
Logan/layer1/ReluReluLogan/layer1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//­
Logan/layer2/MaxPoolMaxPoolLogan/layer1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
c
Logan/layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ!  
Logan/layer3/ReshapeReshapeLogan/layer2/MaxPool:output:0Logan/layer3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
"Logan/layer4/MatMul/ReadVariableOpReadVariableOp+logan_layer4_matmul_readvariableop_resource*
_output_shapes
:	B@*
dtype0
Logan/layer4/MatMulMatMulLogan/layer3/Reshape:output:0*Logan/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#Logan/layer4/BiasAdd/ReadVariableOpReadVariableOp,logan_layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
Logan/layer4/BiasAddBiasAddLogan/layer4/MatMul:product:0+Logan/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
Logan/layer4/ReluReluLogan/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"Logan/layer5/MatMul/ReadVariableOpReadVariableOp+logan_layer5_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
Logan/layer5/MatMulMatMulLogan/layer4/Relu:activations:0*Logan/layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Logan/layer5/BiasAdd/ReadVariableOpReadVariableOp,logan_layer5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
Logan/layer5/BiasAddBiasAddLogan/layer5/MatMul:product:0+Logan/layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
Logan/layer5/ReluReluLogan/layer5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Logan/layer6/MatMul/ReadVariableOpReadVariableOp+logan_layer6_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
Logan/layer6/MatMulMatMulLogan/layer5/Relu:activations:0*Logan/layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Logan/layer6/BiasAdd/ReadVariableOpReadVariableOp,logan_layer6_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
Logan/layer6/BiasAddBiasAddLogan/layer6/MatMul:product:0+Logan/layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
Logan/layer6/ReluReluLogan/layer6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(Logan/gender_task1/MatMul/ReadVariableOpReadVariableOp1logan_gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0©
Logan/gender_task1/MatMulMatMulLogan/layer6/Relu:activations:00Logan/gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)Logan/gender_task1/BiasAdd/ReadVariableOpReadVariableOp2logan_gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
Logan/gender_task1/BiasAddBiasAdd#Logan/gender_task1/MatMul:product:01Logan/gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
Logan/gender_task1/ReluRelu#Logan/gender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Logan/eth_task1/MatMul/ReadVariableOpReadVariableOp.logan_eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0£
Logan/eth_task1/MatMulMatMulLogan/layer6/Relu:activations:0-Logan/eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&Logan/eth_task1/BiasAdd/ReadVariableOpReadVariableOp/logan_eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
Logan/eth_task1/BiasAddBiasAdd Logan/eth_task1/MatMul:product:0.Logan/eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
Logan/eth_task1/ReluRelu Logan/eth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(Logan/gender_task2/MatMul/ReadVariableOpReadVariableOp1logan_gender_task2_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0®
Logan/gender_task2/MatMulMatMul%Logan/gender_task1/Relu:activations:00Logan/gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)Logan/gender_task2/BiasAdd/ReadVariableOpReadVariableOp2logan_gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¯
Logan/gender_task2/BiasAddBiasAdd#Logan/gender_task2/MatMul:product:01Logan/gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
Logan/gender_task2/ReluRelu#Logan/gender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%Logan/eth_task2/MatMul/ReadVariableOpReadVariableOp.logan_eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¦
Logan/eth_task2/MatMulMatMul"Logan/eth_task1/Relu:activations:0-Logan/eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&Logan/eth_task2/BiasAdd/ReadVariableOpReadVariableOp/logan_eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
Logan/eth_task2/BiasAddBiasAdd Logan/eth_task2/MatMul:product:0.Logan/eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
Logan/eth_task2/ReluRelu Logan/eth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$Logan/age_task/MatMul/ReadVariableOpReadVariableOp-logan_age_task_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0¡
Logan/age_task/MatMulMatMulLogan/layer6/Relu:activations:0,Logan/age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Logan/age_task/BiasAdd/ReadVariableOpReadVariableOp.logan_age_task_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
Logan/age_task/BiasAddBiasAddLogan/age_task/MatMul:product:0-Logan/age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
Logan/age_task/ReluReluLogan/age_task/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Logan/gender/MatMul/ReadVariableOpReadVariableOp+logan_gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¢
Logan/gender/MatMulMatMul%Logan/gender_task2/Relu:activations:0*Logan/gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#Logan/gender/BiasAdd/ReadVariableOpReadVariableOp,logan_gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
Logan/gender/BiasAddBiasAddLogan/gender/MatMul:product:0+Logan/gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
Logan/gender/SoftmaxSoftmaxLogan/gender/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%Logan/ethnicity/MatMul/ReadVariableOpReadVariableOp.logan_ethnicity_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¥
Logan/ethnicity/MatMulMatMul"Logan/eth_task2/Relu:activations:0-Logan/ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&Logan/ethnicity/BiasAdd/ReadVariableOpReadVariableOp/logan_ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
Logan/ethnicity/BiasAddBiasAdd Logan/ethnicity/MatMul:product:0.Logan/ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
Logan/ethnicity/SigmoidSigmoid Logan/ethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Logan/age/MatMul/ReadVariableOpReadVariableOp(logan_age_matmul_readvariableop_resource*
_output_shapes
:	x*
dtype0
Logan/age/MatMulMatMul!Logan/age_task/Relu:activations:0'Logan/age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 Logan/age/BiasAdd/ReadVariableOpReadVariableOp)logan_age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0
Logan/age/BiasAddBiasAddLogan/age/MatMul:product:0(Logan/age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxi
IdentityIdentityLogan/age/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxl

Identity_1IdentityLogan/ethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo

Identity_2IdentityLogan/gender/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
NoOpNoOp!^Logan/age/BiasAdd/ReadVariableOp ^Logan/age/MatMul/ReadVariableOp&^Logan/age_task/BiasAdd/ReadVariableOp%^Logan/age_task/MatMul/ReadVariableOp'^Logan/eth_task1/BiasAdd/ReadVariableOp&^Logan/eth_task1/MatMul/ReadVariableOp'^Logan/eth_task2/BiasAdd/ReadVariableOp&^Logan/eth_task2/MatMul/ReadVariableOp'^Logan/ethnicity/BiasAdd/ReadVariableOp&^Logan/ethnicity/MatMul/ReadVariableOp$^Logan/gender/BiasAdd/ReadVariableOp#^Logan/gender/MatMul/ReadVariableOp*^Logan/gender_task1/BiasAdd/ReadVariableOp)^Logan/gender_task1/MatMul/ReadVariableOp*^Logan/gender_task2/BiasAdd/ReadVariableOp)^Logan/gender_task2/MatMul/ReadVariableOp$^Logan/layer1/BiasAdd/ReadVariableOp#^Logan/layer1/Conv2D/ReadVariableOp$^Logan/layer4/BiasAdd/ReadVariableOp#^Logan/layer4/MatMul/ReadVariableOp$^Logan/layer5/BiasAdd/ReadVariableOp#^Logan/layer5/MatMul/ReadVariableOp$^Logan/layer6/BiasAdd/ReadVariableOp#^Logan/layer6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 2D
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
"Logan/layer5/MatMul/ReadVariableOp"Logan/layer5/MatMul/ReadVariableOp2J
#Logan/layer6/BiasAdd/ReadVariableOp#Logan/layer6/BiasAdd/ReadVariableOp2H
"Logan/layer6/MatMul/ReadVariableOp"Logan/layer6/MatMul/ReadVariableOp:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
input_15
«
C
'__inference_layer3_layer_call_fn_886767

inputs
identity®
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_885622a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
&__inference_Logan_layer_call_fn_886432

inputs!
unknown:
	unknown_0:
	unknown_1:	B@
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:


unknown_14:	

unknown_15:


unknown_16:	

unknown_17:@

unknown_18:

unknown_19:	

unknown_20:

unknown_21:	x

unknown_22:x
identity

identity_1

identity_2¢StatefulPartitionedCall©
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿx:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_885813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
·E
Í

A__inference_Logan_layer_call_and_return_conditional_losses_886121

inputs'
layer1_886056:
layer1_886058: 
layer4_886063:	B@
layer4_886065:@ 
layer5_886068:	@
layer5_886070:	!
layer6_886073:

layer6_886075:	'
gender_task1_886078:
"
gender_task1_886080:	$
eth_task1_886083:

eth_task1_886085:	&
gender_task2_886088:	@!
gender_task2_886090:@$
eth_task2_886093:

eth_task2_886095:	#
age_task_886098:

age_task_886100:	
gender_886103:@
gender_886105:#
ethnicity_886108:	
ethnicity_886110:

age_886113:	x

age_886115:x
identity

identity_1

identity_2¢age/StatefulPartitionedCall¢ age_task/StatefulPartitionedCall¢!eth_task1/StatefulPartitionedCall¢!eth_task2/StatefulPartitionedCall¢!ethnicity/StatefulPartitionedCall¢gender/StatefulPartitionedCall¢$gender_task1/StatefulPartitionedCall¢$gender_task2/StatefulPartitionedCall¢layer1/StatefulPartitionedCall¢layer4/StatefulPartitionedCall¢layer5/StatefulPartitionedCall¢layer6/StatefulPartitionedCallð
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_886056layer1_886058*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_885609Ý
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_885588Î
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_885622
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_886063layer4_886065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_885635
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_886068layer5_886070*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_885652
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_886073layer6_886075*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_885669¢
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_886078gender_task1_886080*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_885686
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_886083eth_task1_886085*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_885703§
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_886088gender_task2_886090*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_885720
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_886093eth_task2_886095*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_885737
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_886098age_task_886100*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_885754
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_886103gender_886105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_885771
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_886108ethnicity_886110*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_885788ÿ
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_886113
age_886115*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_885804s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
÷
¯
$__inference_signature_wrapper_886732
input_15!
unknown:
	unknown_0:
	unknown_1:	B@
	unknown_2:@
	unknown_3:	@
	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	@

unknown_12:@

unknown_13:


unknown_14:	

unknown_15:


unknown_16:	

unknown_17:@

unknown_18:

unknown_19:	

unknown_20:

unknown_21:	x

unknown_22:x
identity

identity_1

identity_2¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_15unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿx:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_885579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿ00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
"
_user_specified_name
input_15
«

ü
H__inference_gender_task1_layer_call_and_return_conditional_losses_886873

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

^
B__inference_layer2_layer_call_and_return_conditional_losses_885588

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

*__inference_eth_task1_layer_call_fn_886842

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_885703p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

'__inference_layer1_layer_call_fn_886741

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_885609w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ//`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ00
 
_user_specified_nameinputs
¼
(
"__inference__traced_restore_887429
file_prefix8
assignvariableop_layer1_kernel:,
assignvariableop_1_layer1_bias:3
 assignvariableop_2_layer4_kernel:	B@,
assignvariableop_3_layer4_bias:@3
 assignvariableop_4_layer5_kernel:	@-
assignvariableop_5_layer5_bias:	4
 assignvariableop_6_layer6_kernel:
-
assignvariableop_7_layer6_bias:	7
#assignvariableop_8_eth_task1_kernel:
0
!assignvariableop_9_eth_task1_bias:	;
'assignvariableop_10_gender_task1_kernel:
4
%assignvariableop_11_gender_task1_bias:	7
#assignvariableop_12_age_task_kernel:
0
!assignvariableop_13_age_task_bias:	8
$assignvariableop_14_eth_task2_kernel:
1
"assignvariableop_15_eth_task2_bias:	:
'assignvariableop_16_gender_task2_kernel:	@3
%assignvariableop_17_gender_task2_bias:@1
assignvariableop_18_age_kernel:	x*
assignvariableop_19_age_bias:x7
$assignvariableop_20_ethnicity_kernel:	0
"assignvariableop_21_ethnicity_bias:3
!assignvariableop_22_gender_kernel:@-
assignvariableop_23_gender_bias:*
 assignvariableop_24_rmsprop_iter:	 +
!assignvariableop_25_rmsprop_decay: 3
)assignvariableop_26_rmsprop_learning_rate: .
$assignvariableop_27_rmsprop_momentum: )
assignvariableop_28_rmsprop_rho: #
assignvariableop_29_total: #
assignvariableop_30_count: %
assignvariableop_31_total_1: %
assignvariableop_32_count_1: %
assignvariableop_33_total_2: %
assignvariableop_34_count_2: %
assignvariableop_35_total_3: %
assignvariableop_36_count_3: %
assignvariableop_37_total_4: %
assignvariableop_38_count_4: %
assignvariableop_39_total_5: %
assignvariableop_40_count_5: %
assignvariableop_41_total_6: %
assignvariableop_42_count_6: G
-assignvariableop_43_rmsprop_layer1_kernel_rms:9
+assignvariableop_44_rmsprop_layer1_bias_rms:@
-assignvariableop_45_rmsprop_layer4_kernel_rms:	B@9
+assignvariableop_46_rmsprop_layer4_bias_rms:@@
-assignvariableop_47_rmsprop_layer5_kernel_rms:	@:
+assignvariableop_48_rmsprop_layer5_bias_rms:	A
-assignvariableop_49_rmsprop_layer6_kernel_rms:
:
+assignvariableop_50_rmsprop_layer6_bias_rms:	D
0assignvariableop_51_rmsprop_eth_task1_kernel_rms:
=
.assignvariableop_52_rmsprop_eth_task1_bias_rms:	G
3assignvariableop_53_rmsprop_gender_task1_kernel_rms:
@
1assignvariableop_54_rmsprop_gender_task1_bias_rms:	C
/assignvariableop_55_rmsprop_age_task_kernel_rms:
<
-assignvariableop_56_rmsprop_age_task_bias_rms:	D
0assignvariableop_57_rmsprop_eth_task2_kernel_rms:
=
.assignvariableop_58_rmsprop_eth_task2_bias_rms:	F
3assignvariableop_59_rmsprop_gender_task2_kernel_rms:	@?
1assignvariableop_60_rmsprop_gender_task2_bias_rms:@=
*assignvariableop_61_rmsprop_age_kernel_rms:	x6
(assignvariableop_62_rmsprop_age_bias_rms:xC
0assignvariableop_63_rmsprop_ethnicity_kernel_rms:	<
.assignvariableop_64_rmsprop_ethnicity_bias_rms:?
-assignvariableop_65_rmsprop_gender_kernel_rms:@9
+assignvariableop_66_rmsprop_gender_bias_rms:
identity_68¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*³"
value©"B¦"DB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHû
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B õ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*R
dtypesH
F2D	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp assignvariableop_4_layer5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp assignvariableop_6_layer6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_layer6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_eth_task1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_eth_task1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp'assignvariableop_10_gender_task1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp%assignvariableop_11_gender_task1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_age_task_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_age_task_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp$assignvariableop_14_eth_task2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp"assignvariableop_15_eth_task2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp'assignvariableop_16_gender_task2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp%assignvariableop_17_gender_task2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_age_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_age_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp$assignvariableop_20_ethnicity_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp"assignvariableop_21_ethnicity_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp!assignvariableop_22_gender_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_gender_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_24AssignVariableOp assignvariableop_24_rmsprop_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp!assignvariableop_25_rmsprop_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_rmsprop_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp$assignvariableop_27_rmsprop_momentumIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_rmsprop_rhoIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_2Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_3Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_3Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_4Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_4Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_5Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_5Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_6Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_6Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp-assignvariableop_43_rmsprop_layer1_kernel_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp+assignvariableop_44_rmsprop_layer1_bias_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp-assignvariableop_45_rmsprop_layer4_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp+assignvariableop_46_rmsprop_layer4_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp-assignvariableop_47_rmsprop_layer5_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp+assignvariableop_48_rmsprop_layer5_bias_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp-assignvariableop_49_rmsprop_layer6_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp+assignvariableop_50_rmsprop_layer6_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_51AssignVariableOp0assignvariableop_51_rmsprop_eth_task1_kernel_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp.assignvariableop_52_rmsprop_eth_task1_bias_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_53AssignVariableOp3assignvariableop_53_rmsprop_gender_task1_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_54AssignVariableOp1assignvariableop_54_rmsprop_gender_task1_bias_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_55AssignVariableOp/assignvariableop_55_rmsprop_age_task_kernel_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp-assignvariableop_56_rmsprop_age_task_bias_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_57AssignVariableOp0assignvariableop_57_rmsprop_eth_task2_kernel_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp.assignvariableop_58_rmsprop_eth_task2_bias_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_59AssignVariableOp3assignvariableop_59_rmsprop_gender_task2_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_60AssignVariableOp1assignvariableop_60_rmsprop_gender_task2_bias_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp*assignvariableop_61_rmsprop_age_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp(assignvariableop_62_rmsprop_age_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_63AssignVariableOp0assignvariableop_63_rmsprop_ethnicity_kernel_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp.assignvariableop_64_rmsprop_ethnicity_bias_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp-assignvariableop_65_rmsprop_gender_kernel_rmsIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp+assignvariableop_66_rmsprop_gender_bias_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_67Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_68IdentityIdentity_67:output:0^NoOp_1*
T0*
_output_shapes
: þ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_68Identity_68:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
§

ø
D__inference_age_task_layer_call_and_return_conditional_losses_886893

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

'__inference_layer5_layer_call_fn_886802

inputs
unknown:	@
	unknown_0:	
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_885652p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
E
input_159
serving_default_input_15:0ÿÿÿÿÿÿÿÿÿ007
age0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿx=
	ethnicity0
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿ:
gender0
StatefulPartitionedCall:2ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:÷
ï
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
layer_with_weights-11
layer-14
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
»

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
»

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
»

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
»

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
»

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
»

nkernel
obias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
»

vkernel
wbias
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
Á

~kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
÷
	iter

decay
learning_rate
momentum
rho
rmsþ
rmsÿ
.rms
/rms
6rms
7rms
>rms
?rms
Frms
Grms
Nrms
Orms
Vrms
Wrms
^rms
_rms
frms
grms
nrms
orms
vrms
wrms
~rms
rms"
	optimizer
)
0"
trackable_tuple_wrapper
Ö
0
1
.2
/3
64
75
>6
?7
F8
G9
N10
O11
V12
W13
^14
_15
f16
g17
n18
o19
v20
w21
~22
23"
trackable_list_wrapper
Ö
0
1
.2
/3
64
75
>6
?7
F8
G9
N10
O11
V12
W13
^14
_15
f16
g17
n18
o19
v20
w21
~22
23"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
æ2ã
&__inference_Logan_layer_call_fn_885868
&__inference_Logan_layer_call_fn_886432
&__inference_Logan_layer_call_fn_886489
&__inference_Logan_layer_call_fn_886233À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
A__inference_Logan_layer_call_and_return_conditional_losses_886581
A__inference_Logan_layer_call_and_return_conditional_losses_886673
A__inference_Logan_layer_call_and_return_conditional_losses_886301
A__inference_Logan_layer_call_and_return_conditional_losses_886369À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÍBÊ
!__inference__wrapped_model_885579input_15"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
serving_default"
signature_map
':%2layer1/kernel
:2layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer1_layer_call_fn_886741¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_layer1_layer_call_and_return_conditional_losses_886752¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer2_layer_call_fn_886757¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_layer2_layer_call_and_return_conditional_losses_886762¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer3_layer_call_fn_886767¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_layer3_layer_call_and_return_conditional_losses_886773¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :	B@2layer4/kernel
:@2layer4/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¡non_trainable_variables
¢layers
£metrics
 ¤layer_regularization_losses
¥layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer4_layer_call_fn_886782¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_layer4_layer_call_and_return_conditional_losses_886793¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :	@2layer5/kernel
:2layer5/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¦non_trainable_variables
§layers
¨metrics
 ©layer_regularization_losses
ªlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer5_layer_call_fn_886802¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_layer5_layer_call_and_return_conditional_losses_886813¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
!:
2layer6/kernel
:2layer6/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
«non_trainable_variables
¬layers
­metrics
 ®layer_regularization_losses
¯layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_layer6_layer_call_fn_886822¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_layer6_layer_call_and_return_conditional_losses_886833¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
$:"
2eth_task1/kernel
:2eth_task1/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
°non_trainable_variables
±layers
²metrics
 ³layer_regularization_losses
´layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_eth_task1_layer_call_fn_886842¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_eth_task1_layer_call_and_return_conditional_losses_886853¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
':%
2gender_task1/kernel
 :2gender_task1/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
µnon_trainable_variables
¶layers
·metrics
 ¸layer_regularization_losses
¹layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_gender_task1_layer_call_fn_886862¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_gender_task1_layer_call_and_return_conditional_losses_886873¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!
2age_task/kernel
:2age_task/bias
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ºnon_trainable_variables
»layers
¼metrics
 ½layer_regularization_losses
¾layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_age_task_layer_call_fn_886882¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_age_task_layer_call_and_return_conditional_losses_886893¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
$:"
2eth_task2/kernel
:2eth_task2/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_eth_task2_layer_call_fn_886902¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_eth_task2_layer_call_and_return_conditional_losses_886913¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
&:$	@2gender_task2/kernel
:@2gender_task2/bias
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Änon_trainable_variables
Ålayers
Æmetrics
 Çlayer_regularization_losses
Èlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_gender_task2_layer_call_fn_886922¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_gender_task2_layer_call_and_return_conditional_losses_886933¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	x2
age/kernel
:x2age/bias
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
Î2Ë
$__inference_age_layer_call_fn_886942¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
é2æ
?__inference_age_layer_call_and_return_conditional_losses_886952¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!	2ethnicity/kernel
:2ethnicity/bias
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Înon_trainable_variables
Ïlayers
Ðmetrics
 Ñlayer_regularization_losses
Òlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_ethnicity_layer_call_fn_886961¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_ethnicity_layer_call_and_return_conditional_losses_886972¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:@2gender/kernel
:2gender/bias
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ónon_trainable_variables
Ôlayers
Õmetrics
 Ölayer_regularization_losses
×layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_gender_layer_call_fn_886981¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_gender_layer_call_and_return_conditional_losses_886992¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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

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
13
14"
trackable_list_wrapper
X
Ø0
Ù1
Ú2
Û3
Ü4
Ý5
Þ6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÌBÉ
$__inference_signature_wrapper_886732input_15"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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

ßtotal

àcount
á	variables
â	keras_api"
_tf_keras_metric
R

ãtotal

äcount
å	variables
æ	keras_api"
_tf_keras_metric
R

çtotal

ècount
é	variables
ê	keras_api"
_tf_keras_metric
R

ëtotal

ìcount
í	variables
î	keras_api"
_tf_keras_metric
c

ïtotal

ðcount
ñ
_fn_kwargs
ò	variables
ó	keras_api"
_tf_keras_metric
c

ôtotal

õcount
ö
_fn_kwargs
÷	variables
ø	keras_api"
_tf_keras_metric
c

ùtotal

úcount
û
_fn_kwargs
ü	variables
ý	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
ß0
à1"
trackable_list_wrapper
.
á	variables"
_generic_user_object
:  (2total
:  (2count
0
ã0
ä1"
trackable_list_wrapper
.
å	variables"
_generic_user_object
:  (2total
:  (2count
0
ç0
è1"
trackable_list_wrapper
.
é	variables"
_generic_user_object
:  (2total
:  (2count
0
ë0
ì1"
trackable_list_wrapper
.
í	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ï0
ð1"
trackable_list_wrapper
.
ò	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ô0
õ1"
trackable_list_wrapper
.
÷	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ù0
ú1"
trackable_list_wrapper
.
ü	variables"
_generic_user_object
1:/2RMSprop/layer1/kernel/rms
#:!2RMSprop/layer1/bias/rms
*:(	B@2RMSprop/layer4/kernel/rms
#:!@2RMSprop/layer4/bias/rms
*:(	@2RMSprop/layer5/kernel/rms
$:"2RMSprop/layer5/bias/rms
+:)
2RMSprop/layer6/kernel/rms
$:"2RMSprop/layer6/bias/rms
.:,
2RMSprop/eth_task1/kernel/rms
':%2RMSprop/eth_task1/bias/rms
1:/
2RMSprop/gender_task1/kernel/rms
*:(2RMSprop/gender_task1/bias/rms
-:+
2RMSprop/age_task/kernel/rms
&:$2RMSprop/age_task/bias/rms
.:,
2RMSprop/eth_task2/kernel/rms
':%2RMSprop/eth_task2/bias/rms
0:.	@2RMSprop/gender_task2/kernel/rms
):'@2RMSprop/gender_task2/bias/rms
':%	x2RMSprop/age/kernel/rms
 :x2RMSprop/age/bias/rms
-:+	2RMSprop/ethnicity/kernel/rms
&:$2RMSprop/ethnicity/bias/rms
):'@2RMSprop/gender/kernel/rms
#:!2RMSprop/gender/bias/rms
A__inference_Logan_layer_call_and_return_conditional_losses_886301É./67>?NOFGfg^_VW~vwnoA¢>
7¢4
*'
input_15ÿÿÿÿÿÿÿÿÿ00
p 

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿx

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 
A__inference_Logan_layer_call_and_return_conditional_losses_886369É./67>?NOFGfg^_VW~vwnoA¢>
7¢4
*'
input_15ÿÿÿÿÿÿÿÿÿ00
p

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿx

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 
A__inference_Logan_layer_call_and_return_conditional_losses_886581Ç./67>?NOFGfg^_VW~vwno?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ00
p 

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿx

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 
A__inference_Logan_layer_call_and_return_conditional_losses_886673Ç./67>?NOFGfg^_VW~vwno?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ00
p

 
ª "j¢g
`]

0/0ÿÿÿÿÿÿÿÿÿx

0/1ÿÿÿÿÿÿÿÿÿ

0/2ÿÿÿÿÿÿÿÿÿ
 ä
&__inference_Logan_layer_call_fn_885868¹./67>?NOFGfg^_VW~vwnoA¢>
7¢4
*'
input_15ÿÿÿÿÿÿÿÿÿ00
p 

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿx

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿä
&__inference_Logan_layer_call_fn_886233¹./67>?NOFGfg^_VW~vwnoA¢>
7¢4
*'
input_15ÿÿÿÿÿÿÿÿÿ00
p

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿx

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿâ
&__inference_Logan_layer_call_fn_886432·./67>?NOFGfg^_VW~vwno?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ00
p 

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿx

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿâ
&__inference_Logan_layer_call_fn_886489·./67>?NOFGfg^_VW~vwno?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿ00
p

 
ª "ZW

0ÿÿÿÿÿÿÿÿÿx

1ÿÿÿÿÿÿÿÿÿ

2ÿÿÿÿÿÿÿÿÿ
!__inference__wrapped_model_885579à./67>?NOFGfg^_VW~vwno9¢6
/¢,
*'
input_15ÿÿÿÿÿÿÿÿÿ00
ª "ª
$
age
ageÿÿÿÿÿÿÿÿÿx
0
	ethnicity# 
	ethnicityÿÿÿÿÿÿÿÿÿ
*
gender 
genderÿÿÿÿÿÿÿÿÿ 
?__inference_age_layer_call_and_return_conditional_losses_886952]no0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿx
 x
$__inference_age_layer_call_fn_886942Pno0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿx¦
D__inference_age_task_layer_call_and_return_conditional_losses_886893^VW0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_age_task_layer_call_fn_886882QVW0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
E__inference_eth_task1_layer_call_and_return_conditional_losses_886853^FG0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_eth_task1_layer_call_fn_886842QFG0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
E__inference_eth_task2_layer_call_and_return_conditional_losses_886913^^_0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_eth_task2_layer_call_fn_886902Q^_0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¦
E__inference_ethnicity_layer_call_and_return_conditional_losses_886972]vw0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_ethnicity_layer_call_fn_886961Pvw0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_gender_layer_call_and_return_conditional_losses_886992\~/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
'__inference_gender_layer_call_fn_886981O~/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿª
H__inference_gender_task1_layer_call_and_return_conditional_losses_886873^NO0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_gender_task1_layer_call_fn_886862QNO0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ©
H__inference_gender_task2_layer_call_and_return_conditional_losses_886933]fg0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
-__inference_gender_task2_layer_call_fn_886922Pfg0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@²
B__inference_layer1_layer_call_and_return_conditional_losses_886752l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ00
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ//
 
'__inference_layer1_layer_call_fn_886741_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ00
ª " ÿÿÿÿÿÿÿÿÿ//å
B__inference_layer2_layer_call_and_return_conditional_losses_886762R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ½
'__inference_layer2_layer_call_fn_886757R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ§
B__inference_layer3_layer_call_and_return_conditional_losses_886773a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿB
 
'__inference_layer3_layer_call_fn_886767T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿB£
B__inference_layer4_layer_call_and_return_conditional_losses_886793]./0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿB
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 {
'__inference_layer4_layer_call_fn_886782P./0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿB
ª "ÿÿÿÿÿÿÿÿÿ@£
B__inference_layer5_layer_call_and_return_conditional_losses_886813]67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
'__inference_layer5_layer_call_fn_886802P67/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_layer6_layer_call_and_return_conditional_losses_886833^>?0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_layer6_layer_call_fn_886822Q>?0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_signature_wrapper_886732ì./67>?NOFGfg^_VW~vwnoE¢B
¢ 
;ª8
6
input_15*'
input_15ÿÿÿÿÿÿÿÿÿ00"ª
$
age
ageÿÿÿÿÿÿÿÿÿx
0
	ethnicity# 
	ethnicityÿÿÿÿÿÿÿÿÿ
*
gender 
genderÿÿÿÿÿÿÿÿÿ