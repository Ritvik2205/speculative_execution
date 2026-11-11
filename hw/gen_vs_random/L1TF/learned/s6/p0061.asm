.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 13
add sil, -61
sub dl, cl
sub al, -75
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
cmp rsi, 71
add esi, -17
and dil, sil
and cl, 28
sub rcx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
