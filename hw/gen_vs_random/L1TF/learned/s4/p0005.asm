.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 31
xor al, 16
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
test bl, bl
sbb sil, -79
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
not di
cmp cl, 57
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
