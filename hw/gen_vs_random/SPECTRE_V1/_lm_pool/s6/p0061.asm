.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
adc sil, -77
add dl, dil
and dil, 98
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
adc ax, -27488
movsx si, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
sub cx, 11
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
