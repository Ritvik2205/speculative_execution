.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rax, -1701787862
xor dil, bl
xor dil, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, 16
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
bt dx, bx
and dl, -73
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
test rsi, 66
and dx, 3
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
