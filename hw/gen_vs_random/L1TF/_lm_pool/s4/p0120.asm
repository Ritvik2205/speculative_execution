.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and rax, rsi
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test cl, 7
jmp .bb_0.3
.bb_0.3:
lea rsi, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
