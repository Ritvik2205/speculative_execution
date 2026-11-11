.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rsi]
sub ax, 124
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
add sil, -68
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
or si, 0b1000000000000000 # instrumentation
bsf cx, si
dec ax
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, 7046
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xchg dx, ax
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
