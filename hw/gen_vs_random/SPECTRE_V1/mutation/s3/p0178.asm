.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
neg rsi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
bswap rdx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
bt eax, edi
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
sbb rax, 1380680934
bt si, bx
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
