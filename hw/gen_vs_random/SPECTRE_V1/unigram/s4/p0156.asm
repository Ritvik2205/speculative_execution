.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
add sil, 107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
add al, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
imul edi, edi, 77
seto dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 47
xchg eax, ecx
test sil, 13
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rbx, rdx
inc ax
xchg rbx, rdi
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rdi
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
