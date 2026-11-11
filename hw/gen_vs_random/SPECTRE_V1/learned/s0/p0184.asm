.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
or ax, 18658
cmp rax, 900122030
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rax, -1628299544
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
