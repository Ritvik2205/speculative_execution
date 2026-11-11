.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
or al, -5
test al, -104
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
lea rdx, qword ptr [rbx + rax + 64]
xor cl, 89
mov al, cl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 63
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
