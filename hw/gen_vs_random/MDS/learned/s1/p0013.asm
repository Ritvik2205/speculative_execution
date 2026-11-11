.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test al, -7
or rax, -1561934807
and ax, -16061
xor dl, 8
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or cl, sil
xor al, dl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor al, sil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
test ax, -31596
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
