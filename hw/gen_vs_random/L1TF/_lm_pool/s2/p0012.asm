.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
add al, 117
add cl, al
xor bl, sil
test bl, 12
xor bl, -5
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 68
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and dil, -22
sbb edx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
