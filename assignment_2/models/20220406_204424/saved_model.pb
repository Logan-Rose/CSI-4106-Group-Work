еу
Г‘
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
В
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
delete_old_dirsbool(И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ре
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
shape:	РB@*
shared_namelayer4/kernel
p
!layer4/kernel/Read/ReadVariableOpReadVariableOplayer4/kernel*
_output_shapes
:	РB@*
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
shape:	@А*
shared_namelayer5/kernel
p
!layer5/kernel/Read/ReadVariableOpReadVariableOplayer5/kernel*
_output_shapes
:	@А*
dtype0
o
layer5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namelayer5/bias
h
layer5/bias/Read/ReadVariableOpReadVariableOplayer5/bias*
_output_shapes	
:А*
dtype0
x
layer6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namelayer6/kernel
q
!layer6/kernel/Read/ReadVariableOpReadVariableOplayer6/kernel* 
_output_shapes
:
АА*
dtype0
o
layer6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namelayer6/bias
h
layer6/bias/Read/ReadVariableOpReadVariableOplayer6/bias*
_output_shapes	
:А*
dtype0
~
eth_task1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_nameeth_task1/kernel
w
$eth_task1/kernel/Read/ReadVariableOpReadVariableOpeth_task1/kernel* 
_output_shapes
:
АА*
dtype0
u
eth_task1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameeth_task1/bias
n
"eth_task1/bias/Read/ReadVariableOpReadVariableOpeth_task1/bias*
_output_shapes	
:А*
dtype0
Д
gender_task1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*$
shared_namegender_task1/kernel
}
'gender_task1/kernel/Read/ReadVariableOpReadVariableOpgender_task1/kernel* 
_output_shapes
:
АА*
dtype0
{
gender_task1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_namegender_task1/bias
t
%gender_task1/bias/Read/ReadVariableOpReadVariableOpgender_task1/bias*
_output_shapes	
:А*
dtype0
|
age_task/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_nameage_task/kernel
u
#age_task/kernel/Read/ReadVariableOpReadVariableOpage_task/kernel* 
_output_shapes
:
АА*
dtype0
s
age_task/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameage_task/bias
l
!age_task/bias/Read/ReadVariableOpReadVariableOpage_task/bias*
_output_shapes	
:А*
dtype0
~
eth_task2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*!
shared_nameeth_task2/kernel
w
$eth_task2/kernel/Read/ReadVariableOpReadVariableOpeth_task2/kernel* 
_output_shapes
:
АА*
dtype0
u
eth_task2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameeth_task2/bias
n
"eth_task2/bias/Read/ReadVariableOpReadVariableOpeth_task2/bias*
_output_shapes	
:А*
dtype0
Г
gender_task2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*$
shared_namegender_task2/kernel
|
'gender_task2/kernel/Read/ReadVariableOpReadVariableOpgender_task2/kernel*
_output_shapes
:	А@*
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
shape:	Аx*
shared_name
age/kernel
j
age/kernel/Read/ReadVariableOpReadVariableOp
age/kernel*
_output_shapes
:	Аx*
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
shape:	А*!
shared_nameethnicity/kernel
v
$ethnicity/kernel/Read/ReadVariableOpReadVariableOpethnicity/kernel*
_output_shapes
:	А*
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
Ц
RMSprop/layer1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/layer1/kernel/rms
П
-RMSprop/layer1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer1/kernel/rms*&
_output_shapes
:*
dtype0
Ж
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
П
RMSprop/layer4/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	РB@**
shared_nameRMSprop/layer4/kernel/rms
И
-RMSprop/layer4/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer4/kernel/rms*
_output_shapes
:	РB@*
dtype0
Ж
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
П
RMSprop/layer5/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@А**
shared_nameRMSprop/layer5/kernel/rms
И
-RMSprop/layer5/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer5/kernel/rms*
_output_shapes
:	@А*
dtype0
З
RMSprop/layer5/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameRMSprop/layer5/bias/rms
А
+RMSprop/layer5/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer5/bias/rms*
_output_shapes	
:А*
dtype0
Р
RMSprop/layer6/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА**
shared_nameRMSprop/layer6/kernel/rms
Й
-RMSprop/layer6/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer6/kernel/rms* 
_output_shapes
:
АА*
dtype0
З
RMSprop/layer6/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameRMSprop/layer6/bias/rms
А
+RMSprop/layer6/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/layer6/bias/rms*
_output_shapes	
:А*
dtype0
Ц
RMSprop/eth_task1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameRMSprop/eth_task1/kernel/rms
П
0RMSprop/eth_task1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task1/kernel/rms* 
_output_shapes
:
АА*
dtype0
Н
RMSprop/eth_task1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/eth_task1/bias/rms
Ж
.RMSprop/eth_task1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task1/bias/rms*
_output_shapes	
:А*
dtype0
Ь
RMSprop/gender_task1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!RMSprop/gender_task1/kernel/rms
Х
3RMSprop/gender_task1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task1/kernel/rms* 
_output_shapes
:
АА*
dtype0
У
RMSprop/gender_task1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_nameRMSprop/gender_task1/bias/rms
М
1RMSprop/gender_task1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task1/bias/rms*
_output_shapes	
:А*
dtype0
Ф
RMSprop/age_task/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*,
shared_nameRMSprop/age_task/kernel/rms
Н
/RMSprop/age_task/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age_task/kernel/rms* 
_output_shapes
:
АА*
dtype0
Л
RMSprop/age_task/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А**
shared_nameRMSprop/age_task/bias/rms
Д
-RMSprop/age_task/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/age_task/bias/rms*
_output_shapes	
:А*
dtype0
Ц
RMSprop/eth_task2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*-
shared_nameRMSprop/eth_task2/kernel/rms
П
0RMSprop/eth_task2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task2/kernel/rms* 
_output_shapes
:
АА*
dtype0
Н
RMSprop/eth_task2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameRMSprop/eth_task2/bias/rms
Ж
.RMSprop/eth_task2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/eth_task2/bias/rms*
_output_shapes	
:А*
dtype0
Ы
RMSprop/gender_task2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*0
shared_name!RMSprop/gender_task2/kernel/rms
Ф
3RMSprop/gender_task2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task2/kernel/rms*
_output_shapes
:	А@*
dtype0
Т
RMSprop/gender_task2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameRMSprop/gender_task2/bias/rms
Л
1RMSprop/gender_task2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender_task2/bias/rms*
_output_shapes
:@*
dtype0
Й
RMSprop/age/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аx*'
shared_nameRMSprop/age/kernel/rms
В
*RMSprop/age/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age/kernel/rms*
_output_shapes
:	Аx*
dtype0
А
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
Х
RMSprop/ethnicity/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*-
shared_nameRMSprop/ethnicity/kernel/rms
О
0RMSprop/ethnicity/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/ethnicity/kernel/rms*
_output_shapes
:	А*
dtype0
М
RMSprop/ethnicity/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/ethnicity/bias/rms
Е
.RMSprop/ethnicity/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/ethnicity/bias/rms*
_output_shapes
:*
dtype0
О
RMSprop/gender/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@**
shared_nameRMSprop/gender/kernel/rms
З
-RMSprop/gender/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender/kernel/rms*
_output_shapes

:@*
dtype0
Ж
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
ЗИ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЅЗ
valueґЗB≤З B™З
Ў
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
¶

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses*
О
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
О
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
¶

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses*
¶

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
¶

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses*
¶

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
¶

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
¶

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses*
¶

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
¶

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses*
¶

nkernel
obias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses*
¶

vkernel
wbias
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses*
ђ

~kernel
bias
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses*
и
	Жiter

Зdecay
Иlearning_rate
Йmomentum
Кrho
rmsю
rms€
.rmsА
/rmsБ
6rmsВ
7rmsГ
>rmsД
?rmsЕ
FrmsЖ
GrmsЗ
NrmsИ
OrmsЙ
VrmsК
WrmsЛ
^rmsМ
_rmsН
frmsО
grmsП
nrmsР
ormsС
vrmsТ
wrmsУ
~rmsФ
rmsХ*


Л0* 
Ї
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
Ї
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
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
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
Сserving_default* 
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
Ш
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
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
Ц
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
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
Ц
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
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
Ш
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
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
Ш
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
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
Ш
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
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
Ш
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
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
Ш
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
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
Ш
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
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
Ш
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
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
Ш
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
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
Ш
…non_trainable_variables
 layers
Ћmetrics
 ћlayer_regularization_losses
Ќlayer_metrics
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
Ш
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
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
Ю
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*
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
Ў0
ў1
Џ2
џ3
№4
Ё5
ё6*
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

яtotal

аcount
б	variables
в	keras_api*
<

гtotal

дcount
е	variables
ж	keras_api*
<

зtotal

иcount
й	variables
к	keras_api*
<

лtotal

мcount
н	variables
о	keras_api*
M

пtotal

рcount
с
_fn_kwargs
т	variables
у	keras_api*
M

фtotal

хcount
ц
_fn_kwargs
ч	variables
ш	keras_api*
M

щtotal

ъcount
ы
_fn_kwargs
ь	variables
э	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

я0
а1*

б	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

г0
д1*

е	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

з0
и1*

й	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

л0
м1*

н	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

п0
р1*

т	variables*
UO
VARIABLE_VALUEtotal_54keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_54keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ф0
х1*

ч	variables*
UO
VARIABLE_VALUEtotal_64keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_64keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

щ0
ъ1*

ь	variables*
ИБ
VARIABLE_VALUERMSprop/layer1/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUERMSprop/layer1/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUERMSprop/layer4/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUERMSprop/layer4/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUERMSprop/layer5/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUERMSprop/layer5/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUERMSprop/layer6/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUERMSprop/layer6/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUERMSprop/eth_task1/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUERMSprop/eth_task1/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUERMSprop/gender_task1/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUERMSprop/gender_task1/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUERMSprop/age_task/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUERMSprop/age_task/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUERMSprop/eth_task2/kernel/rmsTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUERMSprop/eth_task2/bias/rmsRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ОЗ
VARIABLE_VALUERMSprop/gender_task2/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUERMSprop/gender_task2/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUERMSprop/age/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUERMSprop/age/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
МЕ
VARIABLE_VALUERMSprop/ethnicity/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUERMSprop/ethnicity/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUERMSprop/gender/kernel/rmsUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUERMSprop/gender/bias/rmsSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
Л
serving_default_input_14Placeholder*/
_output_shapes
:€€€€€€€€€00*
dtype0*$
shape:€€€€€€€€€00
Г
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14layer1/kernellayer1/biaslayer4/kernellayer4/biaslayer5/kernellayer5/biaslayer6/kernellayer6/biasgender_task1/kernelgender_task1/biaseth_task1/kerneleth_task1/biasgender_task2/kernelgender_task2/biaseth_task2/kerneleth_task2/biasage_task/kernelage_task/biasgender/kernelgender/biasethnicity/kernelethnicity/bias
age/kernelage/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€x:€€€€€€€€€:€€€€€€€€€*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_750973
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ч
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
GPU 2J 8В *(
f#R!
__inference__traced_save_751459
ґ
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_751670«≥
ч
ѓ
$__inference_signature_wrapper_750973
input_14!
unknown:
	unknown_0:
	unknown_1:	РB@
	unknown_2:@
	unknown_3:	@А
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:
АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:@

unknown_18:

unknown_19:	А

unknown_20:

unknown_21:	Аx

unknown_22:x
identity

identity_1

identity_2ИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
9:€€€€€€€€€x:€€€€€€€€€:€€€€€€€€€*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_749820o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€00
"
_user_specified_name
input_14
Э

ф
B__inference_layer4_layer_call_and_return_conditional_losses_749876

inputs1
matmul_readvariableop_resource:	РB@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	РB@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€РB: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€РB
 
_user_specified_nameinputs
У
ѓ
&__inference_Logan_layer_call_fn_750673

inputs!
unknown:
	unknown_0:
	unknown_1:	РB@
	unknown_2:@
	unknown_3:	@А
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:
АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:@

unknown_18:

unknown_19:	А

unknown_20:

unknown_21:	Аx

unknown_22:x
identity

identity_1

identity_2ИҐStatefulPartitionedCall©
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
9:€€€€€€€€€x:€€€€€€€€€:€€€€€€€€€*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_750054o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
Э

ф
B__inference_layer4_layer_call_and_return_conditional_losses_751034

inputs1
matmul_readvariableop_resource:	РB@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	РB@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€РB: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€РB
 
_user_specified_nameinputs
ƒ
^
B__inference_layer3_layer_call_and_return_conditional_losses_751014

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€!  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€РBY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€РB"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
Х
'__inference_layer4_layer_call_fn_751023

inputs
unknown:	РB@
	unknown_0:@
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_749876o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€РB: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€РB
 
_user_specified_nameinputs
≈
Ч
'__inference_layer6_layer_call_fn_751063

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_749910p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Щ
±
&__inference_Logan_layer_call_fn_750474
input_14!
unknown:
	unknown_0:
	unknown_1:	РB@
	unknown_2:@
	unknown_3:	@А
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:
АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:@

unknown_18:

unknown_19:	А

unknown_20:

unknown_21:	Аx

unknown_22:x
identity

identity_1

identity_2ИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
9:€€€€€€€€€x:€€€€€€€€€:€€€€€€€€€*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_750362o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€00
"
_user_specified_name
input_14
Ш

у
B__inference_gender_layer_call_and_return_conditional_losses_751233

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
«
Ш
*__inference_ethnicity_layer_call_fn_751202

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_750029o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®

щ
E__inference_eth_task1_layer_call_and_return_conditional_losses_749944

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Я

ч
E__inference_ethnicity_layer_call_and_return_conditional_losses_750029

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ

ь
H__inference_gender_task1_layer_call_and_return_conditional_losses_749927

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
£

ъ
H__inference_gender_task2_layer_call_and_return_conditional_losses_751174

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®

щ
E__inference_eth_task1_layer_call_and_return_conditional_losses_751094

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Я

ч
E__inference_ethnicity_layer_call_and_return_conditional_losses_751213

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
љE
ѕ

A__inference_Logan_layer_call_and_return_conditional_losses_750542
input_14'
layer1_750477:
layer1_750479: 
layer4_750484:	РB@
layer4_750486:@ 
layer5_750489:	@А
layer5_750491:	А!
layer6_750494:
АА
layer6_750496:	А'
gender_task1_750499:
АА"
gender_task1_750501:	А$
eth_task1_750504:
АА
eth_task1_750506:	А&
gender_task2_750509:	А@!
gender_task2_750511:@$
eth_task2_750514:
АА
eth_task2_750516:	А#
age_task_750519:
АА
age_task_750521:	А
gender_750524:@
gender_750526:#
ethnicity_750529:	А
ethnicity_750531:

age_750534:	Аx

age_750536:x
identity

identity_1

identity_2ИҐage/StatefulPartitionedCallҐ age_task/StatefulPartitionedCallҐ!eth_task1/StatefulPartitionedCallҐ!eth_task2/StatefulPartitionedCallҐ!ethnicity/StatefulPartitionedCallҐgender/StatefulPartitionedCallҐ$gender_task1/StatefulPartitionedCallҐ$gender_task2/StatefulPartitionedCallҐlayer1/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallт
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_14layer1_750477layer1_750479*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_749850Ё
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_749829ќ
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€РB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_749863Б
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_750484layer4_750486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_749876К
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_750489layer5_750491*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_749893К
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_750494layer6_750496*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_749910Ґ
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_750499gender_task1_750501*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_749927Ц
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_750504eth_task1_750506*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_749944І
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_750509gender_task2_750511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_749961Щ
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_750514eth_task2_750516*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_749978Т
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_750519age_task_750521*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_749995П
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_750524gender_750526*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_750012Ш
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_750529ethnicity_750531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_750029€
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_750534
age_750536*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_750045s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ж
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
:€€€€€€€€€00
"
_user_specified_name
input_14
¶
C
'__inference_layer2_layer_call_fn_750998

inputs
identity–
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_749829Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
®

щ
E__inference_eth_task2_layer_call_and_return_conditional_losses_751154

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
Ц
'__inference_layer5_layer_call_fn_751043

inputs
unknown:	@А
	unknown_0:	А
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_749893p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ЈE
Ќ

A__inference_Logan_layer_call_and_return_conditional_losses_750362

inputs'
layer1_750297:
layer1_750299: 
layer4_750304:	РB@
layer4_750306:@ 
layer5_750309:	@А
layer5_750311:	А!
layer6_750314:
АА
layer6_750316:	А'
gender_task1_750319:
АА"
gender_task1_750321:	А$
eth_task1_750324:
АА
eth_task1_750326:	А&
gender_task2_750329:	А@!
gender_task2_750331:@$
eth_task2_750334:
АА
eth_task2_750336:	А#
age_task_750339:
АА
age_task_750341:	А
gender_750344:@
gender_750346:#
ethnicity_750349:	А
ethnicity_750351:

age_750354:	Аx

age_750356:x
identity

identity_1

identity_2ИҐage/StatefulPartitionedCallҐ age_task/StatefulPartitionedCallҐ!eth_task1/StatefulPartitionedCallҐ!eth_task2/StatefulPartitionedCallҐ!ethnicity/StatefulPartitionedCallҐgender/StatefulPartitionedCallҐ$gender_task1/StatefulPartitionedCallҐ$gender_task2/StatefulPartitionedCallҐlayer1/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallр
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_750297layer1_750299*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_749850Ё
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_749829ќ
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€РB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_749863Б
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_750304layer4_750306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_749876К
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_750309layer5_750311*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_749893К
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_750314layer6_750316*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_749910Ґ
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_750319gender_task1_750321*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_749927Ц
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_750324eth_task1_750326*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_749944І
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_750329gender_task2_750331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_749961Щ
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_750334eth_task2_750336*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_749978Т
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_750339age_task_750341*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_749995П
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_750344gender_750346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_750012Ш
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_750349ethnicity_750351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_750029€
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_750354
age_750356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_750045s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ж
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
:€€€€€€€€€00
 
_user_specified_nameinputs
К
^
B__inference_layer2_layer_call_and_return_conditional_losses_749829

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ж
Ь
'__inference_layer1_layer_call_fn_750982

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_749850w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€//`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€00: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
∆	
с
?__inference_age_layer_call_and_return_conditional_losses_750045

inputs1
matmul_readvariableop_resource:	Аx-
biasadd_readvariableop_resource:x
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќk
Х
A__inference_Logan_layer_call_and_return_conditional_losses_750914

inputs?
%layer1_conv2d_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:8
%layer4_matmul_readvariableop_resource:	РB@4
&layer4_biasadd_readvariableop_resource:@8
%layer5_matmul_readvariableop_resource:	@А5
&layer5_biasadd_readvariableop_resource:	А9
%layer6_matmul_readvariableop_resource:
АА5
&layer6_biasadd_readvariableop_resource:	А?
+gender_task1_matmul_readvariableop_resource:
АА;
,gender_task1_biasadd_readvariableop_resource:	А<
(eth_task1_matmul_readvariableop_resource:
АА8
)eth_task1_biasadd_readvariableop_resource:	А>
+gender_task2_matmul_readvariableop_resource:	А@:
,gender_task2_biasadd_readvariableop_resource:@<
(eth_task2_matmul_readvariableop_resource:
АА8
)eth_task2_biasadd_readvariableop_resource:	А;
'age_task_matmul_readvariableop_resource:
АА7
(age_task_biasadd_readvariableop_resource:	А7
%gender_matmul_readvariableop_resource:@4
&gender_biasadd_readvariableop_resource:;
(ethnicity_matmul_readvariableop_resource:	А7
)ethnicity_biasadd_readvariableop_resource:5
"age_matmul_readvariableop_resource:	Аx1
#age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИҐage/BiasAdd/ReadVariableOpҐage/MatMul/ReadVariableOpҐage_task/BiasAdd/ReadVariableOpҐage_task/MatMul/ReadVariableOpҐ eth_task1/BiasAdd/ReadVariableOpҐeth_task1/MatMul/ReadVariableOpҐ eth_task2/BiasAdd/ReadVariableOpҐeth_task2/MatMul/ReadVariableOpҐ ethnicity/BiasAdd/ReadVariableOpҐethnicity/MatMul/ReadVariableOpҐgender/BiasAdd/ReadVariableOpҐgender/MatMul/ReadVariableOpҐ#gender_task1/BiasAdd/ReadVariableOpҐ"gender_task1/MatMul/ReadVariableOpҐ#gender_task2/BiasAdd/ReadVariableOpҐ"gender_task2/MatMul/ReadVariableOpҐlayer1/BiasAdd/ReadVariableOpҐlayer1/Conv2D/ReadVariableOpҐlayer4/BiasAdd/ReadVariableOpҐlayer4/MatMul/ReadVariableOpҐlayer5/BiasAdd/ReadVariableOpҐlayer5/MatMul/ReadVariableOpҐlayer6/BiasAdd/ReadVariableOpҐlayer6/MatMul/ReadVariableOpК
layer1/Conv2D/ReadVariableOpReadVariableOp%layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0®
layer1/Conv2DConv2Dinputs$layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//*
paddingVALID*
strides
А
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
layer1/BiasAddBiasAddlayer1/Conv2D:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//f
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//°
layer2/MaxPoolMaxPoollayer1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
]
layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€!  |
layer3/ReshapeReshapelayer2/MaxPool:output:0layer3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РBГ
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes
:	РB@*
dtype0И
layer4/MatMulMatMullayer3/Reshape:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@А
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Л
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0Л
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
layer6/MatMul/ReadVariableOpReadVariableOp%layer6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Л
layer6/MatMulMatMullayer5/Relu:activations:0$layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
layer6/BiasAdd/ReadVariableOpReadVariableOp&layer6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
layer6/BiasAddBiasAddlayer6/MatMul:product:0%layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
layer6/ReluRelulayer6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АР
"gender_task1/MatMul/ReadVariableOpReadVariableOp+gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ч
gender_task1/MatMulMatMullayer6/Relu:activations:0*gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
#gender_task1/BiasAdd/ReadVariableOpReadVariableOp,gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
gender_task1/BiasAddBiasAddgender_task1/MatMul:product:0+gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
gender_task1/ReluRelugender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АК
eth_task1/MatMul/ReadVariableOpReadVariableOp(eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
eth_task1/MatMulMatMullayer6/Relu:activations:0'eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 eth_task1/BiasAdd/ReadVariableOpReadVariableOp)eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
eth_task1/BiasAddBiasAddeth_task1/MatMul:product:0(eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
eth_task1/ReluRelueth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АП
"gender_task2/MatMul/ReadVariableOpReadVariableOp+gender_task2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Ь
gender_task2/MatMulMatMulgender_task1/Relu:activations:0*gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#gender_task2/BiasAdd/ReadVariableOpReadVariableOp,gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Э
gender_task2/BiasAddBiasAddgender_task2/MatMul:product:0+gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@j
gender_task2/ReluRelugender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@К
eth_task2/MatMul/ReadVariableOpReadVariableOp(eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ф
eth_task2/MatMulMatMuleth_task1/Relu:activations:0'eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 eth_task2/BiasAdd/ReadVariableOpReadVariableOp)eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
eth_task2/BiasAddBiasAddeth_task2/MatMul:product:0(eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
eth_task2/ReluRelueth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
age_task/MatMul/ReadVariableOpReadVariableOp'age_task_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0П
age_task/MatMulMatMullayer6/Relu:activations:0&age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
age_task/BiasAdd/ReadVariableOpReadVariableOp(age_task_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
age_task/BiasAddBiasAddage_task/MatMul:product:0'age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
age_task/ReluReluage_task/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
gender/MatMul/ReadVariableOpReadVariableOp%gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Р
gender/MatMulMatMulgender_task2/Relu:activations:0$gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
gender/BiasAdd/ReadVariableOpReadVariableOp&gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
gender/BiasAddBiasAddgender/MatMul:product:0%gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
gender/SigmoidSigmoidgender/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Й
ethnicity/MatMul/ReadVariableOpReadVariableOp(ethnicity_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0У
ethnicity/MatMulMatMuleth_task2/Relu:activations:0'ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
 ethnicity/BiasAdd/ReadVariableOpReadVariableOp)ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
ethnicity/BiasAddBiasAddethnicity/MatMul:product:0(ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€j
ethnicity/SigmoidSigmoidethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€}
age/MatMul/ReadVariableOpReadVariableOp"age_matmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype0Ж

age/MatMulMatMulage_task/Relu:activations:0!age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xz
age/BiasAdd/ReadVariableOpReadVariableOp#age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0В
age/BiasAddBiasAddage/MatMul:product:0"age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xc
IdentityIdentityage/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xf

Identity_1Identityethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€c

Identity_2Identitygender/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€в
NoOpNoOp^age/BiasAdd/ReadVariableOp^age/MatMul/ReadVariableOp ^age_task/BiasAdd/ReadVariableOp^age_task/MatMul/ReadVariableOp!^eth_task1/BiasAdd/ReadVariableOp ^eth_task1/MatMul/ReadVariableOp!^eth_task2/BiasAdd/ReadVariableOp ^eth_task2/MatMul/ReadVariableOp!^ethnicity/BiasAdd/ReadVariableOp ^ethnicity/MatMul/ReadVariableOp^gender/BiasAdd/ReadVariableOp^gender/MatMul/ReadVariableOp$^gender_task1/BiasAdd/ReadVariableOp#^gender_task1/MatMul/ReadVariableOp$^gender_task2/BiasAdd/ReadVariableOp#^gender_task2/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/Conv2D/ReadVariableOp^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^layer5/BiasAdd/ReadVariableOp^layer5/MatMul/ReadVariableOp^layer6/BiasAdd/ReadVariableOp^layer6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 28
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
:€€€€€€€€€00
 
_user_specified_nameinputs
°

х
B__inference_layer5_layer_call_and_return_conditional_losses_751054

inputs1
matmul_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ї
Т
$__inference_age_layer_call_fn_751183

inputs
unknown:	Аx
	unknown_0:x
identityИҐStatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_750045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ќk
Х
A__inference_Logan_layer_call_and_return_conditional_losses_750822

inputs?
%layer1_conv2d_readvariableop_resource:4
&layer1_biasadd_readvariableop_resource:8
%layer4_matmul_readvariableop_resource:	РB@4
&layer4_biasadd_readvariableop_resource:@8
%layer5_matmul_readvariableop_resource:	@А5
&layer5_biasadd_readvariableop_resource:	А9
%layer6_matmul_readvariableop_resource:
АА5
&layer6_biasadd_readvariableop_resource:	А?
+gender_task1_matmul_readvariableop_resource:
АА;
,gender_task1_biasadd_readvariableop_resource:	А<
(eth_task1_matmul_readvariableop_resource:
АА8
)eth_task1_biasadd_readvariableop_resource:	А>
+gender_task2_matmul_readvariableop_resource:	А@:
,gender_task2_biasadd_readvariableop_resource:@<
(eth_task2_matmul_readvariableop_resource:
АА8
)eth_task2_biasadd_readvariableop_resource:	А;
'age_task_matmul_readvariableop_resource:
АА7
(age_task_biasadd_readvariableop_resource:	А7
%gender_matmul_readvariableop_resource:@4
&gender_biasadd_readvariableop_resource:;
(ethnicity_matmul_readvariableop_resource:	А7
)ethnicity_biasadd_readvariableop_resource:5
"age_matmul_readvariableop_resource:	Аx1
#age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИҐage/BiasAdd/ReadVariableOpҐage/MatMul/ReadVariableOpҐage_task/BiasAdd/ReadVariableOpҐage_task/MatMul/ReadVariableOpҐ eth_task1/BiasAdd/ReadVariableOpҐeth_task1/MatMul/ReadVariableOpҐ eth_task2/BiasAdd/ReadVariableOpҐeth_task2/MatMul/ReadVariableOpҐ ethnicity/BiasAdd/ReadVariableOpҐethnicity/MatMul/ReadVariableOpҐgender/BiasAdd/ReadVariableOpҐgender/MatMul/ReadVariableOpҐ#gender_task1/BiasAdd/ReadVariableOpҐ"gender_task1/MatMul/ReadVariableOpҐ#gender_task2/BiasAdd/ReadVariableOpҐ"gender_task2/MatMul/ReadVariableOpҐlayer1/BiasAdd/ReadVariableOpҐlayer1/Conv2D/ReadVariableOpҐlayer4/BiasAdd/ReadVariableOpҐlayer4/MatMul/ReadVariableOpҐlayer5/BiasAdd/ReadVariableOpҐlayer5/MatMul/ReadVariableOpҐlayer6/BiasAdd/ReadVariableOpҐlayer6/MatMul/ReadVariableOpК
layer1/Conv2D/ReadVariableOpReadVariableOp%layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0®
layer1/Conv2DConv2Dinputs$layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//*
paddingVALID*
strides
А
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
layer1/BiasAddBiasAddlayer1/Conv2D:output:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//f
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//°
layer2/MaxPoolMaxPoollayer1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
]
layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€!  |
layer3/ReshapeReshapelayer2/MaxPool:output:0layer3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РBГ
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes
:	РB@*
dtype0И
layer4/MatMulMatMullayer3/Reshape:output:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@А
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Л
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Г
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0Л
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
layer6/MatMul/ReadVariableOpReadVariableOp%layer6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Л
layer6/MatMulMatMullayer5/Relu:activations:0$layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
layer6/BiasAdd/ReadVariableOpReadVariableOp&layer6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
layer6/BiasAddBiasAddlayer6/MatMul:product:0%layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
layer6/ReluRelulayer6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АР
"gender_task1/MatMul/ReadVariableOpReadVariableOp+gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ч
gender_task1/MatMulMatMullayer6/Relu:activations:0*gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
#gender_task1/BiasAdd/ReadVariableOpReadVariableOp,gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
gender_task1/BiasAddBiasAddgender_task1/MatMul:product:0+gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
gender_task1/ReluRelugender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АК
eth_task1/MatMul/ReadVariableOpReadVariableOp(eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
eth_task1/MatMulMatMullayer6/Relu:activations:0'eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 eth_task1/BiasAdd/ReadVariableOpReadVariableOp)eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
eth_task1/BiasAddBiasAddeth_task1/MatMul:product:0(eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
eth_task1/ReluRelueth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АП
"gender_task2/MatMul/ReadVariableOpReadVariableOp+gender_task2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Ь
gender_task2/MatMulMatMulgender_task1/Relu:activations:0*gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#gender_task2/BiasAdd/ReadVariableOpReadVariableOp,gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Э
gender_task2/BiasAddBiasAddgender_task2/MatMul:product:0+gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@j
gender_task2/ReluRelugender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@К
eth_task2/MatMul/ReadVariableOpReadVariableOp(eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Ф
eth_task2/MatMulMatMuleth_task1/Relu:activations:0'eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 eth_task2/BiasAdd/ReadVariableOpReadVariableOp)eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Х
eth_task2/BiasAddBiasAddeth_task2/MatMul:product:0(eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
eth_task2/ReluRelueth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
age_task/MatMul/ReadVariableOpReadVariableOp'age_task_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0П
age_task/MatMulMatMullayer6/Relu:activations:0&age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
age_task/BiasAdd/ReadVariableOpReadVariableOp(age_task_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
age_task/BiasAddBiasAddage_task/MatMul:product:0'age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
age_task/ReluReluage_task/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АВ
gender/MatMul/ReadVariableOpReadVariableOp%gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Р
gender/MatMulMatMulgender_task2/Relu:activations:0$gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
gender/BiasAdd/ReadVariableOpReadVariableOp&gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
gender/BiasAddBiasAddgender/MatMul:product:0%gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
gender/SigmoidSigmoidgender/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Й
ethnicity/MatMul/ReadVariableOpReadVariableOp(ethnicity_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0У
ethnicity/MatMulMatMuleth_task2/Relu:activations:0'ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
 ethnicity/BiasAdd/ReadVariableOpReadVariableOp)ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ф
ethnicity/BiasAddBiasAddethnicity/MatMul:product:0(ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€j
ethnicity/SigmoidSigmoidethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€}
age/MatMul/ReadVariableOpReadVariableOp"age_matmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype0Ж

age/MatMulMatMulage_task/Relu:activations:0!age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xz
age/BiasAdd/ReadVariableOpReadVariableOp#age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0В
age/BiasAddBiasAddage/MatMul:product:0"age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xc
IdentityIdentityage/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xf

Identity_1Identityethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€c

Identity_2Identitygender/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€в
NoOpNoOp^age/BiasAdd/ReadVariableOp^age/MatMul/ReadVariableOp ^age_task/BiasAdd/ReadVariableOp^age_task/MatMul/ReadVariableOp!^eth_task1/BiasAdd/ReadVariableOp ^eth_task1/MatMul/ReadVariableOp!^eth_task2/BiasAdd/ReadVariableOp ^eth_task2/MatMul/ReadVariableOp!^ethnicity/BiasAdd/ReadVariableOp ^ethnicity/MatMul/ReadVariableOp^gender/BiasAdd/ReadVariableOp^gender/MatMul/ReadVariableOp$^gender_task1/BiasAdd/ReadVariableOp#^gender_task1/MatMul/ReadVariableOp$^gender_task2/BiasAdd/ReadVariableOp#^gender_task2/MatMul/ReadVariableOp^layer1/BiasAdd/ReadVariableOp^layer1/Conv2D/ReadVariableOp^layer4/BiasAdd/ReadVariableOp^layer4/MatMul/ReadVariableOp^layer5/BiasAdd/ReadVariableOp^layer5/MatMul/ReadVariableOp^layer6/BiasAdd/ReadVariableOp^layer6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 28
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
:€€€€€€€€€00
 
_user_specified_nameinputs
І

ш
D__inference_age_task_layer_call_and_return_conditional_losses_749995

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
°

х
B__inference_layer5_layer_call_and_return_conditional_losses_749893

inputs1
matmul_readvariableop_resource:	@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ш

у
B__inference_gender_layer_call_and_return_conditional_losses_750012

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
В
ы
B__inference_layer1_layer_call_and_return_conditional_losses_750993

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//*
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
:€€€€€€€€€//X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€//w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
∆	
с
?__inference_age_layer_call_and_return_conditional_losses_751193

inputs1
matmul_readvariableop_resource:	Аx-
biasadd_readvariableop_resource:x
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ

ь
H__inference_gender_task1_layer_call_and_return_conditional_losses_751114

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Лx
Ч
!__inference__wrapped_model_749820
input_14E
+logan_layer1_conv2d_readvariableop_resource::
,logan_layer1_biasadd_readvariableop_resource:>
+logan_layer4_matmul_readvariableop_resource:	РB@:
,logan_layer4_biasadd_readvariableop_resource:@>
+logan_layer5_matmul_readvariableop_resource:	@А;
,logan_layer5_biasadd_readvariableop_resource:	А?
+logan_layer6_matmul_readvariableop_resource:
АА;
,logan_layer6_biasadd_readvariableop_resource:	АE
1logan_gender_task1_matmul_readvariableop_resource:
ААA
2logan_gender_task1_biasadd_readvariableop_resource:	АB
.logan_eth_task1_matmul_readvariableop_resource:
АА>
/logan_eth_task1_biasadd_readvariableop_resource:	АD
1logan_gender_task2_matmul_readvariableop_resource:	А@@
2logan_gender_task2_biasadd_readvariableop_resource:@B
.logan_eth_task2_matmul_readvariableop_resource:
АА>
/logan_eth_task2_biasadd_readvariableop_resource:	АA
-logan_age_task_matmul_readvariableop_resource:
АА=
.logan_age_task_biasadd_readvariableop_resource:	А=
+logan_gender_matmul_readvariableop_resource:@:
,logan_gender_biasadd_readvariableop_resource:A
.logan_ethnicity_matmul_readvariableop_resource:	А=
/logan_ethnicity_biasadd_readvariableop_resource:;
(logan_age_matmul_readvariableop_resource:	Аx7
)logan_age_biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИҐ Logan/age/BiasAdd/ReadVariableOpҐLogan/age/MatMul/ReadVariableOpҐ%Logan/age_task/BiasAdd/ReadVariableOpҐ$Logan/age_task/MatMul/ReadVariableOpҐ&Logan/eth_task1/BiasAdd/ReadVariableOpҐ%Logan/eth_task1/MatMul/ReadVariableOpҐ&Logan/eth_task2/BiasAdd/ReadVariableOpҐ%Logan/eth_task2/MatMul/ReadVariableOpҐ&Logan/ethnicity/BiasAdd/ReadVariableOpҐ%Logan/ethnicity/MatMul/ReadVariableOpҐ#Logan/gender/BiasAdd/ReadVariableOpҐ"Logan/gender/MatMul/ReadVariableOpҐ)Logan/gender_task1/BiasAdd/ReadVariableOpҐ(Logan/gender_task1/MatMul/ReadVariableOpҐ)Logan/gender_task2/BiasAdd/ReadVariableOpҐ(Logan/gender_task2/MatMul/ReadVariableOpҐ#Logan/layer1/BiasAdd/ReadVariableOpҐ"Logan/layer1/Conv2D/ReadVariableOpҐ#Logan/layer4/BiasAdd/ReadVariableOpҐ"Logan/layer4/MatMul/ReadVariableOpҐ#Logan/layer5/BiasAdd/ReadVariableOpҐ"Logan/layer5/MatMul/ReadVariableOpҐ#Logan/layer6/BiasAdd/ReadVariableOpҐ"Logan/layer6/MatMul/ReadVariableOpЦ
"Logan/layer1/Conv2D/ReadVariableOpReadVariableOp+logan_layer1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ґ
Logan/layer1/Conv2DConv2Dinput_14*Logan/layer1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//*
paddingVALID*
strides
М
#Logan/layer1/BiasAdd/ReadVariableOpReadVariableOp,logan_layer1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0§
Logan/layer1/BiasAddBiasAddLogan/layer1/Conv2D:output:0+Logan/layer1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//r
Logan/layer1/ReluReluLogan/layer1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//≠
Logan/layer2/MaxPoolMaxPoolLogan/layer1/Relu:activations:0*/
_output_shapes
:€€€€€€€€€*
ksize
*
paddingVALID*
strides
c
Logan/layer3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€!  О
Logan/layer3/ReshapeReshapeLogan/layer2/MaxPool:output:0Logan/layer3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РBП
"Logan/layer4/MatMul/ReadVariableOpReadVariableOp+logan_layer4_matmul_readvariableop_resource*
_output_shapes
:	РB@*
dtype0Ъ
Logan/layer4/MatMulMatMulLogan/layer3/Reshape:output:0*Logan/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#Logan/layer4/BiasAdd/ReadVariableOpReadVariableOp,logan_layer4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Э
Logan/layer4/BiasAddBiasAddLogan/layer4/MatMul:product:0+Logan/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@j
Logan/layer4/ReluReluLogan/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@П
"Logan/layer5/MatMul/ReadVariableOpReadVariableOp+logan_layer5_matmul_readvariableop_resource*
_output_shapes
:	@А*
dtype0Э
Logan/layer5/MatMulMatMulLogan/layer4/Relu:activations:0*Logan/layer5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
#Logan/layer5/BiasAdd/ReadVariableOpReadVariableOp,logan_layer5_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
Logan/layer5/BiasAddBiasAddLogan/layer5/MatMul:product:0+Logan/layer5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
Logan/layer5/ReluReluLogan/layer5/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АР
"Logan/layer6/MatMul/ReadVariableOpReadVariableOp+logan_layer6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Э
Logan/layer6/MatMulMatMulLogan/layer5/Relu:activations:0*Logan/layer6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
#Logan/layer6/BiasAdd/ReadVariableOpReadVariableOp,logan_layer6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ю
Logan/layer6/BiasAddBiasAddLogan/layer6/MatMul:product:0+Logan/layer6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
Logan/layer6/ReluReluLogan/layer6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЬ
(Logan/gender_task1/MatMul/ReadVariableOpReadVariableOp1logan_gender_task1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0©
Logan/gender_task1/MatMulMatMulLogan/layer6/Relu:activations:00Logan/gender_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЩ
)Logan/gender_task1/BiasAdd/ReadVariableOpReadVariableOp2logan_gender_task1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0∞
Logan/gender_task1/BiasAddBiasAdd#Logan/gender_task1/MatMul:product:01Logan/gender_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аw
Logan/gender_task1/ReluRelu#Logan/gender_task1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЦ
%Logan/eth_task1/MatMul/ReadVariableOpReadVariableOp.logan_eth_task1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0£
Logan/eth_task1/MatMulMatMulLogan/layer6/Relu:activations:0-Logan/eth_task1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АУ
&Logan/eth_task1/BiasAdd/ReadVariableOpReadVariableOp/logan_eth_task1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0І
Logan/eth_task1/BiasAddBiasAdd Logan/eth_task1/MatMul:product:0.Logan/eth_task1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
Logan/eth_task1/ReluRelu Logan/eth_task1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
(Logan/gender_task2/MatMul/ReadVariableOpReadVariableOp1logan_gender_task2_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0Ѓ
Logan/gender_task2/MatMulMatMul%Logan/gender_task1/Relu:activations:00Logan/gender_task2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ш
)Logan/gender_task2/BiasAdd/ReadVariableOpReadVariableOp2logan_gender_task2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ѓ
Logan/gender_task2/BiasAddBiasAdd#Logan/gender_task2/MatMul:product:01Logan/gender_task2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@v
Logan/gender_task2/ReluRelu#Logan/gender_task2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@Ц
%Logan/eth_task2/MatMul/ReadVariableOpReadVariableOp.logan_eth_task2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0¶
Logan/eth_task2/MatMulMatMul"Logan/eth_task1/Relu:activations:0-Logan/eth_task2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АУ
&Logan/eth_task2/BiasAdd/ReadVariableOpReadVariableOp/logan_eth_task2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0І
Logan/eth_task2/BiasAddBiasAdd Logan/eth_task2/MatMul:product:0.Logan/eth_task2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аq
Logan/eth_task2/ReluRelu Logan/eth_task2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
$Logan/age_task/MatMul/ReadVariableOpReadVariableOp-logan_age_task_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0°
Logan/age_task/MatMulMatMulLogan/layer6/Relu:activations:0,Logan/age_task/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АС
%Logan/age_task/BiasAdd/ReadVariableOpReadVariableOp.logan_age_task_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0§
Logan/age_task/BiasAddBiasAddLogan/age_task/MatMul:product:0-Logan/age_task/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аo
Logan/age_task/ReluReluLogan/age_task/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АО
"Logan/gender/MatMul/ReadVariableOpReadVariableOp+logan_gender_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ґ
Logan/gender/MatMulMatMul%Logan/gender_task2/Relu:activations:0*Logan/gender/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€М
#Logan/gender/BiasAdd/ReadVariableOpReadVariableOp,logan_gender_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
Logan/gender/BiasAddBiasAddLogan/gender/MatMul:product:0+Logan/gender/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€p
Logan/gender/SigmoidSigmoidLogan/gender/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Х
%Logan/ethnicity/MatMul/ReadVariableOpReadVariableOp.logan_ethnicity_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0•
Logan/ethnicity/MatMulMatMul"Logan/eth_task2/Relu:activations:0-Logan/ethnicity/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&Logan/ethnicity/BiasAdd/ReadVariableOpReadVariableOp/logan_ethnicity_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
Logan/ethnicity/BiasAddBiasAdd Logan/ethnicity/MatMul:product:0.Logan/ethnicity/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€v
Logan/ethnicity/SigmoidSigmoid Logan/ethnicity/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Й
Logan/age/MatMul/ReadVariableOpReadVariableOp(logan_age_matmul_readvariableop_resource*
_output_shapes
:	Аx*
dtype0Ш
Logan/age/MatMulMatMul!Logan/age_task/Relu:activations:0'Logan/age/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xЖ
 Logan/age/BiasAdd/ReadVariableOpReadVariableOp)logan_age_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0Ф
Logan/age/BiasAddBiasAddLogan/age/MatMul:product:0(Logan/age/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€xi
IdentityIdentityLogan/age/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xl

Identity_1IdentityLogan/ethnicity/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€i

Identity_2IdentityLogan/gender/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€т
NoOpNoOp!^Logan/age/BiasAdd/ReadVariableOp ^Logan/age/MatMul/ReadVariableOp&^Logan/age_task/BiasAdd/ReadVariableOp%^Logan/age_task/MatMul/ReadVariableOp'^Logan/eth_task1/BiasAdd/ReadVariableOp&^Logan/eth_task1/MatMul/ReadVariableOp'^Logan/eth_task2/BiasAdd/ReadVariableOp&^Logan/eth_task2/MatMul/ReadVariableOp'^Logan/ethnicity/BiasAdd/ReadVariableOp&^Logan/ethnicity/MatMul/ReadVariableOp$^Logan/gender/BiasAdd/ReadVariableOp#^Logan/gender/MatMul/ReadVariableOp*^Logan/gender_task1/BiasAdd/ReadVariableOp)^Logan/gender_task1/MatMul/ReadVariableOp*^Logan/gender_task2/BiasAdd/ReadVariableOp)^Logan/gender_task2/MatMul/ReadVariableOp$^Logan/layer1/BiasAdd/ReadVariableOp#^Logan/layer1/Conv2D/ReadVariableOp$^Logan/layer4/BiasAdd/ReadVariableOp#^Logan/layer4/MatMul/ReadVariableOp$^Logan/layer5/BiasAdd/ReadVariableOp#^Logan/layer5/MatMul/ReadVariableOp$^Logan/layer6/BiasAdd/ReadVariableOp#^Logan/layer6/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 2D
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
:€€€€€€€€€00
"
_user_specified_name
input_14
£

ъ
H__inference_gender_task2_layer_call_and_return_conditional_losses_749961

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•

ц
B__inference_layer6_layer_call_and_return_conditional_losses_749910

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЉЕ
Д(
"__inference__traced_restore_751670
file_prefix8
assignvariableop_layer1_kernel:,
assignvariableop_1_layer1_bias:3
 assignvariableop_2_layer4_kernel:	РB@,
assignvariableop_3_layer4_bias:@3
 assignvariableop_4_layer5_kernel:	@А-
assignvariableop_5_layer5_bias:	А4
 assignvariableop_6_layer6_kernel:
АА-
assignvariableop_7_layer6_bias:	А7
#assignvariableop_8_eth_task1_kernel:
АА0
!assignvariableop_9_eth_task1_bias:	А;
'assignvariableop_10_gender_task1_kernel:
АА4
%assignvariableop_11_gender_task1_bias:	А7
#assignvariableop_12_age_task_kernel:
АА0
!assignvariableop_13_age_task_bias:	А8
$assignvariableop_14_eth_task2_kernel:
АА1
"assignvariableop_15_eth_task2_bias:	А:
'assignvariableop_16_gender_task2_kernel:	А@3
%assignvariableop_17_gender_task2_bias:@1
assignvariableop_18_age_kernel:	Аx*
assignvariableop_19_age_bias:x7
$assignvariableop_20_ethnicity_kernel:	А0
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
-assignvariableop_45_rmsprop_layer4_kernel_rms:	РB@9
+assignvariableop_46_rmsprop_layer4_bias_rms:@@
-assignvariableop_47_rmsprop_layer5_kernel_rms:	@А:
+assignvariableop_48_rmsprop_layer5_bias_rms:	АA
-assignvariableop_49_rmsprop_layer6_kernel_rms:
АА:
+assignvariableop_50_rmsprop_layer6_bias_rms:	АD
0assignvariableop_51_rmsprop_eth_task1_kernel_rms:
АА=
.assignvariableop_52_rmsprop_eth_task1_bias_rms:	АG
3assignvariableop_53_rmsprop_gender_task1_kernel_rms:
АА@
1assignvariableop_54_rmsprop_gender_task1_bias_rms:	АC
/assignvariableop_55_rmsprop_age_task_kernel_rms:
АА<
-assignvariableop_56_rmsprop_age_task_bias_rms:	АD
0assignvariableop_57_rmsprop_eth_task2_kernel_rms:
АА=
.assignvariableop_58_rmsprop_eth_task2_bias_rms:	АF
3assignvariableop_59_rmsprop_gender_task2_kernel_rms:	А@?
1assignvariableop_60_rmsprop_gender_task2_bias_rms:@=
*assignvariableop_61_rmsprop_age_kernel_rms:	Аx6
(assignvariableop_62_rmsprop_age_bias_rms:xC
0assignvariableop_63_rmsprop_ethnicity_kernel_rms:	А<
.assignvariableop_64_rmsprop_ethnicity_bias_rms:?
-assignvariableop_65_rmsprop_gender_kernel_rms:@9
+assignvariableop_66_rmsprop_gender_bias_rms:
identity_68ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Н#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*≥"
value©"B¶"DB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHы
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*Э
valueУBРDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B х
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapesУ
Р::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*R
dtypesH
F2D	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Й
AssignVariableOpAssignVariableOpassignvariableop_layer1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_1AssignVariableOpassignvariableop_1_layer1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_4AssignVariableOp assignvariableop_4_layer5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_6AssignVariableOp assignvariableop_6_layer6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_7AssignVariableOpassignvariableop_7_layer6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_eth_task1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_eth_task1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_10AssignVariableOp'assignvariableop_10_gender_task1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_11AssignVariableOp%assignvariableop_11_gender_task1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_12AssignVariableOp#assignvariableop_12_age_task_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_13AssignVariableOp!assignvariableop_13_age_task_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_14AssignVariableOp$assignvariableop_14_eth_task2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_15AssignVariableOp"assignvariableop_15_eth_task2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_16AssignVariableOp'assignvariableop_16_gender_task2_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_17AssignVariableOp%assignvariableop_17_gender_task2_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_18AssignVariableOpassignvariableop_18_age_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_19AssignVariableOpassignvariableop_19_age_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_20AssignVariableOp$assignvariableop_20_ethnicity_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_21AssignVariableOp"assignvariableop_21_ethnicity_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_22AssignVariableOp!assignvariableop_22_gender_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_23AssignVariableOpassignvariableop_23_gender_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:С
AssignVariableOp_24AssignVariableOp assignvariableop_24_rmsprop_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_25AssignVariableOp!assignvariableop_25_rmsprop_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_26AssignVariableOp)assignvariableop_26_rmsprop_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_27AssignVariableOp$assignvariableop_27_rmsprop_momentumIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_28AssignVariableOpassignvariableop_28_rmsprop_rhoIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_2Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_3Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_3Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_4Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_4Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_5Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_5Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_6Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_6Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_43AssignVariableOp-assignvariableop_43_rmsprop_layer1_kernel_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_44AssignVariableOp+assignvariableop_44_rmsprop_layer1_bias_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_45AssignVariableOp-assignvariableop_45_rmsprop_layer4_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_46AssignVariableOp+assignvariableop_46_rmsprop_layer4_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_47AssignVariableOp-assignvariableop_47_rmsprop_layer5_kernel_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_48AssignVariableOp+assignvariableop_48_rmsprop_layer5_bias_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_49AssignVariableOp-assignvariableop_49_rmsprop_layer6_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_50AssignVariableOp+assignvariableop_50_rmsprop_layer6_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_51AssignVariableOp0assignvariableop_51_rmsprop_eth_task1_kernel_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_52AssignVariableOp.assignvariableop_52_rmsprop_eth_task1_bias_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_53AssignVariableOp3assignvariableop_53_rmsprop_gender_task1_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_54AssignVariableOp1assignvariableop_54_rmsprop_gender_task1_bias_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_55AssignVariableOp/assignvariableop_55_rmsprop_age_task_kernel_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_56AssignVariableOp-assignvariableop_56_rmsprop_age_task_bias_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_57AssignVariableOp0assignvariableop_57_rmsprop_eth_task2_kernel_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_58AssignVariableOp.assignvariableop_58_rmsprop_eth_task2_bias_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_59AssignVariableOp3assignvariableop_59_rmsprop_gender_task2_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_60AssignVariableOp1assignvariableop_60_rmsprop_gender_task2_bias_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_61AssignVariableOp*assignvariableop_61_rmsprop_age_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_62AssignVariableOp(assignvariableop_62_rmsprop_age_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_63AssignVariableOp0assignvariableop_63_rmsprop_ethnicity_kernel_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_64AssignVariableOp.assignvariableop_64_rmsprop_ethnicity_bias_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_65AssignVariableOp-assignvariableop_65_rmsprop_gender_kernel_rmsIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_66AssignVariableOp+assignvariableop_66_rmsprop_gender_bias_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 С
Identity_67Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_68IdentityIdentity_67:output:0^NoOp_1*
T0*
_output_shapes
: ю
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_68Identity_68:output:0*Э
_input_shapesЛ
И: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
ЈE
Ќ

A__inference_Logan_layer_call_and_return_conditional_losses_750054

inputs'
layer1_749851:
layer1_749853: 
layer4_749877:	РB@
layer4_749879:@ 
layer5_749894:	@А
layer5_749896:	А!
layer6_749911:
АА
layer6_749913:	А'
gender_task1_749928:
АА"
gender_task1_749930:	А$
eth_task1_749945:
АА
eth_task1_749947:	А&
gender_task2_749962:	А@!
gender_task2_749964:@$
eth_task2_749979:
АА
eth_task2_749981:	А#
age_task_749996:
АА
age_task_749998:	А
gender_750013:@
gender_750015:#
ethnicity_750030:	А
ethnicity_750032:

age_750046:	Аx

age_750048:x
identity

identity_1

identity_2ИҐage/StatefulPartitionedCallҐ age_task/StatefulPartitionedCallҐ!eth_task1/StatefulPartitionedCallҐ!eth_task2/StatefulPartitionedCallҐ!ethnicity/StatefulPartitionedCallҐgender/StatefulPartitionedCallҐ$gender_task1/StatefulPartitionedCallҐ$gender_task2/StatefulPartitionedCallҐlayer1/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallр
layer1/StatefulPartitionedCallStatefulPartitionedCallinputslayer1_749851layer1_749853*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_749850Ё
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_749829ќ
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€РB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_749863Б
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_749877layer4_749879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_749876К
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_749894layer5_749896*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_749893К
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_749911layer6_749913*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_749910Ґ
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_749928gender_task1_749930*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_749927Ц
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_749945eth_task1_749947*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_749944І
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_749962gender_task2_749964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_749961Щ
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_749979eth_task2_749981*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_749978Т
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_749996age_task_749998*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_749995П
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_750013gender_750015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_750012Ш
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_750030ethnicity_750032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_750029€
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_750046
age_750048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_750045s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ж
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
:€€€€€€€€€00
 
_user_specified_nameinputs
•

ц
B__inference_layer6_layer_call_and_return_conditional_losses_751074

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
Ъ
*__inference_eth_task2_layer_call_fn_751143

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_749978p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®

щ
E__inference_eth_task2_layer_call_and_return_conditional_losses_749978

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ћ
Ъ
*__inference_eth_task1_layer_call_fn_751083

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_749944p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ђ
C
'__inference_layer3_layer_call_fn_751008

inputs
identityЃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€РB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_749863a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€РB"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
Э
-__inference_gender_task1_layer_call_fn_751103

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_749927p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Њ
Ф
'__inference_gender_layer_call_fn_751222

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_750012o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
І

ш
D__inference_age_task_layer_call_and_return_conditional_losses_751134

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Щ
±
&__inference_Logan_layer_call_fn_750109
input_14!
unknown:
	unknown_0:
	unknown_1:	РB@
	unknown_2:@
	unknown_3:	@А
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:
АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:@

unknown_18:

unknown_19:	А

unknown_20:

unknown_21:	Аx

unknown_22:x
identity

identity_1

identity_2ИҐStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
9:€€€€€€€€€x:€€€€€€€€€:€€€€€€€€€*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_750054o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:€€€€€€€€€00
"
_user_specified_name
input_14
В
ы
B__inference_layer1_layer_call_and_return_conditional_losses_749850

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€//*
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
:€€€€€€€€€//X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€//i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€//w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€00: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
ƒ
^
B__inference_layer3_layer_call_and_return_conditional_losses_749863

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€!  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€РBY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€РB"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€:W S
/
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Ы
-__inference_gender_task2_layer_call_fn_751163

inputs
unknown:	А@
	unknown_0:@
identityИҐStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_749961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
^
B__inference_layer2_layer_call_and_return_conditional_losses_751003

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
ѓ
&__inference_Logan_layer_call_fn_750730

inputs!
unknown:
	unknown_0:
	unknown_1:	РB@
	unknown_2:@
	unknown_3:	@А
	unknown_4:	А
	unknown_5:
АА
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А@

unknown_12:@

unknown_13:
АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:@

unknown_18:

unknown_19:	А

unknown_20:

unknown_21:	Аx

unknown_22:x
identity

identity_1

identity_2ИҐStatefulPartitionedCall©
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
9:€€€€€€€€€x:€€€€€€€€€:€€€€€€€€€*:
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_Logan_layer_call_and_return_conditional_losses_750362o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€xq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€00
 
_user_specified_nameinputs
…
Щ
)__inference_age_task_layer_call_fn_751123

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_749995p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
љE
ѕ

A__inference_Logan_layer_call_and_return_conditional_losses_750610
input_14'
layer1_750545:
layer1_750547: 
layer4_750552:	РB@
layer4_750554:@ 
layer5_750557:	@А
layer5_750559:	А!
layer6_750562:
АА
layer6_750564:	А'
gender_task1_750567:
АА"
gender_task1_750569:	А$
eth_task1_750572:
АА
eth_task1_750574:	А&
gender_task2_750577:	А@!
gender_task2_750579:@$
eth_task2_750582:
АА
eth_task2_750584:	А#
age_task_750587:
АА
age_task_750589:	А
gender_750592:@
gender_750594:#
ethnicity_750597:	А
ethnicity_750599:

age_750602:	Аx

age_750604:x
identity

identity_1

identity_2ИҐage/StatefulPartitionedCallҐ age_task/StatefulPartitionedCallҐ!eth_task1/StatefulPartitionedCallҐ!eth_task2/StatefulPartitionedCallҐ!ethnicity/StatefulPartitionedCallҐgender/StatefulPartitionedCallҐ$gender_task1/StatefulPartitionedCallҐ$gender_task2/StatefulPartitionedCallҐlayer1/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallт
layer1/StatefulPartitionedCallStatefulPartitionedCallinput_14layer1_750545layer1_750547*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€//*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_749850Ё
layer2/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_749829ќ
layer3/PartitionedCallPartitionedCalllayer2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€РB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_749863Б
layer4/StatefulPartitionedCallStatefulPartitionedCalllayer3/PartitionedCall:output:0layer4_750552layer4_750554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_749876К
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_750557layer5_750559*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_749893К
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_750562layer6_750564*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_749910Ґ
$gender_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0gender_task1_750567gender_task1_750569*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task1_layer_call_and_return_conditional_losses_749927Ц
!eth_task1/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0eth_task1_750572eth_task1_750574*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task1_layer_call_and_return_conditional_losses_749944І
$gender_task2/StatefulPartitionedCallStatefulPartitionedCall-gender_task1/StatefulPartitionedCall:output:0gender_task2_750577gender_task2_750579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_gender_task2_layer_call_and_return_conditional_losses_749961Щ
!eth_task2/StatefulPartitionedCallStatefulPartitionedCall*eth_task1/StatefulPartitionedCall:output:0eth_task2_750582eth_task2_750584*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_eth_task2_layer_call_and_return_conditional_losses_749978Т
 age_task/StatefulPartitionedCallStatefulPartitionedCall'layer6/StatefulPartitionedCall:output:0age_task_750587age_task_750589*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_age_task_layer_call_and_return_conditional_losses_749995П
gender/StatefulPartitionedCallStatefulPartitionedCall-gender_task2/StatefulPartitionedCall:output:0gender_750592gender_750594*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_gender_layer_call_and_return_conditional_losses_750012Ш
!ethnicity/StatefulPartitionedCallStatefulPartitionedCall*eth_task2/StatefulPartitionedCall:output:0ethnicity_750597ethnicity_750599*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_ethnicity_layer_call_and_return_conditional_losses_750029€
age/StatefulPartitionedCallStatefulPartitionedCall)age_task/StatefulPartitionedCall:output:0
age_750602
age_750604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€x*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_age_layer_call_and_return_conditional_losses_750045s
IdentityIdentity$age/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x{

Identity_1Identity*ethnicity/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€x

Identity_2Identity'gender/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ж
NoOpNoOp^age/StatefulPartitionedCall!^age_task/StatefulPartitionedCall"^eth_task1/StatefulPartitionedCall"^eth_task2/StatefulPartitionedCall"^ethnicity/StatefulPartitionedCall^gender/StatefulPartitionedCall%^gender_task1/StatefulPartitionedCall%^gender_task2/StatefulPartitionedCall^layer1/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€00: : : : : : : : : : : : : : : : : : : : : : : : 2:
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
:€€€€€€€€€00
"
_user_specified_name
input_14
ё|
ж
__inference__traced_save_751459
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

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: К#
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*≥"
value©"B¶"DB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHш
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*Э
valueУBРDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B б
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_layer5_kernel_read_readvariableop&savev2_layer5_bias_read_readvariableop(savev2_layer6_kernel_read_readvariableop&savev2_layer6_bias_read_readvariableop+savev2_eth_task1_kernel_read_readvariableop)savev2_eth_task1_bias_read_readvariableop.savev2_gender_task1_kernel_read_readvariableop,savev2_gender_task1_bias_read_readvariableop*savev2_age_task_kernel_read_readvariableop(savev2_age_task_bias_read_readvariableop+savev2_eth_task2_kernel_read_readvariableop)savev2_eth_task2_bias_read_readvariableop.savev2_gender_task2_kernel_read_readvariableop,savev2_gender_task2_bias_read_readvariableop%savev2_age_kernel_read_readvariableop#savev2_age_bias_read_readvariableop+savev2_ethnicity_kernel_read_readvariableop)savev2_ethnicity_bias_read_readvariableop(savev2_gender_kernel_read_readvariableop&savev2_gender_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop4savev2_rmsprop_layer1_kernel_rms_read_readvariableop2savev2_rmsprop_layer1_bias_rms_read_readvariableop4savev2_rmsprop_layer4_kernel_rms_read_readvariableop2savev2_rmsprop_layer4_bias_rms_read_readvariableop4savev2_rmsprop_layer5_kernel_rms_read_readvariableop2savev2_rmsprop_layer5_bias_rms_read_readvariableop4savev2_rmsprop_layer6_kernel_rms_read_readvariableop2savev2_rmsprop_layer6_bias_rms_read_readvariableop7savev2_rmsprop_eth_task1_kernel_rms_read_readvariableop5savev2_rmsprop_eth_task1_bias_rms_read_readvariableop:savev2_rmsprop_gender_task1_kernel_rms_read_readvariableop8savev2_rmsprop_gender_task1_bias_rms_read_readvariableop6savev2_rmsprop_age_task_kernel_rms_read_readvariableop4savev2_rmsprop_age_task_bias_rms_read_readvariableop7savev2_rmsprop_eth_task2_kernel_rms_read_readvariableop5savev2_rmsprop_eth_task2_bias_rms_read_readvariableop:savev2_rmsprop_gender_task2_kernel_rms_read_readvariableop8savev2_rmsprop_gender_task2_bias_rms_read_readvariableop1savev2_rmsprop_age_kernel_rms_read_readvariableop/savev2_rmsprop_age_bias_rms_read_readvariableop7savev2_rmsprop_ethnicity_kernel_rms_read_readvariableop5savev2_rmsprop_ethnicity_bias_rms_read_readvariableop4savev2_rmsprop_gender_kernel_rms_read_readvariableop2savev2_rmsprop_gender_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *R
dtypesH
F2D	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*щ
_input_shapesз
д: :::	РB@:@:	@А:А:
АА:А:
АА:А:
АА:А:
АА:А:
АА:А:	А@:@:	Аx:x:	А::@:: : : : : : : : : : : : : : : : : : : :::	РB@:@:	@А:А:
АА:А:
АА:А:
АА:А:
АА:А:
АА:А:	А@:@:	Аx:x:	А::@:: 2(
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
:	РB@: 

_output_shapes
:@:%!

_output_shapes
:	@А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&	"
 
_output_shapes
:
АА:!


_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:%!

_output_shapes
:	Аx: 

_output_shapes
:x:%!

_output_shapes
:	А: 
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
:	РB@: /

_output_shapes
:@:%0!

_output_shapes
:	@А:!1

_output_shapes	
:А:&2"
 
_output_shapes
:
АА:!3

_output_shapes	
:А:&4"
 
_output_shapes
:
АА:!5

_output_shapes	
:А:&6"
 
_output_shapes
:
АА:!7

_output_shapes	
:А:&8"
 
_output_shapes
:
АА:!9

_output_shapes	
:А:&:"
 
_output_shapes
:
АА:!;

_output_shapes	
:А:%<!

_output_shapes
:	А@: =

_output_shapes
:@:%>!

_output_shapes
:	Аx: ?

_output_shapes
:x:%@!

_output_shapes
:	А: A
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
: "џL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ђ
serving_defaultЧ
E
input_149
serving_default_input_14:0€€€€€€€€€007
age0
StatefulPartitionedCall:0€€€€€€€€€x=
	ethnicity0
StatefulPartitionedCall:1€€€€€€€€€:
gender0
StatefulPartitionedCall:2€€€€€€€€€tensorflow/serving/predict:Кч
п
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
ї

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
•
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
•
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

Vkernel
Wbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

fkernel
gbias
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

nkernel
obias
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

vkernel
wbias
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ

~kernel
bias
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
ч
	Жiter

Зdecay
Иlearning_rate
Йmomentum
Кrho
rmsю
rms€
.rmsА
/rmsБ
6rmsВ
7rmsГ
>rmsД
?rmsЕ
FrmsЖ
GrmsЗ
NrmsИ
OrmsЙ
VrmsК
WrmsЛ
^rmsМ
_rmsН
frmsО
grmsП
nrmsР
ormsС
vrmsТ
wrmsУ
~rmsФ
rmsХ"
	optimizer
)
Л0"
trackable_tuple_wrapper
÷
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
÷
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
ѕ
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ж2г
&__inference_Logan_layer_call_fn_750109
&__inference_Logan_layer_call_fn_750673
&__inference_Logan_layer_call_fn_750730
&__inference_Logan_layer_call_fn_750474ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“2ѕ
A__inference_Logan_layer_call_and_return_conditional_losses_750822
A__inference_Logan_layer_call_and_return_conditional_losses_750914
A__inference_Logan_layer_call_and_return_conditional_losses_750542
A__inference_Logan_layer_call_and_return_conditional_losses_750610ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЌB 
!__inference__wrapped_model_749820input_14"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
-
Сserving_default"
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
≤
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_layer1_layer_call_fn_750982Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_layer1_layer_call_and_return_conditional_losses_750993Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_layer2_layer_call_fn_750998Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_layer2_layer_call_and_return_conditional_losses_751003Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
†layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_layer3_layer_call_fn_751008Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_layer3_layer_call_and_return_conditional_losses_751014Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 :	РB@2layer4/kernel
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
≤
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_layer4_layer_call_fn_751023Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_layer4_layer_call_and_return_conditional_losses_751034Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 :	@А2layer5/kernel
:А2layer5/bias
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
≤
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_layer5_layer_call_fn_751043Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_layer5_layer_call_and_return_conditional_losses_751054Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
!:
АА2layer6/kernel
:А2layer6/bias
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
≤
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_layer6_layer_call_fn_751063Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_layer6_layer_call_and_return_conditional_losses_751074Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
$:"
АА2eth_task1/kernel
:А2eth_task1/bias
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
≤
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
‘2—
*__inference_eth_task1_layer_call_fn_751083Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_eth_task1_layer_call_and_return_conditional_losses_751094Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
':%
АА2gender_task1/kernel
 :А2gender_task1/bias
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
≤
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
„2‘
-__inference_gender_task1_layer_call_fn_751103Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_gender_task1_layer_call_and_return_conditional_losses_751114Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
#:!
АА2age_task/kernel
:А2age_task/bias
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
≤
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_age_task_layer_call_fn_751123Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_age_task_layer_call_and_return_conditional_losses_751134Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
$:"
АА2eth_task2/kernel
:А2eth_task2/bias
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
≤
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
‘2—
*__inference_eth_task2_layer_call_fn_751143Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_eth_task2_layer_call_and_return_conditional_losses_751154Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
&:$	А@2gender_task2/kernel
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
≤
ƒnon_trainable_variables
≈layers
∆metrics
 «layer_regularization_losses
»layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
„2‘
-__inference_gender_task2_layer_call_fn_751163Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
т2п
H__inference_gender_task2_layer_call_and_return_conditional_losses_751174Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
:	Аx2
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
≤
…non_trainable_variables
 layers
Ћmetrics
 ћlayer_regularization_losses
Ќlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ќ2Ћ
$__inference_age_layer_call_fn_751183Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
й2ж
?__inference_age_layer_call_and_return_conditional_losses_751193Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
#:!	А2ethnicity/kernel
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
≤
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
‘2—
*__inference_ethnicity_layer_call_fn_751202Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
п2м
E__inference_ethnicity_layer_call_and_return_conditional_losses_751213Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
Є
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
—2ќ
'__inference_gender_layer_call_fn_751222Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_gender_layer_call_and_return_conditional_losses_751233Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
О
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
Ў0
ў1
Џ2
џ3
№4
Ё5
ё6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ћB…
$__inference_signature_wrapper_750973input_14"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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

яtotal

аcount
б	variables
в	keras_api"
_tf_keras_metric
R

гtotal

дcount
е	variables
ж	keras_api"
_tf_keras_metric
R

зtotal

иcount
й	variables
к	keras_api"
_tf_keras_metric
R

лtotal

мcount
н	variables
о	keras_api"
_tf_keras_metric
c

пtotal

рcount
с
_fn_kwargs
т	variables
у	keras_api"
_tf_keras_metric
c

фtotal

хcount
ц
_fn_kwargs
ч	variables
ш	keras_api"
_tf_keras_metric
c

щtotal

ъcount
ы
_fn_kwargs
ь	variables
э	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
я0
а1"
trackable_list_wrapper
.
б	variables"
_generic_user_object
:  (2total
:  (2count
0
г0
д1"
trackable_list_wrapper
.
е	variables"
_generic_user_object
:  (2total
:  (2count
0
з0
и1"
trackable_list_wrapper
.
й	variables"
_generic_user_object
:  (2total
:  (2count
0
л0
м1"
trackable_list_wrapper
.
н	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
п0
р1"
trackable_list_wrapper
.
т	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ф0
х1"
trackable_list_wrapper
.
ч	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
щ0
ъ1"
trackable_list_wrapper
.
ь	variables"
_generic_user_object
1:/2RMSprop/layer1/kernel/rms
#:!2RMSprop/layer1/bias/rms
*:(	РB@2RMSprop/layer4/kernel/rms
#:!@2RMSprop/layer4/bias/rms
*:(	@А2RMSprop/layer5/kernel/rms
$:"А2RMSprop/layer5/bias/rms
+:)
АА2RMSprop/layer6/kernel/rms
$:"А2RMSprop/layer6/bias/rms
.:,
АА2RMSprop/eth_task1/kernel/rms
':%А2RMSprop/eth_task1/bias/rms
1:/
АА2RMSprop/gender_task1/kernel/rms
*:(А2RMSprop/gender_task1/bias/rms
-:+
АА2RMSprop/age_task/kernel/rms
&:$А2RMSprop/age_task/bias/rms
.:,
АА2RMSprop/eth_task2/kernel/rms
':%А2RMSprop/eth_task2/bias/rms
0:.	А@2RMSprop/gender_task2/kernel/rms
):'@2RMSprop/gender_task2/bias/rms
':%	Аx2RMSprop/age/kernel/rms
 :x2RMSprop/age/bias/rms
-:+	А2RMSprop/ethnicity/kernel/rms
&:$2RMSprop/ethnicity/bias/rms
):'@2RMSprop/gender/kernel/rms
#:!2RMSprop/gender/bias/rmsП
A__inference_Logan_layer_call_and_return_conditional_losses_750542…./67>?NOFGfg^_VW~vwnoAҐ>
7Ґ4
*К'
input_14€€€€€€€€€00
p 

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€x
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ П
A__inference_Logan_layer_call_and_return_conditional_losses_750610…./67>?NOFGfg^_VW~vwnoAҐ>
7Ґ4
*К'
input_14€€€€€€€€€00
p

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€x
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ Н
A__inference_Logan_layer_call_and_return_conditional_losses_750822«./67>?NOFGfg^_VW~vwno?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p 

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€x
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ Н
A__inference_Logan_layer_call_and_return_conditional_losses_750914«./67>?NOFGfg^_VW~vwno?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p

 
™ "jҐg
`Ъ]
К
0/0€€€€€€€€€x
К
0/1€€€€€€€€€
К
0/2€€€€€€€€€
Ъ д
&__inference_Logan_layer_call_fn_750109є./67>?NOFGfg^_VW~vwnoAҐ>
7Ґ4
*К'
input_14€€€€€€€€€00
p 

 
™ "ZЪW
К
0€€€€€€€€€x
К
1€€€€€€€€€
К
2€€€€€€€€€д
&__inference_Logan_layer_call_fn_750474є./67>?NOFGfg^_VW~vwnoAҐ>
7Ґ4
*К'
input_14€€€€€€€€€00
p

 
™ "ZЪW
К
0€€€€€€€€€x
К
1€€€€€€€€€
К
2€€€€€€€€€в
&__inference_Logan_layer_call_fn_750673Ј./67>?NOFGfg^_VW~vwno?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p 

 
™ "ZЪW
К
0€€€€€€€€€x
К
1€€€€€€€€€
К
2€€€€€€€€€в
&__inference_Logan_layer_call_fn_750730Ј./67>?NOFGfg^_VW~vwno?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€00
p

 
™ "ZЪW
К
0€€€€€€€€€x
К
1€€€€€€€€€
К
2€€€€€€€€€Ж
!__inference__wrapped_model_749820а./67>?NOFGfg^_VW~vwno9Ґ6
/Ґ,
*К'
input_14€€€€€€€€€00
™ "И™Д
$
ageК
age€€€€€€€€€x
0
	ethnicity#К 
	ethnicity€€€€€€€€€
*
gender К
gender€€€€€€€€€†
?__inference_age_layer_call_and_return_conditional_losses_751193]no0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€x
Ъ x
$__inference_age_layer_call_fn_751183Pno0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€x¶
D__inference_age_task_layer_call_and_return_conditional_losses_751134^VW0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ~
)__inference_age_task_layer_call_fn_751123QVW0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_eth_task1_layer_call_and_return_conditional_losses_751094^FG0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_eth_task1_layer_call_fn_751083QFG0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_eth_task2_layer_call_and_return_conditional_losses_751154^^_0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_eth_task2_layer_call_fn_751143Q^_0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А¶
E__inference_ethnicity_layer_call_and_return_conditional_losses_751213]vw0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ ~
*__inference_ethnicity_layer_call_fn_751202Pvw0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ґ
B__inference_gender_layer_call_and_return_conditional_losses_751233\~/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_gender_layer_call_fn_751222O~/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€™
H__inference_gender_task1_layer_call_and_return_conditional_losses_751114^NO0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ В
-__inference_gender_task1_layer_call_fn_751103QNO0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А©
H__inference_gender_task2_layer_call_and_return_conditional_losses_751174]fg0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€@
Ъ Б
-__inference_gender_task2_layer_call_fn_751163Pfg0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€@≤
B__inference_layer1_layer_call_and_return_conditional_losses_750993l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ "-Ґ*
#К 
0€€€€€€€€€//
Ъ К
'__inference_layer1_layer_call_fn_750982_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€00
™ " К€€€€€€€€€//е
B__inference_layer2_layer_call_and_return_conditional_losses_751003ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ љ
'__inference_layer2_layer_call_fn_750998СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€І
B__inference_layer3_layer_call_and_return_conditional_losses_751014a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€РB
Ъ 
'__inference_layer3_layer_call_fn_751008T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
™ "К€€€€€€€€€РB£
B__inference_layer4_layer_call_and_return_conditional_losses_751034]./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€РB
™ "%Ґ"
К
0€€€€€€€€€@
Ъ {
'__inference_layer4_layer_call_fn_751023P./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€РB
™ "К€€€€€€€€€@£
B__inference_layer5_layer_call_and_return_conditional_losses_751054]67/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ {
'__inference_layer5_layer_call_fn_751043P67/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€А§
B__inference_layer6_layer_call_and_return_conditional_losses_751074^>?0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
'__inference_layer6_layer_call_fn_751063Q>?0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€АХ
$__inference_signature_wrapper_750973м./67>?NOFGfg^_VW~vwnoEҐB
Ґ 
;™8
6
input_14*К'
input_14€€€€€€€€€00"И™Д
$
ageК
age€€€€€€€€€x
0
	ethnicity#К 
	ethnicity€€€€€€€€€
*
gender К
gender€€€€€€€€€