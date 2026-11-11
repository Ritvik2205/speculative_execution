.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 39 # instrumentation
cmovo eax, edx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 90
and dl, dil
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
cmovo rdi, rsi
add bl, -95
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
xchg al, dl
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
bt edx, eax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
