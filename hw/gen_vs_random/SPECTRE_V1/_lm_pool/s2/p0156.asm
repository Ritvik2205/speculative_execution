.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 49
lea ax, qword ptr [rax]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea cx, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
lea rbx, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
cmp dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
