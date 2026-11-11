.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
test dl, dil
jmp .bb_0.1
.bb_0.1:
or bl, dl
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
cmovnp dx, di
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
xor al, 89
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
