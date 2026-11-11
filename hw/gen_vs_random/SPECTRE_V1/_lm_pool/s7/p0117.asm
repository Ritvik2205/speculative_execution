.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
test dl, -105
sub dil, -32
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
sub bl, dl
add dl, bl
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
sub al, bl
lea cx, qword ptr [rdx + rbx]
cmovle rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
