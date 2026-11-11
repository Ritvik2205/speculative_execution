.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe bl
mov al, sil
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 8
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 20
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 67
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
add dl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, sil
setns dl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
mov al, -28
add bl, -76 # instrumentation
cmovnle bx, si
bt ebx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
