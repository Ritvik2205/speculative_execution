.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
mov cl, sil
sub dil, -28
adc sil, -112
sub al, cl
xor di, si
add cl, al
sub cl, -73
xor rdx, 106
sub dl, cl
mov al, bl
adc bl, dl
xor cx, -80
add al, -29
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and cl, 32
sbb cl, -69
mov sil, cl
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 90
adc cl, -85
adc cl, bl
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
