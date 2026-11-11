.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
lea ecx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
xchg edx, edi
sub edx, -63
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
add dl, 20 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
lea rsi, qword ptr [rdi + rsi + 44]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
cmp cl, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
