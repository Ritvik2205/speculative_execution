.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 93
not bl
xor eax, -885407671
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
adc al, 80
and dl, dl
adc bl, cl
and rsi, 67
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
