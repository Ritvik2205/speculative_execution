.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
setbe dil
cmovl eax, ecx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
cmovns dx, si
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
test bl, 12
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 11
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
lea ebx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
