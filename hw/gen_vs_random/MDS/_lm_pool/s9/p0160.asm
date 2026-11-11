.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
xor rax, 459999114
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test sil, cl
and ax, 31082
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
or al, bl
xor cl, 24
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 42
or al, -58
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
