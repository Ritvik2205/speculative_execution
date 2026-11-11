.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rbx, rbx
xor dx, di
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 37
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and bl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and dil, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
not al
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
bt rdi, rbx
and bl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
test al, -59
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 42
cmovp edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
