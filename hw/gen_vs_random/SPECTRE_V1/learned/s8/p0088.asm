.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
xor al, -119
test bl, -8
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
or ecx, 97
and dil, cl
xor bl, -38
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb ax, dx
and cl, al
and al, -23
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
