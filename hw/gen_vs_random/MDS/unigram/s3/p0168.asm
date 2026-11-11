.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
or dl, 85
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and dl, 8 # instrumentation
cmovle dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 58
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 24
test eax, -571234566
cmovnp rdi, rbx
and cl, 118 # instrumentation
cmovp ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
btr eax, 51
btc cx, 115
and dl, cl
and cl, 114 # instrumentation
cmovz si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
