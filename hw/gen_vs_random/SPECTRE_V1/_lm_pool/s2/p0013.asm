.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 40
add al, -65
sbb cl, al
xor bl, dl
test bl, -8
xor bl, -38
add dil, dl
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and dil, -93
sbb edx, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
