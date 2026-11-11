.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -16061
test rcx, -613256812
and bl, al
or al, -17
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dl, dl
and rax, 498847670
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
or ax, -6817
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
