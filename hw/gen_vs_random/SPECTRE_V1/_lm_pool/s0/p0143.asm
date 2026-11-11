.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, cl
sbb sil, bl
mov dl, bl
test al, -99
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
lea cx, qword ptr [rax]
lea dx, qword ptr [rbx + rax]
sub cl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 66
add cl, bl
sub al, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
