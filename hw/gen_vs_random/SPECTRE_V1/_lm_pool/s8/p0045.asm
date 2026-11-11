.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
bt esi, 75
not ecx
add al, 10
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp edi, 36
sub al, dl
lea rdx, qword ptr [rax]
cmp cx, 88
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and al, dl
lea ebx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
