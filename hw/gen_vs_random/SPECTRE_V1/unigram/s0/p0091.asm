.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 93
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
xchg bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdx
sbb dil, dl
cmovl ebx, eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 80
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
lea rax, qword ptr [rsi + rdi]
add dil, al
add rax, 977059290
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
cmovnbe rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
