.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, ebx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
test ax, 30932
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rdi, 72
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
test sil, dl
bts rdi, 130
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
not dil
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and dl, 48 # instrumentation
cmovz rbx, rcx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
and bl, 3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
