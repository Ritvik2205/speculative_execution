.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
lea si, qword ptr [rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and dil, -82
and dil, -22
jmp .bb_0.1
.bb_0.1:
imul ebx, ecx
cmp dl, -93
lea esi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 81
cmp ax, -31327
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
