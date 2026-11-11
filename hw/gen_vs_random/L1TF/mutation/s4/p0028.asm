.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
imul al
lea cx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -27
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, dl
sub al, dl
sub dl, -78
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
