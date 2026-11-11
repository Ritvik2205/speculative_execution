.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test sil, cl
test dil, sil
and cl, dl
bts ecx, 3
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
or ebx, -104
and al, -55
bts rbx, rax
test edi, -1252846009
test dl, bl
btr cx, di
and rsi, 57
and dl, -73
xor dil, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
