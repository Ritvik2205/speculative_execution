.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
test al, -32
sub al, -97
xor dil, sil
xor rdx, 122
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
sbb cl, dl
xor al, dl
jmp .bb_0.1
.bb_0.1:
add cl, 104 # instrumentation
sbb rcx, 24
movzx eax, bx
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
