.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
and dl, cl
and sil, -56
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
test eax, 158941032
jmp .bb_0.1
.bb_0.1:
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
jmp .bb_0.2
.bb_0.2:
xor al, -89
test sil, -55
test al, 66
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
