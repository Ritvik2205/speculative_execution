.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
sbb dl, cl
bt eax, edx
and bl, 87
test rax, 1469613902
dec dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
btr ax, cx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 52
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 45
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
