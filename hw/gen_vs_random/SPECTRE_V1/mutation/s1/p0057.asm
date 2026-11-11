.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, edi
neg rsi
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
bswap rdx
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -103
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add dl, 63 # instrumentation
cmovl dx, di
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
sbb ecx, -1
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
