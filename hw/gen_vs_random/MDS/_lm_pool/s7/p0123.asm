.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
test bl, -114
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
or rax, -689609688
or rcx, 54
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
xor dl, -19
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test rbx, 31
bt ax, si
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
