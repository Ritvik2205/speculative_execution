.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea edi, qword ptr [rdx + rax]
xor dl, 71
and rax, -1128038253
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
cmp al, sil
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
