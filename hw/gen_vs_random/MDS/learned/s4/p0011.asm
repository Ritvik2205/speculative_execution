.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
xor rdx, -59
and dil, dl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and ax, 339
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 91
and rax, -2058103810
or al, 24
and cl, al
test edi, -1252846009
test cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
