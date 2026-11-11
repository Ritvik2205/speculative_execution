.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
mov al, bl
sub cl, -49
bswap rcx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
test ax, 22956
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 23
test dil, sil
test rax, -1576813424
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
