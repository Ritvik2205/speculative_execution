.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and cx, 29
setz bl
sub cl, al
cmp rax, 900122030
lea rdx, qword ptr [rdi + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
mov dl, 57
cmp rax, 900122030
bt dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
