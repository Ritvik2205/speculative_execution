.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
cmovnp ecx, esi
cmovnp ax, si
or dil, sil
neg cl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rbx
cmovz esi, edi
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
imul rcx, rcx, 43
mov al, -101
cmovbe rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
lea edx, qword ptr [rbx + rbx + 24069]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
