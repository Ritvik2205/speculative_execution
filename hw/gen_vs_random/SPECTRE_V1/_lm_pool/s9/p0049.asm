.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
cmp eax, 100
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add sil, -68
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
