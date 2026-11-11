.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
or al, -48
sub al, -75
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 52
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 14
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
