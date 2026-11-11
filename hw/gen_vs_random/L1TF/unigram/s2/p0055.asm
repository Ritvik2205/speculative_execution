.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
imul edx, esi
sub di, 90
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
xchg rsi, rdx
cmovnle edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
seto dl
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
bt eax, ecx
cmovle rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
