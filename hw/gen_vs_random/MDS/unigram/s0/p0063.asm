.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edi, 230
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
bt ecx, edx
and dl, 97 # instrumentation
cmovnp dx, ax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and cl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and bl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and bl, -62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and al, 16 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
cmovnz rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rdi, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
