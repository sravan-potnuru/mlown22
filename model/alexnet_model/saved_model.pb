Ни
йЊ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Њ
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
executor_typestring И
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
 И"serve*2.6.42v2.6.3-62-g9ef160463d18БС

Д
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
:`*
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
:`*
dtype0
Е
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`А*!
shared_nameconv2d_61/kernel
~
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*'
_output_shapes
:`А*
dtype0
u
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_61/bias
n
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_62/kernel

$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_62/bias
n
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_63/kernel

$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_63/bias
n
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_64/kernel

$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_64/bias
n
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes	
:А*
dtype0
{
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А * 
shared_namedense_15/kernel
t
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes
:	А *
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
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
Ц
Adamax/conv2d_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`**
shared_nameAdamax/conv2d_60/kernel/m
П
-Adamax/conv2d_60/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_60/kernel/m*&
_output_shapes
:`*
dtype0
Ж
Adamax/conv2d_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameAdamax/conv2d_60/bias/m

+Adamax/conv2d_60/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_60/bias/m*
_output_shapes
:`*
dtype0
Ч
Adamax/conv2d_61/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`А**
shared_nameAdamax/conv2d_61/kernel/m
Р
-Adamax/conv2d_61/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_61/kernel/m*'
_output_shapes
:`А*
dtype0
З
Adamax/conv2d_61/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_61/bias/m
А
+Adamax/conv2d_61/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_61/bias/m*
_output_shapes	
:А*
dtype0
Ш
Adamax/conv2d_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdamax/conv2d_62/kernel/m
С
-Adamax/conv2d_62/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_62/kernel/m*(
_output_shapes
:АА*
dtype0
З
Adamax/conv2d_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_62/bias/m
А
+Adamax/conv2d_62/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_62/bias/m*
_output_shapes	
:А*
dtype0
Ш
Adamax/conv2d_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdamax/conv2d_63/kernel/m
С
-Adamax/conv2d_63/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_63/kernel/m*(
_output_shapes
:АА*
dtype0
З
Adamax/conv2d_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_63/bias/m
А
+Adamax/conv2d_63/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_63/bias/m*
_output_shapes	
:А*
dtype0
Ш
Adamax/conv2d_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdamax/conv2d_64/kernel/m
С
-Adamax/conv2d_64/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_64/kernel/m*(
_output_shapes
:АА*
dtype0
З
Adamax/conv2d_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_64/bias/m
А
+Adamax/conv2d_64/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_64/bias/m*
_output_shapes	
:А*
dtype0
Н
Adamax/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *)
shared_nameAdamax/dense_15/kernel/m
Ж
,Adamax/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_15/kernel/m*
_output_shapes
:	А *
dtype0
Д
Adamax/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_15/bias/m
}
*Adamax/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_15/bias/m*
_output_shapes
:*
dtype0
Ц
Adamax/conv2d_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`**
shared_nameAdamax/conv2d_60/kernel/v
П
-Adamax/conv2d_60/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_60/kernel/v*&
_output_shapes
:`*
dtype0
Ж
Adamax/conv2d_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*(
shared_nameAdamax/conv2d_60/bias/v

+Adamax/conv2d_60/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_60/bias/v*
_output_shapes
:`*
dtype0
Ч
Adamax/conv2d_61/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`А**
shared_nameAdamax/conv2d_61/kernel/v
Р
-Adamax/conv2d_61/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_61/kernel/v*'
_output_shapes
:`А*
dtype0
З
Adamax/conv2d_61/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_61/bias/v
А
+Adamax/conv2d_61/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_61/bias/v*
_output_shapes	
:А*
dtype0
Ш
Adamax/conv2d_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdamax/conv2d_62/kernel/v
С
-Adamax/conv2d_62/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_62/kernel/v*(
_output_shapes
:АА*
dtype0
З
Adamax/conv2d_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_62/bias/v
А
+Adamax/conv2d_62/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_62/bias/v*
_output_shapes	
:А*
dtype0
Ш
Adamax/conv2d_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdamax/conv2d_63/kernel/v
С
-Adamax/conv2d_63/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_63/kernel/v*(
_output_shapes
:АА*
dtype0
З
Adamax/conv2d_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_63/bias/v
А
+Adamax/conv2d_63/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_63/bias/v*
_output_shapes	
:А*
dtype0
Ш
Adamax/conv2d_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА**
shared_nameAdamax/conv2d_64/kernel/v
С
-Adamax/conv2d_64/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_64/kernel/v*(
_output_shapes
:АА*
dtype0
З
Adamax/conv2d_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_nameAdamax/conv2d_64/bias/v
А
+Adamax/conv2d_64/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_64/bias/v*
_output_shapes	
:А*
dtype0
Н
Adamax/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А *)
shared_nameAdamax/dense_15/kernel/v
Ж
,Adamax/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_15/kernel/v*
_output_shapes
:	А *
dtype0
Д
Adamax/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdamax/dense_15/bias/v
}
*Adamax/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_15/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
УL
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ќK
valueƒKBЅK BЇK
П
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer_with_weights-5

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api
R
;	variables
<trainable_variables
=regularization_losses
>	keras_api
h

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
∞
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratemТmУmФmХ%mЦ&mЧ+mШ,mЩ1mЪ2mЫ?mЬ@mЭvЮvЯv†v°%vҐ&v£+v§,v•1v¶2vІ?v®@v©
V
0
1
2
3
%4
&5
+6
,7
18
29
?10
@11
V
0
1
2
3
%4
&5
+6
,7
18
29
?10
@11
 
≠
	variables
trainable_variables
Jlayer_metrics

Klayers
Llayer_regularization_losses
Mnon_trainable_variables
Nmetrics
regularization_losses
 
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
	variables
trainable_variables
Olayer_metrics

Players
Qlayer_regularization_losses
Rnon_trainable_variables
Smetrics
regularization_losses
 
 
 
≠
	variables
trainable_variables
Tlayer_metrics

Ulayers
Vlayer_regularization_losses
Wnon_trainable_variables
Xmetrics
regularization_losses
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
	variables
trainable_variables
Ylayer_metrics

Zlayers
[layer_regularization_losses
\non_trainable_variables
]metrics
regularization_losses
 
 
 
≠
!	variables
"trainable_variables
^layer_metrics

_layers
`layer_regularization_losses
anon_trainable_variables
bmetrics
#regularization_losses
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
≠
'	variables
(trainable_variables
clayer_metrics

dlayers
elayer_regularization_losses
fnon_trainable_variables
gmetrics
)regularization_losses
\Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
≠
-	variables
.trainable_variables
hlayer_metrics

ilayers
jlayer_regularization_losses
knon_trainable_variables
lmetrics
/regularization_losses
\Z
VARIABLE_VALUEconv2d_64/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_64/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
≠
3	variables
4trainable_variables
mlayer_metrics

nlayers
olayer_regularization_losses
pnon_trainable_variables
qmetrics
5regularization_losses
 
 
 
≠
7	variables
8trainable_variables
rlayer_metrics

slayers
tlayer_regularization_losses
unon_trainable_variables
vmetrics
9regularization_losses
 
 
 
≠
;	variables
<trainable_variables
wlayer_metrics

xlayers
ylayer_regularization_losses
znon_trainable_variables
{metrics
=regularization_losses
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
@1

?0
@1
 
Ѓ
A	variables
Btrainable_variables
|layer_metrics

}layers
~layer_regularization_losses
non_trainable_variables
Аmetrics
Cregularization_losses
JH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
F
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
 
 

Б0
В1
Г2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Дtotal

Еcount
Ж	variables
З	keras_api
I

Иtotal

Йcount
К
_fn_kwargs
Л	variables
М	keras_api
I

Нtotal

Оcount
П
_fn_kwargs
Р	variables
С	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Д0
Е1

Ж	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

И0
Й1

Л	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

Н0
О1

Р	variables
Б
VARIABLE_VALUEAdamax/conv2d_60/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_60/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_61/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_61/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_62/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_62/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_63/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_63/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_64/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_64/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdamax/dense_15/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_15/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_60/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_60/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_61/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_61/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_62/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_62/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_63/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_63/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Б
VARIABLE_VALUEAdamax/conv2d_64/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/conv2d_64/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdamax/dense_15/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdamax/dense_15/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ц
serving_default_conv2d_60_inputPlaceholder*1
_output_shapes
:€€€€€€€€€аа*
dtype0*&
shape:€€€€€€€€€аа
°
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_60_inputconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasdense_15/kerneldense_15/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *-
f(R&
$__inference_signature_wrapper_440836
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
≤
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp-Adamax/conv2d_60/kernel/m/Read/ReadVariableOp+Adamax/conv2d_60/bias/m/Read/ReadVariableOp-Adamax/conv2d_61/kernel/m/Read/ReadVariableOp+Adamax/conv2d_61/bias/m/Read/ReadVariableOp-Adamax/conv2d_62/kernel/m/Read/ReadVariableOp+Adamax/conv2d_62/bias/m/Read/ReadVariableOp-Adamax/conv2d_63/kernel/m/Read/ReadVariableOp+Adamax/conv2d_63/bias/m/Read/ReadVariableOp-Adamax/conv2d_64/kernel/m/Read/ReadVariableOp+Adamax/conv2d_64/bias/m/Read/ReadVariableOp,Adamax/dense_15/kernel/m/Read/ReadVariableOp*Adamax/dense_15/bias/m/Read/ReadVariableOp-Adamax/conv2d_60/kernel/v/Read/ReadVariableOp+Adamax/conv2d_60/bias/v/Read/ReadVariableOp-Adamax/conv2d_61/kernel/v/Read/ReadVariableOp+Adamax/conv2d_61/bias/v/Read/ReadVariableOp-Adamax/conv2d_62/kernel/v/Read/ReadVariableOp+Adamax/conv2d_62/bias/v/Read/ReadVariableOp-Adamax/conv2d_63/kernel/v/Read/ReadVariableOp+Adamax/conv2d_63/bias/v/Read/ReadVariableOp-Adamax/conv2d_64/kernel/v/Read/ReadVariableOp+Adamax/conv2d_64/bias/v/Read/ReadVariableOp,Adamax/dense_15/kernel/v/Read/ReadVariableOp*Adamax/dense_15/bias/v/Read/ReadVariableOpConst*<
Tin5
321	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *(
f#R!
__inference__traced_save_441351
Б

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_60/kernelconv2d_60/biasconv2d_61/kernelconv2d_61/biasconv2d_62/kernelconv2d_62/biasconv2d_63/kernelconv2d_63/biasconv2d_64/kernelconv2d_64/biasdense_15/kerneldense_15/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1total_2count_2Adamax/conv2d_60/kernel/mAdamax/conv2d_60/bias/mAdamax/conv2d_61/kernel/mAdamax/conv2d_61/bias/mAdamax/conv2d_62/kernel/mAdamax/conv2d_62/bias/mAdamax/conv2d_63/kernel/mAdamax/conv2d_63/bias/mAdamax/conv2d_64/kernel/mAdamax/conv2d_64/bias/mAdamax/dense_15/kernel/mAdamax/dense_15/bias/mAdamax/conv2d_60/kernel/vAdamax/conv2d_60/bias/vAdamax/conv2d_61/kernel/vAdamax/conv2d_61/bias/vAdamax/conv2d_62/kernel/vAdamax/conv2d_62/bias/vAdamax/conv2d_63/kernel/vAdamax/conv2d_63/bias/vAdamax/conv2d_64/kernel/vAdamax/conv2d_64/bias/vAdamax/dense_15/kernel/vAdamax/dense_15/bias/v*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *+
f&R$
"__inference__traced_restore_441502√≈
ё
M
1__inference_max_pooling2d_36_layer_call_fn_441021

inputs
identityт
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
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_4402972
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
к
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_441167

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„0
Й
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440490

inputs*
conv2d_60_440373:`
conv2d_60_440375:`+
conv2d_61_440396:`А
conv2d_61_440398:	А,
conv2d_62_440419:АА
conv2d_62_440421:	А,
conv2d_63_440436:АА
conv2d_63_440438:	А,
conv2d_64_440453:АА
conv2d_64_440455:	А"
dense_15_440484:	А 
dense_15_440486:
identityИҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ!conv2d_64/StatefulPartitionedCallҐ dense_15/StatefulPartitionedCall¶
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_440373conv2d_60_440375*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_4403722#
!conv2d_60/StatefulPartitionedCallЭ
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_4403822"
 max_pooling2d_36/PartitionedCall 
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_61_440396conv2d_61_440398*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_4403952#
!conv2d_61/StatefulPartitionedCallЮ
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_4404052"
 max_pooling2d_37/PartitionedCall 
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_62_440419conv2d_62_440421*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_4404182#
!conv2d_62/StatefulPartitionedCallЋ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_440436conv2d_63_440438*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_4404352#
!conv2d_63/StatefulPartitionedCallЋ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_440453conv2d_64_440455*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_4404522#
!conv2d_64/StatefulPartitionedCallЮ
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_4404622"
 max_pooling2d_38/PartitionedCallГ
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_4404702
flatten_12/PartitionedCallґ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_15_440484dense_15_440486*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4404832"
 dense_15/StatefulPartitionedCallД
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity•
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
„0
Й
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440667

inputs*
conv2d_60_440632:`
conv2d_60_440634:`+
conv2d_61_440638:`А
conv2d_61_440640:	А,
conv2d_62_440644:АА
conv2d_62_440646:	А,
conv2d_63_440649:АА
conv2d_63_440651:	А,
conv2d_64_440654:АА
conv2d_64_440656:	А"
dense_15_440661:	А 
dense_15_440663:
identityИҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ!conv2d_64/StatefulPartitionedCallҐ dense_15/StatefulPartitionedCall¶
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_440632conv2d_60_440634*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_4403722#
!conv2d_60/StatefulPartitionedCallЭ
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_4403822"
 max_pooling2d_36/PartitionedCall 
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_61_440638conv2d_61_440640*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_4403952#
!conv2d_61/StatefulPartitionedCallЮ
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_4404052"
 max_pooling2d_37/PartitionedCall 
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_62_440644conv2d_62_440646*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_4404182#
!conv2d_62/StatefulPartitionedCallЋ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_440649conv2d_63_440651*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_4404352#
!conv2d_63/StatefulPartitionedCallЋ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_440654conv2d_64_440656*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_4404522#
!conv2d_64/StatefulPartitionedCallЮ
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_4404622"
 max_pooling2d_38/PartitionedCallГ
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_4404702
flatten_12/PartitionedCallґ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_15_440661dense_15_440663*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4404832"
 dense_15/StatefulPartitionedCallД
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity•
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ч
Б
E__inference_conv2d_62_layer_call_and_return_conditional_losses_440418

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
ф
А
E__inference_conv2d_61_layer_call_and_return_conditional_losses_441056

inputs9
conv2d_readvariableop_resource:`А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
•
°
*__inference_conv2d_61_layer_call_fn_441045

inputs"
unknown:`А
	unknown_0:	А
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_4403952
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€`: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
щ
Ч
)__inference_dense_15_layer_call_fn_441176

inputs
unknown:	А 
	unknown_0:
identityИҐStatefulPartitionedCallщ
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
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4404832
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_440297

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ф
А
E__inference_conv2d_61_layer_call_and_return_conditional_losses_440395

inputs9
conv2d_readvariableop_resource:`А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€`: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€`
 
_user_specified_nameinputs
®
Ґ
*__inference_conv2d_62_layer_call_fn_441085

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_4404182
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
њ
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_440382

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€`*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€66`:W S
/
_output_shapes
:€€€€€€€€€66`
 
_user_specified_nameinputs
х
M
1__inference_max_pooling2d_37_layer_call_fn_441066

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_4404052
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ў
G
+__inference_flatten_12_layer_call_fn_441161

inputs
identity 
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_4404702
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„
Ё
$__inference_signature_wrapper_440836
conv2d_60_input!
unknown:`
	unknown_0:`$
	unknown_1:`А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А 

unknown_10:
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В **
f%R#
!__inference__wrapped_model_4402882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€аа
)
_user_specified_nameconv2d_60_input
√
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_441156

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
о
ё
.__inference_model_AlexNet_layer_call_fn_440865

inputs!
unknown:`
	unknown_0:`$
	unknown_1:`А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А 

unknown_10:
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_4404902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ч
Б
E__inference_conv2d_62_layer_call_and_return_conditional_losses_441096

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
®
Ґ
*__inference_conv2d_63_layer_call_fn_441105

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_4404352
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling2d_38_layer_call_fn_441141

inputs
identityт
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
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_4403412
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ч
Б
E__inference_conv2d_63_layer_call_and_return_conditional_losses_440435

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
•
Я
*__inference_conv2d_60_layer_call_fn_441005

inputs!
unknown:`
	unknown_0:`
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_4403722
StatefulPartitionedCallГ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€66`2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
РZ
•
!__inference__wrapped_model_440288
conv2d_60_inputP
6model_alexnet_conv2d_60_conv2d_readvariableop_resource:`E
7model_alexnet_conv2d_60_biasadd_readvariableop_resource:`Q
6model_alexnet_conv2d_61_conv2d_readvariableop_resource:`АF
7model_alexnet_conv2d_61_biasadd_readvariableop_resource:	АR
6model_alexnet_conv2d_62_conv2d_readvariableop_resource:ААF
7model_alexnet_conv2d_62_biasadd_readvariableop_resource:	АR
6model_alexnet_conv2d_63_conv2d_readvariableop_resource:ААF
7model_alexnet_conv2d_63_biasadd_readvariableop_resource:	АR
6model_alexnet_conv2d_64_conv2d_readvariableop_resource:ААF
7model_alexnet_conv2d_64_biasadd_readvariableop_resource:	АH
5model_alexnet_dense_15_matmul_readvariableop_resource:	А D
6model_alexnet_dense_15_biasadd_readvariableop_resource:
identityИҐ.model_AlexNet/conv2d_60/BiasAdd/ReadVariableOpҐ-model_AlexNet/conv2d_60/Conv2D/ReadVariableOpҐ.model_AlexNet/conv2d_61/BiasAdd/ReadVariableOpҐ-model_AlexNet/conv2d_61/Conv2D/ReadVariableOpҐ.model_AlexNet/conv2d_62/BiasAdd/ReadVariableOpҐ-model_AlexNet/conv2d_62/Conv2D/ReadVariableOpҐ.model_AlexNet/conv2d_63/BiasAdd/ReadVariableOpҐ-model_AlexNet/conv2d_63/Conv2D/ReadVariableOpҐ.model_AlexNet/conv2d_64/BiasAdd/ReadVariableOpҐ-model_AlexNet/conv2d_64/Conv2D/ReadVariableOpҐ-model_AlexNet/dense_15/BiasAdd/ReadVariableOpҐ,model_AlexNet/dense_15/MatMul/ReadVariableOpЁ
-model_AlexNet/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6model_alexnet_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02/
-model_AlexNet/conv2d_60/Conv2D/ReadVariableOpх
model_AlexNet/conv2d_60/Conv2DConv2Dconv2d_60_input5model_AlexNet/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`*
paddingVALID*
strides
2 
model_AlexNet/conv2d_60/Conv2D‘
.model_AlexNet/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7model_alexnet_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype020
.model_AlexNet/conv2d_60/BiasAdd/ReadVariableOpи
model_AlexNet/conv2d_60/BiasAddBiasAdd'model_AlexNet/conv2d_60/Conv2D:output:06model_AlexNet/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`2!
model_AlexNet/conv2d_60/BiasAdd®
model_AlexNet/conv2d_60/ReluRelu(model_AlexNet/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
model_AlexNet/conv2d_60/Reluф
&model_AlexNet/max_pooling2d_36/MaxPoolMaxPool*model_AlexNet/conv2d_60/Relu:activations:0*/
_output_shapes
:€€€€€€€€€`*
ksize
*
paddingVALID*
strides
2(
&model_AlexNet/max_pooling2d_36/MaxPoolё
-model_AlexNet/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6model_alexnet_conv2d_61_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02/
-model_AlexNet/conv2d_61/Conv2D/ReadVariableOpЦ
model_AlexNet/conv2d_61/Conv2DConv2D/model_AlexNet/max_pooling2d_36/MaxPool:output:05model_AlexNet/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2 
model_AlexNet/conv2d_61/Conv2D’
.model_AlexNet/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7model_alexnet_conv2d_61_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.model_AlexNet/conv2d_61/BiasAdd/ReadVariableOpй
model_AlexNet/conv2d_61/BiasAddBiasAdd'model_AlexNet/conv2d_61/Conv2D:output:06model_AlexNet/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2!
model_AlexNet/conv2d_61/BiasAdd©
model_AlexNet/conv2d_61/ReluRelu(model_AlexNet/conv2d_61/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model_AlexNet/conv2d_61/Reluх
&model_AlexNet/max_pooling2d_37/MaxPoolMaxPool*model_AlexNet/conv2d_61/Relu:activations:0*0
_output_shapes
:€€€€€€€€€

А*
ksize
*
paddingVALID*
strides
2(
&model_AlexNet/max_pooling2d_37/MaxPoolя
-model_AlexNet/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6model_alexnet_conv2d_62_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-model_AlexNet/conv2d_62/Conv2D/ReadVariableOpХ
model_AlexNet/conv2d_62/Conv2DConv2D/model_AlexNet/max_pooling2d_37/MaxPool:output:05model_AlexNet/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2 
model_AlexNet/conv2d_62/Conv2D’
.model_AlexNet/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7model_alexnet_conv2d_62_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.model_AlexNet/conv2d_62/BiasAdd/ReadVariableOpй
model_AlexNet/conv2d_62/BiasAddBiasAdd'model_AlexNet/conv2d_62/Conv2D:output:06model_AlexNet/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2!
model_AlexNet/conv2d_62/BiasAdd©
model_AlexNet/conv2d_62/ReluRelu(model_AlexNet/conv2d_62/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
model_AlexNet/conv2d_62/Reluя
-model_AlexNet/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6model_alexnet_conv2d_63_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-model_AlexNet/conv2d_63/Conv2D/ReadVariableOpР
model_AlexNet/conv2d_63/Conv2DConv2D*model_AlexNet/conv2d_62/Relu:activations:05model_AlexNet/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2 
model_AlexNet/conv2d_63/Conv2D’
.model_AlexNet/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7model_alexnet_conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.model_AlexNet/conv2d_63/BiasAdd/ReadVariableOpй
model_AlexNet/conv2d_63/BiasAddBiasAdd'model_AlexNet/conv2d_63/Conv2D:output:06model_AlexNet/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2!
model_AlexNet/conv2d_63/BiasAdd©
model_AlexNet/conv2d_63/ReluRelu(model_AlexNet/conv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
model_AlexNet/conv2d_63/Reluя
-model_AlexNet/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6model_alexnet_conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02/
-model_AlexNet/conv2d_64/Conv2D/ReadVariableOpР
model_AlexNet/conv2d_64/Conv2DConv2D*model_AlexNet/conv2d_63/Relu:activations:05model_AlexNet/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2 
model_AlexNet/conv2d_64/Conv2D’
.model_AlexNet/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7model_alexnet_conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype020
.model_AlexNet/conv2d_64/BiasAdd/ReadVariableOpй
model_AlexNet/conv2d_64/BiasAddBiasAdd'model_AlexNet/conv2d_64/Conv2D:output:06model_AlexNet/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2!
model_AlexNet/conv2d_64/BiasAdd©
model_AlexNet/conv2d_64/ReluRelu(model_AlexNet/conv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
model_AlexNet/conv2d_64/Reluх
&model_AlexNet/max_pooling2d_38/MaxPoolMaxPool*model_AlexNet/conv2d_64/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2(
&model_AlexNet/max_pooling2d_38/MaxPoolС
model_AlexNet/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2 
model_AlexNet/flatten_12/Const№
 model_AlexNet/flatten_12/ReshapeReshape/model_AlexNet/max_pooling2d_38/MaxPool:output:0'model_AlexNet/flatten_12/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2"
 model_AlexNet/flatten_12/Reshape”
,model_AlexNet/dense_15/MatMul/ReadVariableOpReadVariableOp5model_alexnet_dense_15_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype02.
,model_AlexNet/dense_15/MatMul/ReadVariableOpџ
model_AlexNet/dense_15/MatMulMatMul)model_AlexNet/flatten_12/Reshape:output:04model_AlexNet/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_AlexNet/dense_15/MatMul—
-model_AlexNet/dense_15/BiasAdd/ReadVariableOpReadVariableOp6model_alexnet_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model_AlexNet/dense_15/BiasAdd/ReadVariableOpЁ
model_AlexNet/dense_15/BiasAddBiasAdd'model_AlexNet/dense_15/MatMul:product:05model_AlexNet/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2 
model_AlexNet/dense_15/BiasAdd¶
model_AlexNet/dense_15/SoftmaxSoftmax'model_AlexNet/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2 
model_AlexNet/dense_15/SoftmaxГ
IdentityIdentity(model_AlexNet/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityТ
NoOpNoOp/^model_AlexNet/conv2d_60/BiasAdd/ReadVariableOp.^model_AlexNet/conv2d_60/Conv2D/ReadVariableOp/^model_AlexNet/conv2d_61/BiasAdd/ReadVariableOp.^model_AlexNet/conv2d_61/Conv2D/ReadVariableOp/^model_AlexNet/conv2d_62/BiasAdd/ReadVariableOp.^model_AlexNet/conv2d_62/Conv2D/ReadVariableOp/^model_AlexNet/conv2d_63/BiasAdd/ReadVariableOp.^model_AlexNet/conv2d_63/Conv2D/ReadVariableOp/^model_AlexNet/conv2d_64/BiasAdd/ReadVariableOp.^model_AlexNet/conv2d_64/Conv2D/ReadVariableOp.^model_AlexNet/dense_15/BiasAdd/ReadVariableOp-^model_AlexNet/dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2`
.model_AlexNet/conv2d_60/BiasAdd/ReadVariableOp.model_AlexNet/conv2d_60/BiasAdd/ReadVariableOp2^
-model_AlexNet/conv2d_60/Conv2D/ReadVariableOp-model_AlexNet/conv2d_60/Conv2D/ReadVariableOp2`
.model_AlexNet/conv2d_61/BiasAdd/ReadVariableOp.model_AlexNet/conv2d_61/BiasAdd/ReadVariableOp2^
-model_AlexNet/conv2d_61/Conv2D/ReadVariableOp-model_AlexNet/conv2d_61/Conv2D/ReadVariableOp2`
.model_AlexNet/conv2d_62/BiasAdd/ReadVariableOp.model_AlexNet/conv2d_62/BiasAdd/ReadVariableOp2^
-model_AlexNet/conv2d_62/Conv2D/ReadVariableOp-model_AlexNet/conv2d_62/Conv2D/ReadVariableOp2`
.model_AlexNet/conv2d_63/BiasAdd/ReadVariableOp.model_AlexNet/conv2d_63/BiasAdd/ReadVariableOp2^
-model_AlexNet/conv2d_63/Conv2D/ReadVariableOp-model_AlexNet/conv2d_63/Conv2D/ReadVariableOp2`
.model_AlexNet/conv2d_64/BiasAdd/ReadVariableOp.model_AlexNet/conv2d_64/BiasAdd/ReadVariableOp2^
-model_AlexNet/conv2d_64/Conv2D/ReadVariableOp-model_AlexNet/conv2d_64/Conv2D/ReadVariableOp2^
-model_AlexNet/dense_15/BiasAdd/ReadVariableOp-model_AlexNet/dense_15/BiasAdd/ReadVariableOp2\
,model_AlexNet/dense_15/MatMul/ReadVariableOp,model_AlexNet/dense_15/MatMul/ReadVariableOp:b ^
1
_output_shapes
:€€€€€€€€€аа
)
_user_specified_nameconv2d_60_input
√
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_440462

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_441031

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
О
ц
D__inference_dense_15_layer_call_and_return_conditional_losses_441187

inputs1
matmul_readvariableop_resource:	А -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
ч
Б
E__inference_conv2d_63_layer_call_and_return_conditional_losses_441116

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
√
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_440405

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:€€€€€€€€€

А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
®
Ґ
*__inference_conv2d_64_layer_call_fn_441125

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_4404522
StatefulPartitionedCallД
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
°c
‘
__inference__traced_save_441351
file_prefix/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop8
4savev2_adamax_conv2d_60_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_60_bias_m_read_readvariableop8
4savev2_adamax_conv2d_61_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_61_bias_m_read_readvariableop8
4savev2_adamax_conv2d_62_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_62_bias_m_read_readvariableop8
4savev2_adamax_conv2d_63_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_63_bias_m_read_readvariableop8
4savev2_adamax_conv2d_64_kernel_m_read_readvariableop6
2savev2_adamax_conv2d_64_bias_m_read_readvariableop7
3savev2_adamax_dense_15_kernel_m_read_readvariableop5
1savev2_adamax_dense_15_bias_m_read_readvariableop8
4savev2_adamax_conv2d_60_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_60_bias_v_read_readvariableop8
4savev2_adamax_conv2d_61_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_61_bias_v_read_readvariableop8
4savev2_adamax_conv2d_62_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_62_bias_v_read_readvariableop8
4savev2_adamax_conv2d_63_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_63_bias_v_read_readvariableop8
4savev2_adamax_conv2d_64_kernel_v_read_readvariableop6
2savev2_adamax_conv2d_64_bias_v_read_readvariableop7
3savev2_adamax_dense_15_kernel_v_read_readvariableop5
1savev2_adamax_dense_15_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¶
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*Є
valueЃBЂ0B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesХ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop4savev2_adamax_conv2d_60_kernel_m_read_readvariableop2savev2_adamax_conv2d_60_bias_m_read_readvariableop4savev2_adamax_conv2d_61_kernel_m_read_readvariableop2savev2_adamax_conv2d_61_bias_m_read_readvariableop4savev2_adamax_conv2d_62_kernel_m_read_readvariableop2savev2_adamax_conv2d_62_bias_m_read_readvariableop4savev2_adamax_conv2d_63_kernel_m_read_readvariableop2savev2_adamax_conv2d_63_bias_m_read_readvariableop4savev2_adamax_conv2d_64_kernel_m_read_readvariableop2savev2_adamax_conv2d_64_bias_m_read_readvariableop3savev2_adamax_dense_15_kernel_m_read_readvariableop1savev2_adamax_dense_15_bias_m_read_readvariableop4savev2_adamax_conv2d_60_kernel_v_read_readvariableop2savev2_adamax_conv2d_60_bias_v_read_readvariableop4savev2_adamax_conv2d_61_kernel_v_read_readvariableop2savev2_adamax_conv2d_61_bias_v_read_readvariableop4savev2_adamax_conv2d_62_kernel_v_read_readvariableop2savev2_adamax_conv2d_62_bias_v_read_readvariableop4savev2_adamax_conv2d_63_kernel_v_read_readvariableop2savev2_adamax_conv2d_63_bias_v_read_readvariableop4savev2_adamax_conv2d_64_kernel_v_read_readvariableop2savev2_adamax_conv2d_64_bias_v_read_readvariableop3savev2_adamax_dense_15_kernel_v_read_readvariableop1savev2_adamax_dense_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
220	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*л
_input_shapesў
÷: :`:`:`А:А:АА:А:АА:А:АА:А:	А :: : : : : : : : : : : :`:`:`А:А:АА:А:АА:А:АА:А:	А ::`:`:`А:А:АА:А:АА:А:АА:А:	А :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:`: 

_output_shapes
:`:-)
'
_output_shapes
:`А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.	*
(
_output_shapes
:АА:!


_output_shapes	
:А:%!

_output_shapes
:	А : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:`: 

_output_shapes
:`:-)
'
_output_shapes
:`А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:. *
(
_output_shapes
:АА:!!

_output_shapes	
:А:%"!

_output_shapes
:	А : #

_output_shapes
::,$(
&
_output_shapes
:`: %

_output_shapes
:`:-&)
'
_output_shapes
:`А:!'

_output_shapes	
:А:.(*
(
_output_shapes
:АА:!)

_output_shapes	
:А:.**
(
_output_shapes
:АА:!+

_output_shapes	
:А:.,*
(
_output_shapes
:АА:!-

_output_shapes	
:А:%.!

_output_shapes
:	А : /

_output_shapes
::0

_output_shapes
: 
о
ё
.__inference_model_AlexNet_layer_call_fn_440894

inputs!
unknown:`
	unknown_0:`$
	unknown_1:`А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А 

unknown_10:
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_4406672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_441151

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_440341

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
р
ю
E__inference_conv2d_60_layer_call_and_return_conditional_losses_440372

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€66`2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
т0
Т
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440761
conv2d_60_input*
conv2d_60_440726:`
conv2d_60_440728:`+
conv2d_61_440732:`А
conv2d_61_440734:	А,
conv2d_62_440738:АА
conv2d_62_440740:	А,
conv2d_63_440743:АА
conv2d_63_440745:	А,
conv2d_64_440748:АА
conv2d_64_440750:	А"
dense_15_440755:	А 
dense_15_440757:
identityИҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ!conv2d_64/StatefulPartitionedCallҐ dense_15/StatefulPartitionedCallѓ
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_440726conv2d_60_440728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_4403722#
!conv2d_60/StatefulPartitionedCallЭ
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_4403822"
 max_pooling2d_36/PartitionedCall 
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_61_440732conv2d_61_440734*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_4403952#
!conv2d_61/StatefulPartitionedCallЮ
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_4404052"
 max_pooling2d_37/PartitionedCall 
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_62_440738conv2d_62_440740*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_4404182#
!conv2d_62/StatefulPartitionedCallЋ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_440743conv2d_63_440745*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_4404352#
!conv2d_63/StatefulPartitionedCallЋ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_440748conv2d_64_440750*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_4404522#
!conv2d_64/StatefulPartitionedCallЮ
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_4404622"
 max_pooling2d_38/PartitionedCallГ
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_4404702
flatten_12/PartitionedCallґ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_15_440755dense_15_440757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4404832"
 dense_15/StatefulPartitionedCallД
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity•
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€аа
)
_user_specified_nameconv2d_60_input
к
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_440470

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ё
M
1__inference_max_pooling2d_37_layer_call_fn_441061

inputs
identityт
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
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_4403192
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
√
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_441076

inputs
identityУ
MaxPoolMaxPoolinputs*0
_output_shapes
:€€€€€€€€€

А*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∞Ћ
и
"__inference__traced_restore_441502
file_prefix;
!assignvariableop_conv2d_60_kernel:`/
!assignvariableop_1_conv2d_60_bias:`>
#assignvariableop_2_conv2d_61_kernel:`А0
!assignvariableop_3_conv2d_61_bias:	А?
#assignvariableop_4_conv2d_62_kernel:АА0
!assignvariableop_5_conv2d_62_bias:	А?
#assignvariableop_6_conv2d_63_kernel:АА0
!assignvariableop_7_conv2d_63_bias:	А?
#assignvariableop_8_conv2d_64_kernel:АА0
!assignvariableop_9_conv2d_64_bias:	А6
#assignvariableop_10_dense_15_kernel:	А /
!assignvariableop_11_dense_15_bias:)
assignvariableop_12_adamax_iter:	 +
!assignvariableop_13_adamax_beta_1: +
!assignvariableop_14_adamax_beta_2: *
 assignvariableop_15_adamax_decay: 2
(assignvariableop_16_adamax_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: %
assignvariableop_21_total_2: %
assignvariableop_22_count_2: G
-assignvariableop_23_adamax_conv2d_60_kernel_m:`9
+assignvariableop_24_adamax_conv2d_60_bias_m:`H
-assignvariableop_25_adamax_conv2d_61_kernel_m:`А:
+assignvariableop_26_adamax_conv2d_61_bias_m:	АI
-assignvariableop_27_adamax_conv2d_62_kernel_m:АА:
+assignvariableop_28_adamax_conv2d_62_bias_m:	АI
-assignvariableop_29_adamax_conv2d_63_kernel_m:АА:
+assignvariableop_30_adamax_conv2d_63_bias_m:	АI
-assignvariableop_31_adamax_conv2d_64_kernel_m:АА:
+assignvariableop_32_adamax_conv2d_64_bias_m:	А?
,assignvariableop_33_adamax_dense_15_kernel_m:	А 8
*assignvariableop_34_adamax_dense_15_bias_m:G
-assignvariableop_35_adamax_conv2d_60_kernel_v:`9
+assignvariableop_36_adamax_conv2d_60_bias_v:`H
-assignvariableop_37_adamax_conv2d_61_kernel_v:`А:
+assignvariableop_38_adamax_conv2d_61_bias_v:	АI
-assignvariableop_39_adamax_conv2d_62_kernel_v:АА:
+assignvariableop_40_adamax_conv2d_62_bias_v:	АI
-assignvariableop_41_adamax_conv2d_63_kernel_v:АА:
+assignvariableop_42_adamax_conv2d_63_bias_v:	АI
-assignvariableop_43_adamax_conv2d_64_kernel_v:АА:
+assignvariableop_44_adamax_conv2d_64_bias_v:	А?
,assignvariableop_45_adamax_dense_15_kernel_v:	А 8
*assignvariableop_46_adamax_dense_15_bias_v:
identity_48ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ђ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*Є
valueЃBЂ0B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЮ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*÷
_output_shapes√
ј::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity†
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¶
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2®
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_61_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¶
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_61_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_63_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_63_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_64_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_64_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ђ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_15_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_15_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12І
AssignVariableOp_12AssignVariableOpassignvariableop_12_adamax_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13©
AssignVariableOp_13AssignVariableOp!assignvariableop_13_adamax_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14©
AssignVariableOp_14AssignVariableOp!assignvariableop_14_adamax_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15®
AssignVariableOp_15AssignVariableOp assignvariableop_15_adamax_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16∞
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adamax_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21£
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22£
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23µ
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adamax_conv2d_60_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≥
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adamax_conv2d_60_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25µ
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adamax_conv2d_61_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26≥
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adamax_conv2d_61_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27µ
AssignVariableOp_27AssignVariableOp-assignvariableop_27_adamax_conv2d_62_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28≥
AssignVariableOp_28AssignVariableOp+assignvariableop_28_adamax_conv2d_62_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29µ
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adamax_conv2d_63_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30≥
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adamax_conv2d_63_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31µ
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adamax_conv2d_64_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32≥
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adamax_conv2d_64_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33і
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adamax_dense_15_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34≤
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adamax_dense_15_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35µ
AssignVariableOp_35AssignVariableOp-assignvariableop_35_adamax_conv2d_60_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36≥
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adamax_conv2d_60_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37µ
AssignVariableOp_37AssignVariableOp-assignvariableop_37_adamax_conv2d_61_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38≥
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adamax_conv2d_61_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39µ
AssignVariableOp_39AssignVariableOp-assignvariableop_39_adamax_conv2d_62_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40≥
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adamax_conv2d_62_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41µ
AssignVariableOp_41AssignVariableOp-assignvariableop_41_adamax_conv2d_63_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42≥
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adamax_conv2d_63_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43µ
AssignVariableOp_43AssignVariableOp-assignvariableop_43_adamax_conv2d_64_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44≥
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adamax_conv2d_64_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45і
AssignVariableOp_45AssignVariableOp,assignvariableop_45_adamax_dense_15_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46≤
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adamax_dense_15_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_469
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpи
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_47f
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_48–
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Й
з
.__inference_model_AlexNet_layer_call_fn_440517
conv2d_60_input!
unknown:`
	unknown_0:`$
	unknown_1:`А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А 

unknown_10:
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_4404902
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€аа
)
_user_specified_nameconv2d_60_input
зF
ф	
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440945

inputsB
(conv2d_60_conv2d_readvariableop_resource:`7
)conv2d_60_biasadd_readvariableop_resource:`C
(conv2d_61_conv2d_readvariableop_resource:`А8
)conv2d_61_biasadd_readvariableop_resource:	АD
(conv2d_62_conv2d_readvariableop_resource:АА8
)conv2d_62_biasadd_readvariableop_resource:	АD
(conv2d_63_conv2d_readvariableop_resource:АА8
)conv2d_63_biasadd_readvariableop_resource:	АD
(conv2d_64_conv2d_readvariableop_resource:АА8
)conv2d_64_biasadd_readvariableop_resource:	А:
'dense_15_matmul_readvariableop_resource:	А 6
(dense_15_biasadd_readvariableop_resource:
identityИҐ conv2d_60/BiasAdd/ReadVariableOpҐconv2d_60/Conv2D/ReadVariableOpҐ conv2d_61/BiasAdd/ReadVariableOpҐconv2d_61/Conv2D/ReadVariableOpҐ conv2d_62/BiasAdd/ReadVariableOpҐconv2d_62/Conv2D/ReadVariableOpҐ conv2d_63/BiasAdd/ReadVariableOpҐconv2d_63/Conv2D/ReadVariableOpҐ conv2d_64/BiasAdd/ReadVariableOpҐconv2d_64/Conv2D/ReadVariableOpҐdense_15/BiasAdd/ReadVariableOpҐdense_15/MatMul/ReadVariableOp≥
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02!
conv2d_60/Conv2D/ReadVariableOp¬
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`*
paddingVALID*
strides
2
conv2d_60/Conv2D™
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp∞
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
conv2d_60/BiasAdd~
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
conv2d_60/Relu 
max_pooling2d_36/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:€€€€€€€€€`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_36/MaxPoolі
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02!
conv2d_61/Conv2D/ReadVariableOpё
conv2d_61/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_61/Conv2DЂ
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp±
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_61/BiasAdd
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_61/ReluЋ
max_pooling2d_37/MaxPoolMaxPoolconv2d_61/Relu:activations:0*0
_output_shapes
:€€€€€€€€€

А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPoolµ
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_62/Conv2D/ReadVariableOpЁ
conv2d_62/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
conv2d_62/Conv2DЂ
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp±
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_62/BiasAdd
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_62/Reluµ
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_63/Conv2D/ReadVariableOpЎ
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
conv2d_63/Conv2DЂ
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp±
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_63/BiasAdd
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_63/Reluµ
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_64/Conv2D/ReadVariableOpЎ
conv2d_64/Conv2DConv2Dconv2d_63/Relu:activations:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
conv2d_64/Conv2DЂ
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp±
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_64/BiasAdd
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_64/ReluЋ
max_pooling2d_38/MaxPoolMaxPoolconv2d_64/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPoolu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_12/Const§
flatten_12/ReshapeReshape!max_pooling2d_38/MaxPool:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2
flatten_12/Reshape©
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype02 
dense_15/MatMul/ReadVariableOp£
dense_15/MatMulMatMulflatten_12/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_15/MatMulІ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp•
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_15/Softmaxu
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityк
NoOpNoOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
њ
h
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_441036

inputs
identityТ
MaxPoolMaxPoolinputs*/
_output_shapes
:€€€€€€€€€`*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€66`:W S
/
_output_shapes
:€€€€€€€€€66`
 
_user_specified_nameinputs
т0
Т
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440799
conv2d_60_input*
conv2d_60_440764:`
conv2d_60_440766:`+
conv2d_61_440770:`А
conv2d_61_440772:	А,
conv2d_62_440776:АА
conv2d_62_440778:	А,
conv2d_63_440781:АА
conv2d_63_440783:	А,
conv2d_64_440786:АА
conv2d_64_440788:	А"
dense_15_440793:	А 
dense_15_440795:
identityИҐ!conv2d_60/StatefulPartitionedCallҐ!conv2d_61/StatefulPartitionedCallҐ!conv2d_62/StatefulPartitionedCallҐ!conv2d_63/StatefulPartitionedCallҐ!conv2d_64/StatefulPartitionedCallҐ dense_15/StatefulPartitionedCallѓ
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_440764conv2d_60_440766*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€66`*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_60_layer_call_and_return_conditional_losses_4403722#
!conv2d_60/StatefulPartitionedCallЭ
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_4403822"
 max_pooling2d_36/PartitionedCall 
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_61_440770conv2d_61_440772*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_61_layer_call_and_return_conditional_losses_4403952#
!conv2d_61/StatefulPartitionedCallЮ
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_4404052"
 max_pooling2d_37/PartitionedCall 
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_62_440776conv2d_62_440778*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_62_layer_call_and_return_conditional_losses_4404182#
!conv2d_62/StatefulPartitionedCallЋ
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0conv2d_63_440781conv2d_63_440783*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_63_layer_call_and_return_conditional_losses_4404352#
!conv2d_63/StatefulPartitionedCallЋ
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0conv2d_64_440786conv2d_64_440788*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€

А*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *N
fIRG
E__inference_conv2d_64_layer_call_and_return_conditional_losses_4404522#
!conv2d_64/StatefulPartitionedCallЮ
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_4404622"
 max_pooling2d_38/PartitionedCallГ
flatten_12/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_4404702
flatten_12/PartitionedCallґ
 dense_15/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0dense_15_440793dense_15_440795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2*0,1J 8В *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_4404832"
 dense_15/StatefulPartitionedCallД
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity•
NoOpNoOp"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€аа
)
_user_specified_nameconv2d_60_input
ђ
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_441071

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ђ
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_440319

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
зF
ф	
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440996

inputsB
(conv2d_60_conv2d_readvariableop_resource:`7
)conv2d_60_biasadd_readvariableop_resource:`C
(conv2d_61_conv2d_readvariableop_resource:`А8
)conv2d_61_biasadd_readvariableop_resource:	АD
(conv2d_62_conv2d_readvariableop_resource:АА8
)conv2d_62_biasadd_readvariableop_resource:	АD
(conv2d_63_conv2d_readvariableop_resource:АА8
)conv2d_63_biasadd_readvariableop_resource:	АD
(conv2d_64_conv2d_readvariableop_resource:АА8
)conv2d_64_biasadd_readvariableop_resource:	А:
'dense_15_matmul_readvariableop_resource:	А 6
(dense_15_biasadd_readvariableop_resource:
identityИҐ conv2d_60/BiasAdd/ReadVariableOpҐconv2d_60/Conv2D/ReadVariableOpҐ conv2d_61/BiasAdd/ReadVariableOpҐconv2d_61/Conv2D/ReadVariableOpҐ conv2d_62/BiasAdd/ReadVariableOpҐconv2d_62/Conv2D/ReadVariableOpҐ conv2d_63/BiasAdd/ReadVariableOpҐconv2d_63/Conv2D/ReadVariableOpҐ conv2d_64/BiasAdd/ReadVariableOpҐconv2d_64/Conv2D/ReadVariableOpҐdense_15/BiasAdd/ReadVariableOpҐdense_15/MatMul/ReadVariableOp≥
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02!
conv2d_60/Conv2D/ReadVariableOp¬
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`*
paddingVALID*
strides
2
conv2d_60/Conv2D™
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp∞
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
conv2d_60/BiasAdd~
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
conv2d_60/Relu 
max_pooling2d_36/MaxPoolMaxPoolconv2d_60/Relu:activations:0*/
_output_shapes
:€€€€€€€€€`*
ksize
*
paddingVALID*
strides
2
max_pooling2d_36/MaxPoolі
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*'
_output_shapes
:`А*
dtype02!
conv2d_61/Conv2D/ReadVariableOpё
conv2d_61/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingVALID*
strides
2
conv2d_61/Conv2DЂ
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp±
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_61/BiasAdd
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
conv2d_61/ReluЋ
max_pooling2d_37/MaxPoolMaxPoolconv2d_61/Relu:activations:0*0
_output_shapes
:€€€€€€€€€

А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_37/MaxPoolµ
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_62/Conv2D/ReadVariableOpЁ
conv2d_62/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
conv2d_62/Conv2DЂ
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp±
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_62/BiasAdd
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_62/Reluµ
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_63/Conv2D/ReadVariableOpЎ
conv2d_63/Conv2DConv2Dconv2d_62/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
conv2d_63/Conv2DЂ
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp±
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_63/BiasAdd
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_63/Reluµ
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_64/Conv2D/ReadVariableOpЎ
conv2d_64/Conv2DConv2Dconv2d_63/Relu:activations:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
conv2d_64/Conv2DЂ
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp±
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_64/BiasAdd
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
conv2d_64/ReluЋ
max_pooling2d_38/MaxPoolMaxPoolconv2d_64/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
max_pooling2d_38/MaxPoolu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_12/Const§
flatten_12/ReshapeReshape!max_pooling2d_38/MaxPool:output:0flatten_12/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А 2
flatten_12/Reshape©
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	А *
dtype02 
dense_15/MatMul/ReadVariableOp£
dense_15/MatMulMatMulflatten_12/Reshape:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_15/MatMulІ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp•
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_15/Softmaxu
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityк
NoOpNoOp!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 2D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ч
Б
E__inference_conv2d_64_layer_call_and_return_conditional_losses_441136

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
ч
Б
E__inference_conv2d_64_layer_call_and_return_conditional_losses_440452

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
х
M
1__inference_max_pooling2d_38_layer_call_fn_441146

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_4404622
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
О
ц
D__inference_dense_15_layer_call_and_return_conditional_losses_440483

inputs1
matmul_readvariableop_resource:	А -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А 
 
_user_specified_nameinputs
с
M
1__inference_max_pooling2d_36_layer_call_fn_441026

inputs
identity„
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€`* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2*0,1J 8В *U
fPRN
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_4403822
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€66`:W S
/
_output_shapes
:€€€€€€€€€66`
 
_user_specified_nameinputs
р
ю
E__inference_conv2d_60_layer_call_and_return_conditional_losses_441016

inputs8
conv2d_readvariableop_resource:`-
biasadd_readvariableop_resource:`
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:`*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`*
paddingVALID*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€66`2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€66`2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€66`2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Й
з
.__inference_model_AlexNet_layer_call_fn_440723
conv2d_60_input!
unknown:`
	unknown_0:`$
	unknown_1:`А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	А 

unknown_10:
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2*0,1J 8В *R
fMRK
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_4406672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€аа: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€аа
)
_user_specified_nameconv2d_60_input"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≈
serving_default±
U
conv2d_60_inputB
!serving_default_conv2d_60_input:0€€€€€€€€€аа<
dense_150
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:°Ѕ
З
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer_with_weights-5

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
™_default_save_signature
Ђ__call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_sequential
љ

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
	variables
trainable_variables
regularization_losses
	keras_api
ѓ__call__
+∞&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
±__call__
+≤&call_and_return_all_conditional_losses"
_tf_keras_layer
І
!	variables
"trainable_variables
#regularization_losses
$	keras_api
≥__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
Ј__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
І
7	variables
8trainable_variables
9regularization_losses
:	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_layer
І
;	variables
<trainable_variables
=regularization_losses
>	keras_api
љ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

?kernel
@bias
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Eiter

Fbeta_1

Gbeta_2
	Hdecay
Ilearning_ratemТmУmФmХ%mЦ&mЧ+mШ,mЩ1mЪ2mЫ?mЬ@mЭvЮvЯv†v°%vҐ&v£+v§,v•1v¶2vІ?v®@v©"
	optimizer
v
0
1
2
3
%4
&5
+6
,7
18
29
?10
@11"
trackable_list_wrapper
v
0
1
2
3
%4
&5
+6
,7
18
29
?10
@11"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
	variables
trainable_variables
Jlayer_metrics

Klayers
Llayer_regularization_losses
Mnon_trainable_variables
Nmetrics
regularization_losses
Ђ__call__
™_default_save_signature
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
-
Ѕserving_default"
signature_map
*:(`2conv2d_60/kernel
:`2conv2d_60/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
	variables
trainable_variables
Olayer_metrics

Players
Qlayer_regularization_losses
Rnon_trainable_variables
Smetrics
regularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
	variables
trainable_variables
Tlayer_metrics

Ulayers
Vlayer_regularization_losses
Wnon_trainable_variables
Xmetrics
regularization_losses
ѓ__call__
+∞&call_and_return_all_conditional_losses
'∞"call_and_return_conditional_losses"
_generic_user_object
+:)`А2conv2d_61/kernel
:А2conv2d_61/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
	variables
trainable_variables
Ylayer_metrics

Zlayers
[layer_regularization_losses
\non_trainable_variables
]metrics
regularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
!	variables
"trainable_variables
^layer_metrics

_layers
`layer_regularization_losses
anon_trainable_variables
bmetrics
#regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_62/kernel
:А2conv2d_62/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
'	variables
(trainable_variables
clayer_metrics

dlayers
elayer_regularization_losses
fnon_trainable_variables
gmetrics
)regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_63/kernel
:А2conv2d_63/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
-	variables
.trainable_variables
hlayer_metrics

ilayers
jlayer_regularization_losses
knon_trainable_variables
lmetrics
/regularization_losses
Ј__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_64/kernel
:А2conv2d_64/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
3	variables
4trainable_variables
mlayer_metrics

nlayers
olayer_regularization_losses
pnon_trainable_variables
qmetrics
5regularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
7	variables
8trainable_variables
rlayer_metrics

slayers
tlayer_regularization_losses
unon_trainable_variables
vmetrics
9regularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
;	variables
<trainable_variables
wlayer_metrics

xlayers
ylayer_regularization_losses
znon_trainable_variables
{metrics
=regularization_losses
љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
": 	А 2dense_15/kernel
:2dense_15/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
±
A	variables
Btrainable_variables
|layer_metrics

}layers
~layer_regularization_losses
non_trainable_variables
Аmetrics
Cregularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
 "
trackable_dict_wrapper
f
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
9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
Б0
В1
Г2"
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
R

Дtotal

Еcount
Ж	variables
З	keras_api"
_tf_keras_metric
c

Иtotal

Йcount
К
_fn_kwargs
Л	variables
М	keras_api"
_tf_keras_metric
c

Нtotal

Оcount
П
_fn_kwargs
Р	variables
С	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Д0
Е1"
trackable_list_wrapper
.
Ж	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
И0
Й1"
trackable_list_wrapper
.
Л	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Н0
О1"
trackable_list_wrapper
.
Р	variables"
_generic_user_object
1:/`2Adamax/conv2d_60/kernel/m
#:!`2Adamax/conv2d_60/bias/m
2:0`А2Adamax/conv2d_61/kernel/m
$:"А2Adamax/conv2d_61/bias/m
3:1АА2Adamax/conv2d_62/kernel/m
$:"А2Adamax/conv2d_62/bias/m
3:1АА2Adamax/conv2d_63/kernel/m
$:"А2Adamax/conv2d_63/bias/m
3:1АА2Adamax/conv2d_64/kernel/m
$:"А2Adamax/conv2d_64/bias/m
):'	А 2Adamax/dense_15/kernel/m
": 2Adamax/dense_15/bias/m
1:/`2Adamax/conv2d_60/kernel/v
#:!`2Adamax/conv2d_60/bias/v
2:0`А2Adamax/conv2d_61/kernel/v
$:"А2Adamax/conv2d_61/bias/v
3:1АА2Adamax/conv2d_62/kernel/v
$:"А2Adamax/conv2d_62/bias/v
3:1АА2Adamax/conv2d_63/kernel/v
$:"А2Adamax/conv2d_63/bias/v
3:1АА2Adamax/conv2d_64/kernel/v
$:"А2Adamax/conv2d_64/bias/v
):'	А 2Adamax/dense_15/kernel/v
": 2Adamax/dense_15/bias/v
‘B—
!__inference__wrapped_model_440288conv2d_60_input"Ш
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
Ж2Г
.__inference_model_AlexNet_layer_call_fn_440517
.__inference_model_AlexNet_layer_call_fn_440865
.__inference_model_AlexNet_layer_call_fn_440894
.__inference_model_AlexNet_layer_call_fn_440723ј
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
т2п
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440945
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440996
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440761
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440799ј
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
‘2—
*__inference_conv2d_60_layer_call_fn_441005Ґ
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
E__inference_conv2d_60_layer_call_and_return_conditional_losses_441016Ґ
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
О2Л
1__inference_max_pooling2d_36_layer_call_fn_441021
1__inference_max_pooling2d_36_layer_call_fn_441026Ґ
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
ƒ2Ѕ
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_441031
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_441036Ґ
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
‘2—
*__inference_conv2d_61_layer_call_fn_441045Ґ
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
E__inference_conv2d_61_layer_call_and_return_conditional_losses_441056Ґ
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
О2Л
1__inference_max_pooling2d_37_layer_call_fn_441061
1__inference_max_pooling2d_37_layer_call_fn_441066Ґ
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
ƒ2Ѕ
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_441071
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_441076Ґ
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
‘2—
*__inference_conv2d_62_layer_call_fn_441085Ґ
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
E__inference_conv2d_62_layer_call_and_return_conditional_losses_441096Ґ
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
‘2—
*__inference_conv2d_63_layer_call_fn_441105Ґ
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
E__inference_conv2d_63_layer_call_and_return_conditional_losses_441116Ґ
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
‘2—
*__inference_conv2d_64_layer_call_fn_441125Ґ
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
E__inference_conv2d_64_layer_call_and_return_conditional_losses_441136Ґ
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
О2Л
1__inference_max_pooling2d_38_layer_call_fn_441141
1__inference_max_pooling2d_38_layer_call_fn_441146Ґ
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
ƒ2Ѕ
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_441151
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_441156Ґ
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
’2“
+__inference_flatten_12_layer_call_fn_441161Ґ
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
р2н
F__inference_flatten_12_layer_call_and_return_conditional_losses_441167Ґ
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
”2–
)__inference_dense_15_layer_call_fn_441176Ґ
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
D__inference_dense_15_layer_call_and_return_conditional_losses_441187Ґ
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
”B–
$__inference_signature_wrapper_440836conv2d_60_input"Ф
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
 ≠
!__inference__wrapped_model_440288З%&+,12?@BҐ?
8Ґ5
3К0
conv2d_60_input€€€€€€€€€аа
™ "3™0
.
dense_15"К
dense_15€€€€€€€€€Ј
E__inference_conv2d_60_layer_call_and_return_conditional_losses_441016n9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "-Ґ*
#К 
0€€€€€€€€€66`
Ъ П
*__inference_conv2d_60_layer_call_fn_441005a9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ " К€€€€€€€€€66`ґ
E__inference_conv2d_61_layer_call_and_return_conditional_losses_441056m7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€`
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
*__inference_conv2d_61_layer_call_fn_441045`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€`
™ "!К€€€€€€€€€АЈ
E__inference_conv2d_62_layer_call_and_return_conditional_losses_441096n%&8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ ".Ґ+
$К!
0€€€€€€€€€

А
Ъ П
*__inference_conv2d_62_layer_call_fn_441085a%&8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "!К€€€€€€€€€

АЈ
E__inference_conv2d_63_layer_call_and_return_conditional_losses_441116n+,8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ ".Ґ+
$К!
0€€€€€€€€€

А
Ъ П
*__inference_conv2d_63_layer_call_fn_441105a+,8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "!К€€€€€€€€€

АЈ
E__inference_conv2d_64_layer_call_and_return_conditional_losses_441136n128Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ ".Ґ+
$К!
0€€€€€€€€€

А
Ъ П
*__inference_conv2d_64_layer_call_fn_441125a128Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "!К€€€€€€€€€

А•
D__inference_dense_15_layer_call_and_return_conditional_losses_441187]?@0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А 
™ "%Ґ"
К
0€€€€€€€€€
Ъ }
)__inference_dense_15_layer_call_fn_441176P?@0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А 
™ "К€€€€€€€€€ђ
F__inference_flatten_12_layer_call_and_return_conditional_losses_441167b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А 
Ъ Д
+__inference_flatten_12_layer_call_fn_441161U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€А п
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_441031ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Є
L__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_441036h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€66`
™ "-Ґ*
#К 
0€€€€€€€€€`
Ъ «
1__inference_max_pooling2d_36_layer_call_fn_441021СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Р
1__inference_max_pooling2d_36_layer_call_fn_441026[7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€66`
™ " К€€€€€€€€€`п
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_441071ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ї
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_441076j8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€

А
Ъ «
1__inference_max_pooling2d_37_layer_call_fn_441061СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Т
1__inference_max_pooling2d_37_layer_call_fn_441066]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€

