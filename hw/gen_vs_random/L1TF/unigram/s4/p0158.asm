.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 14
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 17
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
cmovns eax, eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
sbb sil, cl
btc rcx, 81
movzx bx, cl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
lea ax, qword ptr [rdi]
xchg bl, dil
sub si, 67
add dl, 43 # instrumentation
adc al, al
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
cmovp ebx, edi
lea ecx, qword ptr [rdi + rbx + 75]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
