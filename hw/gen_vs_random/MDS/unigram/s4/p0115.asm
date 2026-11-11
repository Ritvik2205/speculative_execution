.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 14
or bl, -125
and bl, -123 # instrumentation
cmovnp cx, si
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and al, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
btc ax, 76
and sil, sil
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
test eax, -675944960
cmovz edi, edx
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and cl, -58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
test eax, 1287331633
test al, 127
cmovnl ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
