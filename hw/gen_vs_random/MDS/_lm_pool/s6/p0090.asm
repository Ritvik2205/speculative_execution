.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
btr edx, esi
xor al, dil
or rdx, -48
jmp .bb_0.1
.bb_0.1:
xor dil, -5
or ebx, -104
and al, cl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and al, -103
or dil, sil
and cl, cl
or cl, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
