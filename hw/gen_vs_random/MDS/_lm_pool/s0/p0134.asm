.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
or rsi, 93
test bl, cl
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
btr ax, dx
or edi, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and dil, al
cmovle cx, si
or cl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
