.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 83
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], esi
cmovnbe si, bx
and ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
bswap ecx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
setle bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
mov al, dil
inc cl
imul rbx, rbx, -39
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
