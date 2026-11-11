.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
mul rcx
sub dil, -32
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
add dl, 47
xchg rax, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
sub dil, dl
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 20
btc dx, bx
sub ax, -17837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
