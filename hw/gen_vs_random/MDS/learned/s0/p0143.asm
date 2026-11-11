.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
xor cl, al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or al, -75
not al
and al, -54
test dil, 46
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or rax, -1561934807
test bl, sil
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or rsi, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
