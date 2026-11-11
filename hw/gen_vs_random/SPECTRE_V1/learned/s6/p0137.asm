.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
sbb sil, dl
xor dil, dil
adc eax, 56
lea cx, qword ptr [rdi + rcx + 14]
lea ax, qword ptr [rdx + rbx + 37]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
lea eax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
