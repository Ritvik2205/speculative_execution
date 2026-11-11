.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 42
sbb al, dl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and si, 66
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -109
and bl, 87
lea rax, qword ptr [rsi + rbx + 97]
lea rcx, qword ptr [rdi + rcx]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
