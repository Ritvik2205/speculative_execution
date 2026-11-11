.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and bl, 87
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
