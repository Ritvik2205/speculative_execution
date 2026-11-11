.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 81
and di, 56
cmp si, 62
sub al, 9
test sil, 29
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
test al, -56
jmp .bb_0.2
.bb_0.2:
cmovnp rbx, rcx
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
