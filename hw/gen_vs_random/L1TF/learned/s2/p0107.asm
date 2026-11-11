.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
sets dl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
sub bl, 15
sub cl, 86
xor cl, 89
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
bts ax, 201
lea rbx, qword ptr [rax + rsi]
bt cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
