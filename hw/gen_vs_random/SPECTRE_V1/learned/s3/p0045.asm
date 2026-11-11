.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, ax
cmp rax, -72548874
cmp dl, cl
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi]
movsx cx, bl
cmovno rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
sbb dil, cl
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
