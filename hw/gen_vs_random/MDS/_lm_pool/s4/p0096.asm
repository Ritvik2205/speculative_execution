.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -18
test cl, dl
or rax, 302048971
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
xor al, 115
test al, sil
xor dl, -19
and cl, cl
bt cx, ax
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
xor ax, -16696
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
xor al, 99
or al, -61
btr si, ax
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
