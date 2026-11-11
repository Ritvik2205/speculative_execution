.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
sub rcx, -121
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
