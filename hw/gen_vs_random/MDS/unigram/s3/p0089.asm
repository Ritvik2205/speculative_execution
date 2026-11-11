.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
or bx, 95
xor al, dl
cmovnle dx, ax
cmovno rsi, rdi
btc si, di
bt ax, dx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
cmovns dx, si
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
btr esi, edi
or al, -17
and cl, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
bts si, ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
