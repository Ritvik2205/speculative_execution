.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 7
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
bts rdi, 130
test edx, -372470678
test al, 91
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
or dl, al
xor dil, -3
test al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test rax, 1978892575
or cx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
