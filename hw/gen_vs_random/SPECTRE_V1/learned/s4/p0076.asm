.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and cl, -57
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub bl, dl
lea si, qword ptr [rdx + rax + 37]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
lea edi, qword ptr [rdx + rdx + 58]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test cl, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
