.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, edi
xor dl, dl
and dil, -82
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
