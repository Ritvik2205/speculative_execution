.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and ecx, -104
and rdx, 35
jmp .bb_0.1
.bb_0.1:
test bl, 65
and ax, 13090
xor cl, 98
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], di
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
or bx, 78
or al, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
