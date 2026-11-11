.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dil
xchg al, bl
and cl, 86
mov cl, dl
sbb dl, 127
inc dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
add dil, dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
cmp cl, dil
xchg dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
