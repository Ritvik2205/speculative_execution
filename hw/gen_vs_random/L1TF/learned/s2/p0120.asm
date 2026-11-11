.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
sub dl, cl
add al, -46
jmp .bb_0.2
.bb_0.2:
bt rbx, 97
xor rdi, -80
jmp .bb_0.3
.bb_0.3:
add al, 117
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
