.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rbx, 65
or dl, 51
xor dil, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
jmp .bb_0.1
.bb_0.1:
and sil, al
test dil, -51
test al, 22
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and edx, -44
and di, 91
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor rdi, -9
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
