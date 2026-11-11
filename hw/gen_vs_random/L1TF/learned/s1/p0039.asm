.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
lea eax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 10
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rbx, rsi
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
