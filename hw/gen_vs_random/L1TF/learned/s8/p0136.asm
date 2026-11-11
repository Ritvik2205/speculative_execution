.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 72
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and dl, 10
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 23
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
add bl, 89 # instrumentation
sbb sil, bl
bt ecx, eax
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
