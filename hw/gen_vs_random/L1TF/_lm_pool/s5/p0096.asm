.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
sub cl, 86
sub dl, -49
lea di, qword ptr [rsi + rdi + 75]
or sil, -44
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
cmp al, dl
jmp .bb_0.1
.bb_0.1:
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
