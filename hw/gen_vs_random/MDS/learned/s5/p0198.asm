.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 30
or cl, dil
or dl, bl
btr ax, si
or al, -61
jmp .bb_0.1
.bb_0.1:
or al, -61
test al, sil
xor cl, 15
xor edi, 84
xor dil, dl
test al, 127
test edx, -1561252782
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
