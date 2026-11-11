.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
bswap rdx
bt eax, edi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
neg rsi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
xor cl, 114
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -97
sbb ecx, -1
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
add dl, 63 # instrumentation
cmovl dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
