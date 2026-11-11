.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, dx
or bl, cl
or al, 16
test dil, -51
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or rbx, -72
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
