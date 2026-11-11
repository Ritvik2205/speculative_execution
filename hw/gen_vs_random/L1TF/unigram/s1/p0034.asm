.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
sbb dl, -26
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
setnb cl
cdq
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
cmovp ax, bx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
or dx, dx
cmp ax, -6940
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
