.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz dx, ax
not rcx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
sub rsi, 67
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
cmovnle edx, esi
add bl, 93 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 55
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], edx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 12
add cl, -20
xchg rax, rax
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 16
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
