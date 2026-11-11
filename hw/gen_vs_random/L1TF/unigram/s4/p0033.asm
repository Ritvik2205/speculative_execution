.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 39 # instrumentation
cmovnb si, di
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
mov rdx, 78
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
mul al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
add al, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
btr dx, bx
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 47
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 77
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
