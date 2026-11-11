.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 70
sub al, -82
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
add al, 18
add bl, cl
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
setno dil
mov dl, al
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
