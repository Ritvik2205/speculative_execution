.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
cmp esi, -52
inc rax
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
xor di, 78
btc ax, dx
jmp .bb_0.1
.bb_0.1:
add al, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and al, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
cmovl rdi, rdi
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
