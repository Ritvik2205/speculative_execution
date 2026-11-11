.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or cl, 39
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or dil, -78
xor al, 99
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and ax, 19224
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
