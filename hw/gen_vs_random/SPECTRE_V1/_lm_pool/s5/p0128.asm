.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and cl, 86
test al, dil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
adc cl, -81
lea rdx, qword ptr [rcx + rdi + 3]
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rbx]
adc dl, 107
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
