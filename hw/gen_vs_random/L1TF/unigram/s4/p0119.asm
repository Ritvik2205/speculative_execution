.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdi + rsi + 19]
sbb bl, bl
sub sil, 45
xor dl, sil
add cl, 59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
xchg rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
bts rbx, 48
cmp eax, edi
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
sub edx, 25
sub sil, 45
cmovnbe edx, eax
sbb bl, cl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
