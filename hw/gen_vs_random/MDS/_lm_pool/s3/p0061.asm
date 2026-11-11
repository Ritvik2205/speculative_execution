.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and bl, al
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
or dil, bl
test eax, 343548072
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
test al, cl
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
