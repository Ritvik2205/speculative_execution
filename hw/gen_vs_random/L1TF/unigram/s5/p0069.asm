.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 28 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
cmp ax, -4865
adc cl, -34
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
btc di, dx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
sbb dil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
lea rdi, qword ptr [rsi]
or dil, -113
sub eax, edi
and rax, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rax]
btr ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
or bl, -5
bswap eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
