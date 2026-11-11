.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
test al, -70
add al, 93
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or bl, al
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor ax, 32760
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
