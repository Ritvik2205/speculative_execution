.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and bl, 89
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and cl, dl
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and al, -68
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 62
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and bx, 99
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
