.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
cmp bl, dil
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
test bl, -92
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 29
jmp .bb_0.1
.bb_0.1:
or sil, cl
jmp .bb_0.2
.bb_0.2:
add al, 104 # instrumentation
sbb rax, 1890168613
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
