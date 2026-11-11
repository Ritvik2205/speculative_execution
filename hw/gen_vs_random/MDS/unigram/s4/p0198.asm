.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
bt ax, bx
cmovno edx, esi
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
cmovnle eax, ebx
and cl, al
or si, 0b1000000000000000 # instrumentation
bsr si, si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 25
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
cmovnp rdi, rax
xor cx, 83
bt rax, 83
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 64
or rax, rdi
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and al, dil
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
bts ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
