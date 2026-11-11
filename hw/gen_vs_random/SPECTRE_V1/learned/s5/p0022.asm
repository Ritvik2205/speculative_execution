.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
add dl, 47
sub al, sil
inc dil
btr rax, rsi
adc al, -82
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea cx, qword ptr [rsi + rdi]
movsx si, bl
jmp .bb_0.2
.bb_0.2:
sbb sil, bl
add dl, 47
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
