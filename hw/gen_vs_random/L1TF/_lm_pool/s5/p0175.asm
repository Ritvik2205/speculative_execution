.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
or dil, -113
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
bt edx, edi
and rdi, 59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
jmp .bb_0.2
.bb_0.2:
test al, -82
test al, bl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
sub dl, -49
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
