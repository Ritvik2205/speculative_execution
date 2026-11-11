.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 32
or bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
btr bx, 13
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
bt esi, 55
cmovnl rbx, rbx
cmovo cx, di
bt ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
not di
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
xor di, -116
and dl, -33 # instrumentation
cmovns rbx, rbx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
