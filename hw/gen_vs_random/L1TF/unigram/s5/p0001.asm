.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 76
adc dil, 120
cmovnp ecx, ebx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 92
cmovb ebx, eax
cmovnl rbx, rsi
imul rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
sbb cl, -11
and bl, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
cmovp dx, si
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
