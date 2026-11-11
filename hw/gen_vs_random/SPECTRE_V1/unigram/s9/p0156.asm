.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 10
or bl, dil
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 66
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
sub al, cl
add dl, 47
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
imul edx
not rcx
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
