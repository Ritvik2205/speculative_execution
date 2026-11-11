.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
sub bl, -96
sub bl, -96
test al, -56
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
inc ebx
jmp .bb_0.2
.bb_0.2:
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xchg rdx, rcx
sub al, dl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
