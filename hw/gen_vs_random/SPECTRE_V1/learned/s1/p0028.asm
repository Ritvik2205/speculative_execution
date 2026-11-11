.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, cl
test bl, -8
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
sub ax, -17837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
