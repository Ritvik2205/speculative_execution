.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor rax, 20
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
lea rsi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
lea rbx, qword ptr [rcx + rsi]
sbb cl, dl
and al, -68
adc al, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
