.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
test dl, bl
sbb cl, 127
sub ax, cx
sbb al, -52
adc edx, -125
dec dil
test bl, 78
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
add dl, al
test al, 52
and bl, sil
and bl, -60
adc al, dil
sbb cl, sil
neg al
sbb dl, 75
adc al, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
or di, 122
adc bl, sil
cmp al, sil
cmp al, 105
adc bl, -20
test bl, 78
xor cl, -73
adc al, al
xchg ebx, ecx
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
