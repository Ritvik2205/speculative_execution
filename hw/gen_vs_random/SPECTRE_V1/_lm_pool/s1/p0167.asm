.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
add rsi, -60
lea rcx, qword ptr [rdx + rdi + 27]
sbb al, 118
or al, dl
test dil, -116
sbb al, bl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor rdi, rbx
sbb bl, al
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
