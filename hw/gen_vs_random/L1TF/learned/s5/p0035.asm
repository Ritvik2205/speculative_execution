.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
lea rdx, qword ptr [rcx + rax + 10]
and al, -68
not bl
xor dl, al
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
