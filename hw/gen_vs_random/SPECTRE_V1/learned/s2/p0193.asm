.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 5
add al, 18
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
xor al, cl
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and al, -23
mov al, dl
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
