.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
test dl, 25
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 38
and dx, 81
cmovz ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
xor ecx, 26
bt eax, edi
and rbx, 6
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
bts rdi, 37
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
cmovns rdx, rsi
and dl, -7
cmovo rdi, rsi
and cl, 122 # instrumentation
cmovnb rcx, rsi
and al, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
