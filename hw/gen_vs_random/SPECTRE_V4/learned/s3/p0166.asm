.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
sub cl, 18
test dil, -58
test cl, -31
cmp al, 116
add dil, cl
lea cx, qword ptr [rdx]
and sil, dl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cmp cl, dl
sub al, -84
adc sil, -31
xchg ebx, edx
sbb dil, 54
xchg rax, rdi
xor al, -6
mov dl, -124
cmp al, 98
sub al, -128
sbb eax, 426996540
sub al, 96
cmp al, 116
dec cl
and bl, dil
sbb bl, -98
cmp cl, -80
mov dl, sil
add cl, sil
and dil, -23
and al, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
