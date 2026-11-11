.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
bswap rax
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
or sil, -5
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
cmovp edi, ebx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
