.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -6
cmp rbx, -91
add al, dl
xor al, 30
test dl, -102
sbb cl, -69
sub dil, sil
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 12
or al, 1
sub al, dl
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and bl, -30
and bl, al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
xor ax, 20236
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
