.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 34
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and al, -54
lea rdx, qword ptr [rax + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
