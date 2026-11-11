.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmovz rsi, rdx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
mul al
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
test rax, 1469613902
and sil, sil
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
bts di, 144
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and edx, edx
add sil, 126 # instrumentation
cmovnl dx, si
add sil, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
