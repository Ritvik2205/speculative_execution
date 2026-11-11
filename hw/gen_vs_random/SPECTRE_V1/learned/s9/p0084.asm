.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
xor al, 54
and bl, -65
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
movzx bx, sil
lea rcx, qword ptr [rsi + rcx + 64]
xchg esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
