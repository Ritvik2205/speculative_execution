.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
btc di, di
cmp si, 21
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
add bl, cl
lea si, qword ptr [rdi + rsi + 17]
cmovz rcx, rbx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 76
sub dl, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
cmp dx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
