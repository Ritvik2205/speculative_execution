.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
sbb dl, bl
cmovnb ecx, edx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
neg dl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
adc al, dil
add eax, 1518653812
test al, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
