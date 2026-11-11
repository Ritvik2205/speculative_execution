.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
test bl, 45
xor dl, dil
and dil, dl
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and sil, -90
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
