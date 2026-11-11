.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
sub ax, -27107
add al, 80 # instrumentation
sbb al, al
cmovl si, ax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 32
add al, 66 # instrumentation
cmovnp edi, ecx
lea rdi, qword ptr [rdi + rsi]
xchg edi, ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
adc rdx, 84
and si, si
cmp ebx, edi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], edi
cmovnp edx, eax
add dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
