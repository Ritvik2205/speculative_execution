.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
xchg edi, edx
add cl, dl
and sil, -84
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
cmp al, -122
adc al, bl
cmp dil, cl
and al, -118
xchg dil, dl
add dil, al
and cl, dil
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
cmp dil, dl
bt dx, bx
or bl, al
or cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
