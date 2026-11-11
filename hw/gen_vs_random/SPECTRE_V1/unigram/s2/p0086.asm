.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
cbw
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
add dl, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
test rdi, 1238697264
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and dil, bl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
test bl, 91
adc dil, cl
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
sbb dl, -23
bt esi, 99
and al, bl
bt edx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
