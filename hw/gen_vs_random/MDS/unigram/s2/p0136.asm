.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 88
and dl, -1 # instrumentation
cmovnb cx, ax
and dx, 86
bt edx, edx
bt rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
cmovl rax, rdx
btr rax, rax
and dl, 60 # instrumentation
cmovno ecx, ecx
xor cl, 93
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or dil, -57
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
and ax, 30884
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and cl, 95 # instrumentation
cmovns rdi, rdi
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
