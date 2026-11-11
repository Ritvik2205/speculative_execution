.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 12
sbb cl, al
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and dl, dl
test cl, 32
jmp .bb_0.3
.bb_0.3:
lea ax, qword ptr [rbx + rdx + 40]
jmp .bb_0.4
.bb_0.4:
jp .bb_0.5
jmp .bb_0.6
.bb_0.5:
sub dl, 41
jmp .bb_0.6
.bb_0.6:
or al, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb cl, -11
xor al, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
