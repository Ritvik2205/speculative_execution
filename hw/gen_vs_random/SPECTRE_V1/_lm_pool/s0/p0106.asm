.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
sub dil, cl
sub dil, -111
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 84
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
btr rcx, rdx
adc al, -82
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
lea ax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