Ап
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_441151ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ї
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_441156j8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ «
1__inference_max_pooling2d_38_layer_call_fn_441141СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Т
1__inference_max_pooling2d_38_layer_call_fn_441146]8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "!К€€€€€€€€€Аѕ
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440761Б%&+,12?@JҐG
@Ґ=
3К0
conv2d_60_input€€€€€€€€€аа
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ѕ
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440799Б%&+,12?@JҐG
@Ґ=
3К0
conv2d_60_input€€€€€€€€€аа
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≈
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440945x%&+,12?@AҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≈
I__inference_model_AlexNet_layer_call_and_return_conditional_losses_440996x%&+,12?@AҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ¶
.__inference_model_AlexNet_layer_call_fn_440517t%&+,12?@JҐG
@Ґ=
3К0
conv2d_60_input€€€€€€€€€аа
p 

 
™ "К€€€€€€€€€¶
.__inference_model_AlexNet_layer_call_fn_440723t%&+,12?@JҐG
@Ґ=
3К0
conv2d_60_input€€€€€€€€€аа
p

 
™ "К€€€€€€€€€Э
.__inference_model_AlexNet_layer_call_fn_440865k%&+,12?@AҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ "К€€€€€€€€€Э
.__inference_model_AlexNet_layer_call_fn_440894k%&+,12?@AҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ "К€€€€€€€€€√
$__inference_signature_wrapper_440836Ъ%&+,12?@UҐR
Ґ 
K™H
F
conv2d_60_input3К0
conv2d_60_input€€€€€€€€€аа"3™0
.
dense_15"К
dense_15€€€€€€€€€