.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ecx
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
cmovl rax, rdi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 79
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor al, 16
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
inc dl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
test bx, bx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
setl dil
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
test di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
