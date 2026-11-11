.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
add cl, 72 # instrumentation
cmovnl dx, bx
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
not bx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx], -4
adc bl, al
lea rcx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
inc eax
and cl, 86
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
