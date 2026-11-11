.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
add cl, bl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 58
test sil, 47
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -105
sbb al, dl
bts edi, 65
lea rdi, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
