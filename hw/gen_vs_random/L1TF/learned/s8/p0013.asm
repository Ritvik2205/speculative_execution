.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setz cl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
lea rdx, qword ptr [rbx + rsi]
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
or bl, dil
test dil, -126
lea ecx, qword ptr [rbx + rcx + 42]
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
