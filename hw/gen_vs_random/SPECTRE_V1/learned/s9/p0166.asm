.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
mov sil, 54
add dl, 47
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
add dil, 72
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sub rax, -1628299544
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and bl, 87
adc dl, al
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
