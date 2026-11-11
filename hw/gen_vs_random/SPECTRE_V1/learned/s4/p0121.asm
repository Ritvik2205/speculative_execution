.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
add rdi, 38
xor al, 54
and dil, -93
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test sil, 13
add al, 10
cmp al, dl
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
