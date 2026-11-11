.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1213318393
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
xchg edi, eax
cmp al, dil
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
sub dil, bl
cmp ax, 28568
or al, -83
mov al, cl
adc sil, bl
xor ax, -22861
add bl, cl
sbb al, 31
mov dil, 47
cmp al, -116
and sil, -84
dec sil
sbb al, 102
sbb dil, sil
adc dil, dl
adc dil, -15
cmp edi, 3
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test bl, 78
add dl, bl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
inc dl
test cl, -52
mov dil, 77
cmp rdi, 28
add bl, 54
mov sil, cl
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
