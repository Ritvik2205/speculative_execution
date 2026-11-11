.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovnl dx, bx
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
not bx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
and cl, 86
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
inc eax
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
lea rcx, qword ptr [rdi]
adc bl, al
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
