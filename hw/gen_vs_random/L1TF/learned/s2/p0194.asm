.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 82
and dx, 7
or rdi, 53
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test bl, -92
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
