.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
test di, 18
cmovnz dx, bx
btr edi, 221
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 5
cmovnz esi, ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and ax, 339
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 89
or cl, al
and di, 99
and bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
or rbx, -77
and rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
