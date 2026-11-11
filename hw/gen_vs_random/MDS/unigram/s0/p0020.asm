.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 34 # instrumentation
cmovno eax, ebx
and bl, -15 # instrumentation
cmovnp bx, bx
and rdi, 96
and dil, dil
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
cmovno rbx, rdx
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
cmovnb ax, cx
test rdx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
bt di, si
bts rbx, 56
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
