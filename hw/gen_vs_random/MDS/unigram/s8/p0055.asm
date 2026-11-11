.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 88
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and al, 38 # instrumentation
cmovbe ebx, eax
xor al, 9
and sil, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
or al, dil
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
bt rcx, rsi
xor al, -4
or ax, -6817
and dl, 72 # instrumentation
cmovz edi, eax
and bl, 49 # instrumentation
cmovbe rsi, rdx
test rax, 1000448998
and dl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
